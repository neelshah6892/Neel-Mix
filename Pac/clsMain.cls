VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Option Explicit

'Main protocol builder interface
Private ProtocolBuilder As clsProtocolInterface

'The Drivers which plug into the protocol interface in order to capture packets
Private WithEvents UDPDriver As clsUDPProtocol
Attribute UDPDriver.VB_VarHelpID = -1
'Private UDPDriver     As clsUDPProtocol

'The complete number of bytes sent including those that make up the headers
Private BytesRecievedPackets As Long

'The number of bytes of data sent (i.e. exlcuding the packet headers)
Private BytesRecieved As Long

'The number of packets recieved for each protocol
Private UDPPackets As Long

'The file numbers of the log files for each protocol
Private UDPLog As Integer

Private lngFilterTrCode As Long
Private lngFilterTrCodeNew As Long
Private lngFilterToken As Long
Private intSaveFlag As Integer
Private lngLTP As Long
Private lngToken As Long

Private lngUDPPacketsCountInFile As Long
Private strFilePath As String

Private blnFileIsOpen As Boolean
Dim intCount As Integer

'Since token no is made of upto 5 digits, Arrays are of 99999.
Private ArrLtp(99999) As Long
Private ArrLtpOI(99999) As Long
Private ArrLtpEQ(99999) As Long
Private ArrLtpCur(99999) As Long

'Module Level Declaration
Private strDestinationPortFAndO As String
Private strDestinationPortEQ As String
Private strDestinationPortCD As String
Private strDestinationIP As String

Public Function DllMain(hInst As Long, fdwReason As Long, lpvReserved As Long) As Boolean
   'Default Procedure
   Select Case fdwReason
      Case DLL_PROCESS_DETACH
         ' No per-process cleanup needed
      Case DLL_PROCESS_ATTACH
         DllMain = True
      Case DLL_THREAD_ATTACH
         ' No per-thread initialization needed
      Case DLL_THREAD_DETACH
         ' No per-thread cleanup needed
   End Select
End Function

Public Function Increment(Var As Integer) As Integer
'Not Used
   If Not IsNumeric(Var) Then Err.Raise 5
   
   Increment = Var + 1
End Function

Public Function PassArray(ArrVar() As Integer, ByVal ArrSize As Integer, ByRef AVal() As Integer) As Integer
'Not Used
Dim lngFileNum As Long
Dim intCount2 As Integer
lngFileNum = FreeFile

Open App.Path & "\passarray.txt" For Append As #lngFileNum
Print #lngFileNum, "Pass Array" & Now

For intCount2 = 0 To ArrSize
    Print #lngFileNum, "" & intCount2 & ":" & ArrVar(intCount2)
Next
Close #lngFileNum

AVal = ArrVar
End Function

Public Function GetLtpArray(ByRef ALtp() As Long)
'Used while Exe fetches decoded TOKEN=LTP structure
ALtp = ArrLtp
GetLtpArray = True
End Function

'    Public Function Get1(Optional a As Long)
'    'Used while Exe fetches decoded TOKEN=LTP structure
'    ALtp = ArrLtp
'    GetLtpArray = True
'    End Function


Public Function GetLtpArrayEQ(ByRef ALtp() As Long) As Boolean
'Used while Exe fetches decoded TOKEN=LTP structure
ALtp = ArrLtpEQ
GetLtpArrayEQ = True
End Function

' Added By NYN On 03/08/2014
' Function to write array of Open Interest
Public Sub GetOpenInterest(ByRef AOIInfo() As Long)
AOIInfo = ArrLtpOI
End Sub
Public Function GetLtpArrayCur(ByRef ALtp() As Long) As Boolean
'Used while Exe fetches decoded TOKEN=LTP structure
ALtp = ArrLtpCur
GetLtpArrayCur = True
End Function

Public Function StartCapture(handle As Long, strIP As String, strFileName As String, strPWD As String, strDestIP As String, strDestPort As String, strDestPortEQ As String, strDestPortCD As String) As Boolean
'Desc: 1] Creates a Raw Socket Connections to start fetching incoming network traffic
'2] Starts subclassing to process incoming packets

'Arguments:
'1] Handle - App's Handle
'2] strIP - IP address of the Machine where the Exe is installed
'3] strFileName - Reseved Parameter
'4] strPwd - Password Required to Initialize a DLL
'5] strDestIP - Destination IP Address of the NSE's Router usually "233.1.2.5"
'6] strDestPort - Destination Port of F&O
'7] strDestPortEQ - Destination Port of EQ
'8] strDestPortCD - Destination Port of CD

'Setting Default Values
lngFilterTrCode = 7208
 lngFilterTrCodeNew = 7202
lngFilterToken = 0
intSaveFlag = 0
lngLTP = 0
lngToken = 0

