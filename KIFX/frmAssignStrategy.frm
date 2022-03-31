VERSION 5.00
Object = "{BEEECC20-4D5F-4F8B-BFDC-5D9B6FBDE09D}#1.0#0"; "vsflex8.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmAssignStrategy 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Assign Strategy"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11355
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmAssignStrategy.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   11355
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDelete 
      BackColor       =   &H00FFFFFF&
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10500
      Picture         =   "frmAssignStrategy.frx":000C
      Style           =   1  'Graphical
      TabIndex        =   3
      TabStop         =   0   'False
      ToolTipText     =   "Close"
      Top             =   45
      Width           =   390
   End
   Begin VB.CommandButton cmdClose 
      BackColor       =   &H00FFFFFF&
      Cancel          =   -1  'True
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   10935
      Picture         =   "frmAssignStrategy.frx":053E
      Style           =   1  'Graphical
      TabIndex        =   2
      TabStop         =   0   'False
      ToolTipText     =   "Close"
      Top             =   60
      Width           =   390
   End
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   10065
      Picture         =   "frmAssignStrategy.frx":0638
      Style           =   1  'Graphical
      TabIndex        =   1
      TabStop         =   0   'False
      ToolTipText     =   "Close"
      Top             =   60
      Width           =   390
   End
   Begin VSFlex8Ctl.VSFlexGrid vsUserDetails 
      Height          =   2535
      Left            =   0
      TabIndex        =   0
      Top             =   480
      Width           =   11355
      _cx             =   20029
      _cy             =   4471
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   0
      ForeColor       =   16777088
      BackColorFixed  =   8421504
      ForeColorFixed  =   0
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   0
      BackColorAlternate=   0
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   1
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   1
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   10
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   1
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   1
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
      DataMember      =   ""
      ComboSearch     =   1
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   8421504
      ForeColorFrozen =   0
      WallPaperAlignment=   9
      AccessibleName  =   ""
      AccessibleDescription=   ""
      AccessibleValue =   ""
      AccessibleRole  =   24
   End
   Begin MSComCtl2.DTPicker dtpTillDate 
      Height          =   345
      Left            =   630
      TabIndex        =   4
      Top             =   60
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   609
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Format          =   59244545
      CurrentDate     =   40207
   End
   Begin VB.Label dtpDate 
      BackColor       =   &H00000000&
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Left            =   90
      TabIndex        =   5
      Top             =   105
      Width           =   705
   End
End
Attribute VB_Name = "frmAssignStrategy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Created by AAP on 26/10/2012
'Assign Strategy userdetailwise
Private Type AssignStrategy
    strUserName    As String
    strUserCode    As String
    strScript      As String
    strCashType    As String
    strStrikeCP    As String
    strTime        As String
    strExpiry      As String
    strUnits       As String
    strTraded      As String
    strSr          As String
    strTradeDate   As String
    strStrategy    As String
    strStrategyID  As String
    strDummyStrategyID  As String
    strTradeID     As String
    strInType      As String
    
    intUserName    As Integer
    intUserCode    As Integer
    intScript      As Integer
    intCashType    As Integer
    intStrikeCP    As Integer
    intTime        As Integer
    intExpiry      As Integer
    intUnits       As Integer
    intTraded      As Integer
    intSr          As Integer
    intTradeDate   As Integer
    intStrategy    As Integer
    intStrategyID  As Integer
    intDummyStrategyID  As Integer
    intTradeID  As Integer
    intInType      As Integer
    
    dblUserName    As Double
    dblUserCode    As Double
    dblScript      As Double
    dblCashType    As Double
    dblStrikeCP    As Double
    dblTime        As Double
    dblExpiry      As Double
    dblUnits       As Double
    dblTraded      As Double
    dblSr          As Double
    dblTradeDate   As Double
    dblStrategy    As Double
    dblStrategyID  As Double
    dblDummyStrategyID  As Double
    dblTradeID     As Double
    dblInType      As Double
    
    intMidRateRow  As Long
    intTotalCol    As Integer
    intTotalRow    As Integer
    intInitialRow  As Integer