'Check for Password if wrong then exit capturing
If strPWD <> "talk_middleware_solutions_talk_delta_paccapdll_22_06_2010" Then
    Exit Function
End If

'Set Module Level Variables
strDestinationIP = strDestIP
strDestinationPortFAndO = strDestPort
strDestinationPortEQ = strDestPortEQ
strDestinationPortCD = strDestPortCD

'Create and Set Protocol Interface Object
Set ProtocolBuilder = New clsProtocolInterface
'Since we required only UDP Packets, create object of UDPProtocol
Set UDPDriver = New clsUDPProtocol
'Add UDPProtocol to ProtocolBuilder class for further filtering and processing
ProtocolBuilder.AddinProtocol UDPDriver, "UDP", IPPROTO_UDP
'Create Raw Socket Connection
If ProtocolBuilder.CreateRawSocket(strIP, 7000, handle) <> 0 Then
    StartCapture = True
Else
    StartCapture = False
End If

End Function

Public Function StopCapture() As Boolean
'Desc: Stops Packet Capture by closing raw socket connection
ProtocolBuilder.CloseRawSocket
StopCapture = True
End Function


Private Sub Class_Initialize()
Debug.Print "Class_Initialize"
End Sub

Private Sub UDPDriver_RecievedPacket(IPHeader As clsIPHeader, UDPProtocol As clsUDPProtocol, Data As String)
On Error GoTo EH
'Desc: This event occurs whenever a new UDP Packet is arrived

Dim strHeader As String
Dim strData   As String

Dim bytUncompBuffer() As Byte
Dim Buffer() As Byte 'To store data into Byte format
Dim strDummyData As String
Dim lngResult As Long
Dim intRec As Integer

Dim p_typTickData As St_Ticker_Data_Only 'NYN for Open Interest 25/08/2014
'Converts incoming data to byte array
Buffer = StrConv(Data, vbFromUnicode)

'Creates Dummy Data to store into bytUncompBuffer
strDummyData = String$(3072, vbNullChar)
bytUncompBuffer = StrConv(strDummyData, vbFromUnicode)

lngFilterTrCode = 7208 'Default Value

'Changed By: Sachin 21/12/2010
'If-Else-If loop for decoding of Data for 3 Market Condition 1]F&O  2]EQ   3]CD

If IPHeader.DestIP = strDestinationIP And UDPProtocol.DestPort = strDestinationPortFAndO Then
    'For F&O
    'Send for decoding
    lngResult = GetLtp(Buffer(0), bytUncompBuffer(0), lngFilterTrCode, _
    lngFilterToken, intSaveFlag, futtr)
    'Store result in ArrLtp
    For intRec = 1 To lngResult
        ArrLtp(futtr.Token(intRec)) = futtr.LTP(intRec)
    Next

        ' Added By : NYN
        ' Date     : 25/08/2014
        ' Desc.    : To get array of structure 7202
        ' *********************************
        
        'Converts incoming data to byte array
            Buffer = StrConv(Data, vbFromUnicode)

        'Creates Dummy Data to store into bytUncompBuffer
            strDummyData = String$(3072, vbNullChar)
            bytUncompBuffer = StrConv(strDummyData, vbFromUnicode)

'            Buffer() = Data
'        ReDim bytUncompBuffer(3072) As Byte
        lngResult = GetTickerData(Buffer(0), bytUncompBuffer(0), lngFilterTrCodeNew, lngFilterToken, intSaveFlag, p_typTickData)
        For intCount = 0 To lngResult - 1 'Added By SSP 10/07/2012
           ArrLtpOI(p_typTickData.Token(intCount)) = p_typTickData.OpenInterest(intCount)
        Next
        
ElseIf IPHeader.DestIP = strDestinationIP And UDPProtocol.DestPort = strDestinationPortEQ Then
    'For EQ
    'Send for decodings
    lngResult = GetLtpEQ(Buffer(0), bytUncompBuffer(0), lngFilterTrCode, _
    lngFilterToken, intSaveFlag, eqrt)
    'Store result in ArrLtpEQ
    For intRec = 1 To lngResult
        ArrLtpEQ(eqrt.Token(intRec)) = eqrt.LTP(intRec)
    Next
    
ElseIf IPHeader.DestIP = strDestinationIP And UDPProtocol.DestPort = strDestinationPortCD Then
    'For CD
    'Send for decoding
    lngResult = GetLtpCurrency(Buffer(0), bytUncompBuffer(0), lngFilterTrCode, _
    lngFilterToken, intSaveFlag, futtr)
    'Store result in ArrLtpCur
    For intRec = 1 To lngResult
        ArrLtpCur(futtr.Token(intRec)) = futtr.LTP(intRec)
    Next
End If

ComeHere:

Exit Sub
EH:
    If Err.number <> 70 Then
        MsgBox Err.number & ":" & Err.Description, vbCritical, "Error-PacCapDll"
    End If
End Sub