End Type
Dim typAssignStrategy As AssignStrategy

Dim Strategy As String
Private Sub dtpTillDate_(ByVal KeyCode As Integer, ByVal Shift As Integer, ByVal CallbackField As String, CallbackDate As Date)

End Sub

Private Sub dtpTillDate_Changed(ByVal KeyCode As Integer, ByVal Shift As Integer, ByVal CallbackField As String, CallbackDate As Date)
FillVsUserDetails
End Sub


Private Sub Command1_Click()

End Sub



Private Sub cmdClose_Click()
Unload Me
End Sub

Private Sub cmdDelete_Click()
'Delete Todays data
strQ = "Delete from DummyTrackerStrategies where Cdate(TradeDt)=Cdate('" & dtpTillDate.Value & "')"
con.Execute strQ
Call FillVsUserDetails
MsgBox "Strategy deleted successfully!!!", vbInformation, "Delete Strategy"
End Sub

Private Sub cmdSave_Click()
Dim Conn1 As ADODB.Connection
Dim Cmd1 As ADODB.Command
Dim Param1 As ADODB.Parameter
Dim rs1 As ADODB.Recordset
Dim intRow As Long
Dim strQ As String
Dim rsQ As ADODB.Recordset

'Validation
For intRow = 1 To vsUserDetails.Rows - 1
    If vsUserDetails.TextMatrix(intRow, typAssignStrategy.intUserName) = "" Then
        MsgBox "User name cannot be left blank!", vbCritical
        Exit Sub
    End If
Next
'Delete Todays data
strQ = "Delete from DummyTrackerStrategies where Cdate(TradeDt)=Cdate('" & dtpTillDate.Value & "')"
con.Execute strQ

For intRow = 1 To vsUserDetails.Rows - 1
    If vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategy) <> "" Then
        ' Create Command Object.
        Set Cmd1 = New ADODB.Command
        Cmd1.ActiveConnection = con
        Cmd1.CommandText = "Insert into DummyTrackerStrategies(StrategyID,CashType,Units,Traded,Strike,TradeDt,CP,Script,expdt,usercd,srNo,Field5,TRADEid,InType) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
        
'         Create Parameter Object.
        Set Param1 = Cmd1.CreateParameter(, adVarChar, adParamInput, 10)
        Param1.Value = Val(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategyID))
        Cmd1.Parameters.Append Param1
        
        Set Param2 = Cmd1.CreateParameter(, adVarChar, adParamInput, 255)
        Param2.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intCashType)
        Cmd1.Parameters.Append Param2
        
        Set Param3 = Cmd1.CreateParameter(, adInteger, adParamInput, 10)
        Param3.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intUnits)
        Cmd1.Parameters.Append Param3
        
        Set Param4 = Cmd1.CreateParameter(, adVarChar, adParamInput, 10)
        Param4.Value = Val(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTraded))
        Cmd1.Parameters.Append Param4
        
        If Val(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP)) = 0 Then
            Set Param5 = Cmd1.CreateParameter(, adInteger, adParamInput, 5)
            Param5.Value = 0
            Cmd1.Parameters.Append Param5
        Else
            Set Param5 = Cmd1.CreateParameter(, adVarChar, adParamInput, 5)
            Param5.Value = Left(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP), InStr(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP), Right(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP), 1)) - 1)
            Cmd1.Parameters.Append Param5
        End If
        
        Set Param6 = Cmd1.CreateParameter(, adDate, adParamInput, 10)
        Param6.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTradeDate)
        Cmd1.Parameters.Append Param6
        
        If Val(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP)) <> 0 Then   'Updated by AAP on 17/11/2012
            If vsUserDetails.TextMatrix(intRow, typAssignStrategy.intCashType) = "FUT" Then
                Set Param7 = Cmd1.CreateParameter(, adVarChar, adParamInput, 5)
                Param7.Value = ""
                Cmd1.Parameters.Append Param7
            Else
                Set Param7 = Cmd1.CreateParameter(, adVarChar, adParamInput, 5)
                Param7.Value = Right(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP), 1)
                Cmd1.Parameters.Append Param7
            End If
        Else
            If vsUserDetails.TextMatrix(intRow, typAssignStrategy.intCashType) = "FUT" Then
                Set Param7 = Cmd1.CreateParameter(, adVarChar, adParamInput, 5)
                Param7.Value = ""
                Cmd1.Parameters.Append Param7
            Else
                Set Param7 = Cmd1.CreateParameter(, adVarChar, adParamInput, 5)
                Param7.Value = ""
                Cmd1.Parameters.Append Param7
            End If
        End If
        Set Param8 = Cmd1.CreateParameter(, adVarChar, adParamInput, 20)
        Param8.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intScript)
        Cmd1.Parameters.Append Param8
        
        Set Param9 = Cmd1.CreateParameter(, adDate, adParamInput, 20)
        Param9.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intExpiry)
        Cmd1.Parameters.Append Param9
        
        Set Param10 = Cmd1.CreateParameter(, adVarChar, adParamInput, 50)
        Param10.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intUserCode)
        Cmd1.Parameters.Append Param10
        
        Set Param11 = Cmd1.CreateParameter(, adInteger, adParamInput, 5)
        Param11.Value = GETCODEWOC("DummyTrackerStrategies", "srNo")
        Cmd1.Parameters.Append Param11
        
        Set Param12 = Cmd1.CreateParameter(, adVarChar, adParamInput, 8)
        Param12.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTime)
        Cmd1.Parameters.Append Param12
        
        Set Param13 = Cmd1.CreateParameter(, adInteger, adParamInput, 50)
        Param13.Value = vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTradeID)
        Cmd1.Parameters.Append Param13
        
        Set Param14 = Cmd1.CreateParameter(, adInteger, adParamInput, 50)
        If vsUserDetails.TextMatrix(intRow, typAssignStrategy.intInType) = "Buy" Then
            Param14.Value = 1
        ElseIf vsUserDetails.TextMatrix(intRow, typAssignStrategy.intInType) = "Sell" Then
            Param14.Value = 2
        End If
        Cmd1.Parameters.Append Param14
        
'        Set Param13 = Nothing
        ' Open Recordset Object.
        Set rs1 = Cmd1.Execute()
    End If
Next
MsgBox "Strategy assigned successfully!!!", vbInformation, "Assign Strategy"
End Sub

Private Sub dtpTillDate_Change()
Call FillVsUserDetails
End Sub


Private Sub Form_Load()
'Setting Forms Position and height
frmAssignStrategy.Height = MDIMain.Height / 2
frmAssignStrategy.Width = MDIMain.Width

'Setting Grtids Position and height
vsUserDetails.Width = frmAssignStrategy.Width - 250
vsUserDetails.Left = 80
vsUserDetails.Height = frmAssignStrategy.Height - 1080

'Setting Grtids Position and height
cmdClose.Left = frmAssignStrategy.Width - 590
cmdDelete.Left = cmdClose.Left - 455
cmdSave.Left = cmdClose.Left - 900

'Set current date
dtpTillDate = Format(Now, "DD/MM/YYYY")

'Sets User Detail grid
Call SetVsUserDetails

'Fills Strategy in combo cell of vsgrid
Strategy = FillComboStrategy
vsUserDetails.ColComboList(11) = Strategy

vsUserDetails.AutoResize = True
'Fill User Details in grid
Call FillVsUserDetails
'Call FillStrategyUserDetailWise
End Sub
Public Sub SetAssignStrategyGrid()
'Initialize Column Settings Variable
typAssignStrategy.intSr = 0
typAssignStrategy.intStrategy = 1 '13
typAssignStrategy.intUserName = 2 '1
typAssignStrategy.intUserCode = 3 '2
typAssignStrategy.intTradeDate = 4 '3
typAssignStrategy.intTime = 5 '4
typAssignStrategy.intScript = 6 '5
typAssignStrategy.intCashType = 7 ' 7
typAssignStrategy.intInType = 8
typAssignStrategy.intStrikeCP = 9 '8
typAssignStrategy.intUnits = 10 '9
typAssignStrategy.intTraded = 11 '10
typAssignStrategy.intTradeID = 12 '11
typAssignStrategy.intStrategyID = 13 ' 13
typAssignStrategy.intExpiry = 14 '6
 
typAssignStrategy.strSr = "Sr."
typAssignStrategy.strUserName = "User Name"
typAssignStrategy.strUserCode = "User Code"
typAssignStrategy.strTradeDate = "Trade Date"
typAssignStrategy.strTime = "Time"
typAssignStrategy.strScript = "Script"
typAssignStrategy.strExpiry = "Expiry"
typAssignStrategy.strCashType = "Type"
typAssignStrategy.strInType = "Buy/Sell"
typAssignStrategy.strStrikeCP = "Strike"
typAssignStrategy.strUnits = "Units"
typAssignStrategy.strTraded = "Traded"
typAssignStrategy.strTradeID = "Trade ID"
typAssignStrategy.strStrategy = "Strategy"
typAssignStrategy.strStrategyID = "Strategy ID"
  
typAssignStrategy.dblSr = 500
typAssignStrategy.dblUserName = 1200
typAssignStrategy.dblUserCode = 1200
typAssignStrategy.dblTradeDate = 0
typAssignStrategy.dblTime = 1200
typAssignStrategy.dblScript = 1400
typAssignStrategy.dblExpiry = 1400
typAssignStrategy.dblCashType = 700
typAssignStrategy.dblInType = 900
typAssignStrategy.dblStrikeCP = 1000
typAssignStrategy.dblUnits = 1200
typAssignStrategy.dblTraded = 1400
typAssignStrategy.dblTradeID = 1000
typAssignStrategy.dblStrategy = 1700
typAssignStrategy.dblStrategyID = 0

typAssignStrategy.intTotalCol = 15
typAssignStrategy.intInitialRow = 0
    
End Sub

Public Sub SetVsUserDetails()
On Error GoTo EH
Call SetAssignStrategyGrid
'Set Grid Settings
vsUserDetails.Rows = 1
vsUserDetails.FixedCols = 1
vsUserDetails.FrozenCols = 1
typAssignStrategy.intTotalRow = mintNoOfIncDecStep * 2 + 2
typAssignStrategy.intMidRateRow = mintNoOfIncDecStep + 1

vsUserDetails.Rows = typAssignStrategy.intTotalRow
vsUserDetails.Cols = typAssignStrategy.intTotalCol
vsUserDetails.FixedCols = 0
'Sr.
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intSr) = typAssignStrategy.strSr
vsUserDetails.ColWidth(typAssignStrategy.intSr) = typAssignStrategy.dblSr

'UserName
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intUserName) = typAssignStrategy.strUserName
vsUserDetails.ColWidth(typAssignStrategy.intUserName) = typAssignStrategy.dblUserName
'User Code
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intUserCode) = typAssignStrategy.strUserCode
vsUserDetails.ColWidth(typAssignStrategy.intUserCode) = typAssignStrategy.dblUserCode
'Trade Date
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intTradeDate) = typAssignStrategy.strTradeDate
vsUserDetails.ColWidth(typAssignStrategy.intTradeDate) = typAssignStrategy.dblTradeDate
'Time
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intTime) = typAssignStrategy.strTime
vsUserDetails.ColWidth(typAssignStrategy.intTime) = typAssignStrategy.dblTime
'Script
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intScript) = typAssignStrategy.strScript
vsUserDetails.ColWidth(typAssignStrategy.intScript) = typAssignStrategy.dblScript

'Expiry
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intExpiry) = typAssignStrategy.strExpiry
vsUserDetails.ColWidth(typAssignStrategy.intExpiry) = typAssignStrategy.dblExpiry
'Cash Type
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intCashType) = typAssignStrategy.strCashType
vsUserDetails.ColWidth(typAssignStrategy.intCashType) = typAssignStrategy.dblCashType

'Buy /Sell
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intInType) = typAssignStrategy.strInType
vsUserDetails.ColWidth(typAssignStrategy.intInType) = typAssignStrategy.dblInType

'StrikeCP
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intStrikeCP) = typAssignStrategy.strStrikeCP
vsUserDetails.ColWidth(typAssignStrategy.intStrikeCP) = typAssignStrategy.dblStrikeCP
'Units
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intUnits) = typAssignStrategy.strUnits
vsUserDetails.ColWidth(typAssignStrategy.intUnits) = typAssignStrategy.dblUnits
'Traded
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intTraded) = typAssignStrategy.strTraded
vsUserDetails.ColWidth(typAssignStrategy.intTraded) = typAssignStrategy.dblTraded

'trade ID
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intTradeID) = typAssignStrategy.strTradeID
vsUserDetails.ColWidth(typAssignStrategy.intTradeID) = typAssignStrategy.dblTradeID

'Strategy
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intStrategy) = typAssignStrategy.strStrategy
vsUserDetails.ColWidth(typAssignStrategy.intStrategy) = typAssignStrategy.dblStrategy

'Strategy ID
vsUserDetails.TextMatrix(typAssignStrategy.intInitialRow, typAssignStrategy.intStrategyID) = typAssignStrategy.strStrategyID
vsUserDetails.ColWidth(typAssignStrategy.intStrategyID) = typAssignStrategy.dblStrategyID
    
vsUserDetails.Editable = flexEDKbdMouse
vsUserDetails.AutoSize 0, vsUserDetails.ColFormat(typAssignStrategy.intTraded)
   
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Public Sub FillVsUserDetails()
On Error GoTo EH
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim intCount As Long
Dim intRow As Long
Dim Strike As String
Dim CP As String
Dim StrikeCP As String
Dim Strategy As String
Dim StrategyID As String
Dim strQ1 As String
Dim rsQ1 As ADODB.Recordset

strQ = " Select d.usercd,U.User_name,InType,TradeDt,TradeiD,Field5,Script,expdt,CashType,Strike,CP ,Units,Traded from DummyTracker as d " & _
       " inner join User_detl as U" & _
       " on d.usercd=U.USERCD" & _
       " where CDATE(TradeDt)=CDATE('" & dtpTillDate.Value & "') and CDATE(expdt)>=CDATE('" & dtpTillDate.Value & "') order by Field5 asc"

Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = True Then
   vsUserDetails.Rows = 1
   Exit Sub
End If
intRow = 0
vsUserDetails.Rows = 1
If intRow <= rsQ.RecordCount - 1 Then
   While Not rsQ.EOF
       vsUserDetails.Rows = vsUserDetails.Rows + 1
       intRow = intRow + 1
       Strike = rsQ!Strike
       CP = rsQ!CP
       StrikeCP = Strike + CP
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intSr) = intRow
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intUserName) = rsQ!User_Name
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intUserCode) = rsQ!USERCD
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTradeDate) = rsQ!TRADEDT
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTime) = rsQ!Field5 ', vbGeneralDate), Len(rsQ!Field5))
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intScript) = rsQ!Script
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intExpiry) = rsQ!ExpDt
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intCashType) = Left(rsQ!Cashtype, 3)
       
       If rsQ!InType = 1 Then
            vsUserDetails.TextMatrix(intRow, typAssignStrategy.intInType) = "Buy"
       Else
            vsUserDetails.TextMatrix(intRow, typAssignStrategy.intInType) = "Sell"
       End If
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrikeCP) = StrikeCP
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intUnits) = rsQ!units
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTraded) = rsQ!TRADED ' FormatNumber(rsQ!TRADED, 2)
       vsUserDetails.TextMatrix(intRow, typAssignStrategy.intTradeID) = rsQ!Tradeid
      
'   ------------------------------------------------------------------------------------------------
'Updated by AAP on 17/11/2012
       
        If vsUserDetails.TextMatrix(intRow, typAssignStrategy.intCashType) = "FUT" Then
            strQ1 = "select StrategyName,D.StrategyID from DummyTrackerStrategies as D inner join MstStrategies as S" & _
           " on s.StrategyID=D.StrategyID where D.usercd='" & rsQ!USERCD & "' and CDATE(tradeDT)=CDATE('" & rsQ!TRADEDT & "') and D.Field5 = '" & rsQ!Field5 & "' and Script='" & rsQ!Script & "' and CDATE(expdt)=CDATE('" & rsQ!ExpDt & "') and CashType='" & Left(rsQ!Cashtype, 3) & "' and Strike=" & rsQ!Strike & " and CP='" & " " & "' and Units=" & rsQ!units & " and Traded=" & rsQ!TRADED & " and TRADEiD='" & rsQ!Tradeid & "'"
            Set rsQ1 = New ADODB.Recordset
            rsQ1.Open strQ1, con, adOpenKeyset, adLockOptimistic
            If rsQ1.EOF = False Then
                vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategy) = rsQ1!StrategyName
                vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategyID) = rsQ1!StrategyID
            End If
            '-------------------------------------------------------------------------------------------------
            rsQ.MoveNext
        Else
            'Fills strategy as per user details from dummy tracker
            strQ1 = "select StrategyName,D.StrategyID from DummyTrackerStrategies as D inner join MstStrategies as S" & _
            " on s.StrategyID=D.StrategyID where D.usercd='" & rsQ!USERCD & "' and CDATE(tradeDT)=CDATE('" & rsQ!TRADEDT & "') and D.Field5 = '" & rsQ!Field5 & "' and Script='" & rsQ!Script & "' and CDATE(expdt)=CDATE('" & rsQ!ExpDt & "') and CashType='" & Left(rsQ!Cashtype, 3) & "' and Strike=" & rsQ!Strike & " and CP='" & rsQ!CP & "' and Units=" & rsQ!units & " and Traded=" & rsQ!TRADED & " and TRADEiD='" & rsQ!Tradeid & "'"
            Set rsQ1 = New ADODB.Recordset
            rsQ1.Open strQ1, con, adOpenKeyset, adLockOptimistic
            If rsQ1.EOF = False Then
                vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategy) = rsQ1!StrategyName
                vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategyID) = rsQ1!StrategyID
            End If
            '-------------------------------------------------------------------------------------------------
            rsQ.MoveNext
        End If
   Wend
End If

'Sets color for strategy column
With vsUserDetails
   Dim intRow1 As Integer
   For intRow1 = 0 To vsUserDetails.Rows - 2
       .Col = typAssignStrategy.intStrategy
       .Row = intRow1 + 1
       .CellBackColor = &H937D83   '&HBF8C9B   '&H2E02AE    '&H1C86FB   ' &H7AB9E7   '&H8D71F0  ' &HC0DBA8
       .CellForeColor = vbBlue '&HC0&       '&HC0DBA8
   Next
End With
 With vsUserDetails
   Dim intRow2 As Integer
   For intRow2 = 0 To vsUserDetails.Rows - 2
       .Col = typAssignStrategy.intSr
       .Row = intRow2 + 1
       .CellForeColor = &H111111
       .ColAlignment(typAssignStrategy.intSr) = flexAlignCenterCenter
   Next
End With
With vsUserDetails
   Dim intCol As Integer
   For intCol = 0 To vsUserDetails.Cols - 1
       .Row = 0
       .Col = intCol
       .CellForeColor = &H111111
   Next
End With
 With vsUserDetails
   Dim intRow3 As Integer
   For intRow3 = 0 To vsUserDetails.Rows - 2
       .Col = typAssignStrategy.intCashType
       .Row = intRow3 + 1
       If vsUserDetails.TextMatrix(intRow3 + 1, typAssignStrategy.intCashType) = "FUT" Then
           .CellForeColor = &H80FF&              '&HC0DBA8
       ElseIf vsUserDetails.TextMatrix(intRow3 + 1, typAssignStrategy.intCashType) = "EQ" Then
           .CellForeColor = vbYellow
       ElseIf vsUserDetails.TextMatrix(intRow3 + 1, typAssignStrategy.intCashType) = "OPT" Then
           .CellForeColor = &H4DCA46          '&HC0DBA8
       End If
    
   Next
End With
With vsUserDetails
   Dim intRow4 As Integer
   For intRow4 = 0 To vsUserDetails.Rows - 2
       .Col = typAssignStrategy.intUnits
       .Row = intRow4 + 1
       .CellForeColor = vbRed '&H111111
'            .CellBackColor = &H4DABB0  ' &H52FAED   ' &H5205A7   ' &HDABE7E
       .FontBold = True
       .ColAlignment(typAssignStrategy.intUnits) = flexAlignRightTop
   Next
End With
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "FillGrid"
End Sub

Private Sub Text1_Change()

End Sub

Private Sub vsUserDetails_AfterEdit(ByVal Row As Long, ByVal Col As Long)

If Col = typAssignStrategy.intStrategy Then
     If vsUserDetails.TextMatrix(Row, typAssignStrategy.intStrategy) <> "" Then
        strStrategyID = FillComboStrategyID(vsUserDetails.TextMatrix(Row, typAssignStrategy.intStrategy))
        vsUserDetails.TextMatrix(Row, typAssignStrategy.intStrategyID) = strStrategyID
    End If
End If
End Sub

Private Sub vsUserDetails_BeforeEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
If Col = typAssignStrategy.intStrategy Then
    vsUserDetails.ColComboList(typAssignStrategy.intStrategy) = Strategy
Else
   'It makes cell non editable
    Cancel = True
    Exit Sub
End If

End Sub

Private Sub vsUserDetails_BeforeSort(ByVal Col As Long, Order As Integer)
' no flags? apply custom sort
    If vsUserDetails.ExplorerBar > &H1000& Then Exit Sub

    '
    ' the 'ignore blanks' flag isn't set, so do it with custom code
    '

    ' save selection
    Dim r&, C&, RS&, cs&
    vsUserDetails.GetSelection r, C, RS, cs
    vsUserDetails.Redraw = flexRDNone

    ' apply sort to non-empty range
    Dim Row%
    For Row = vsUserDetails.Rows - 1 To vsUserDetails.FixedRows Step -1
        If Len(vsUserDetails.TextMatrix(Row, Col)) Then Exit For
    Next
    If Row > vsUserDetails.FixedRows Then
        vsUserDetails.Select vsUserDetails.FixedRows, Col, Row, Col
        vsUserDetails.Sort = Order
    End If

    ' restore selection
    vsUserDetails.Select r, C, RS, cs
    vsUserDetails.Redraw = flexRDDirect

    ' cancel default sort
    Order = 0
End Sub


Public Function FillComboStrategy() As String
Dim rsQ As ADODB.Recordset
Dim strQ As String

strQ = "Select StrategyName from MstStrategies"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic

If rsQ.EOF = False Then
    While Not rsQ.EOF
        FillComboStrategy = FillComboStrategy & rsQ!StrategyName & "|"
        rsQ.MoveNext
    Wend
   FillComboStrategy = Left(FillComboStrategy, Len(FillComboStrategy) - 1)
End If
rsQ.Close
Set rsQ = Nothing
    
End Function
Public Function FillComboStrategyID(strStrategyName As String) As String
Dim rsQ As ADODB.Recordset
Dim strQ As String

strQ = "Select StrategyID from MstStrategies where StrategyName='" & strStrategyName & "'"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic

If rsQ.EOF = False Then
    FillComboStrategyID = rsQ!StrategyID
Else
    FillComboStrategyID = "0"
End If
    
rsQ.Close
Set rsQ = Nothing
    
End Function

Private Sub vsUserDetails_KeyDown(KeyCode As Integer, Shift As Integer)
'Deletes selected strategy on pressing delete key of keyboard
Dim intRow As Integer
'keyCode   46-delete      8-backspace
If KeyCode = 46 Or KeyCode = 8 Then
    If vsUserDetails.Col = typAssignStrategy.intStrategy Then
        intRow = vsUserDetails.RowSel  'selected row
        If Len(vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategy)) > 0 Then
            vsUserDetails.TextMatrix(intRow, typAssignStrategy.intStrategy) = ""
        End If
    End If
End If
End Sub


Private Sub vsUserDetails_KeyPress(KeyAscii As Integer)
'If KeyCode = vbKeyReturn Then
'    Call lvStrategyView_DblClick
'End If
End Sub


