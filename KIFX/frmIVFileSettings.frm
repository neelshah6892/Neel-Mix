VERSION 5.00
Begin VB.Form frmIVFileSettings 
   Caption         =   "FOLDER SETTINGS"
   ClientHeight    =   4905
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5580
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4905
   ScaleWidth      =   5580
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdSave 
      Caption         =   "&SAVE"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   900
      TabIndex        =   4
      Top             =   4095
      Width           =   1455
   End
   Begin VB.CommandButton cmdclear 
      Cancel          =   -1  'True
      Caption         =   "&CANCEL"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   3285
      TabIndex        =   5
      Top             =   4095
      Width           =   1455
   End
   Begin VB.TextBox txtUserName 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1635
      TabIndex        =   0
      Top             =   465
      Width           =   2925
   End
   Begin VB.Frame Frame1 
      Height          =   2730
      Left            =   15
      TabIndex        =   6
      Top             =   1200
      Width           =   5535
      Begin VB.CommandButton Command1 
         Caption         =   "&Browse"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   4005
         TabIndex        =   2
         Top             =   240
         Width           =   1320
      End
      Begin VB.TextBox txtInterval 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1875
         TabIndex        =   3
         Text            =   "2"
         Top             =   2145
         Width           =   1830
      End
      Begin VB.TextBox txtFolderSettings 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1200
         Left            =   150
         MultiLine       =   -1  'True
         TabIndex        =   7
         Top             =   780
         Width           =   5190
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "secs."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3795
         TabIndex        =   10
         Top             =   2235
         Width           =   570
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Time Interval :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   165
         TabIndex        =   9
         Top             =   2205
         Width           =   1590
      End
      Begin VB.Label lblivfilesetting 
         AutoSize        =   -1  'True
         Caption         =   "SELECT FOLDER  (To Store files) :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   8
         Top             =   315
         Width           =   3570
      End
   End
   Begin VB.CommandButton cmdClearUserName 
      Caption         =   "&NEW"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   4620
      TabIndex        =   1
      Top             =   480
      Width           =   735
   End
   Begin VB.Label lbluname 
      AutoSize        =   -1  'True
      Caption         =   "User Name :"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   180
      TabIndex        =   12
      Top             =   555
      Width           =   1320
   End
   Begin VB.Label lblerr 
      AutoSize        =   -1  'True
      Caption         =   "Set New UserName  Eg : John Smith"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   1650
      TabIndex        =   11
      Top             =   960
      Visible         =   0   'False
      Width           =   2610
   End
End
Attribute VB_Name = "frmIVFileSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Public con As ADODB.Connection


' Desktop—virtual folder
Const CSIDL_DESKTOP = &H0
'
' User's program groups
Const CSIDL_PROGRAMS = &H2
'
' Control Panel.
Const CSIDL_CONTROLS = &H3
'
' Folder containing installed printers.
Const CSIDL_PRINTERS = &H4
'
' Folder that serves as a common repository for documents.
Const CSIDL_PERSONAL = &H5
'
' Folder that serves as a common repository for the user's favorite items.
Const CSIDL_FAVORITES = &H6
'
' Folder that corresponds to the user's Startup program group.
Const CSIDL_STARTUP = &H7
'
' User's most recently used documents.
Const CSIDL_RECENT = &H8
'
' Folder that contains Send To menu items.
Const CSIDL_SENDTO = &H9
'
' Recycle Bin.
Const CSIDL_BITBUCKET = &HA
'
' Start menu items.
Const CSIDL_STARTMENU = &HB
'
' Folder used to physically store file objects on the desktop.
Const CSIDL_DESKTOPDIRECTORY = &H10
'
' My Computer—virtual folder
Const CSIDL_DRIVES = &H11
'
' Network Neighborhood
Const CSIDL_NETWORK = &H12
'
' Network neighborhood.
Const CSIDL_NETHOOD = &H13
'
' Virtual folder containing fonts.
Const CSIDL_FONTS = &H14
'
' Document templates.
Const CSIDL_TEMPLATES = &H15
'
' Folder that contains the programs and folders that
' appear on the Start menu for all users.
Const CSIDL_COMMON_STARTMENU = &H16
'
' Folder  that contains the directories for the common
' program groups that appear on the Start menu for all users.
Const CSIDL_COMMON_PROGRAMS = &H17
'
' Folder that contains the programs that appear in the
' Startup folder for all users.
Const CSIDL_COMMON_STARTUP = &H18
'
' Folder that contains files and folders that
' appear on the desktop for all users.
Const CSIDL_COMMON_DESKTOPDIRECTORY = &H19
'
' Folder serving as a common repository for
' application-specificdata.
Const CSIDL_APPDATA = &H1A
'
' Folder that serves as a common repository for printer links.
Const CSIDL_PRINTHOOD = &H1B

Private Sub cmdClear_Click()
   ' txtFolderSettings.Text = ""
   ' txtInterval.Text = ""
   Unload Me
End Sub

Private Sub cmdFileSelect_Click()
    'open folder
    cdSelectFile.ShowOpen

End Sub

Private Sub cmdClearUserName_Click()
txtUserName.Text = ""
txtUserName.BackColor = &H80000005
txtUserName.Enabled = True
txtUserName.SetFocus
lblerr.Visible = False
End Sub

'Private Sub cmdClearUserName_Click()
'txtUserName.Text = ""
'txtUserName.SetFocus
'End Sub

Private Sub cmdSave_Click()
    Dim iniFilePath As String
    Dim lpSectionName As String
    Dim lpKeyName As String
    Dim lpValue As String
    Dim lpFileName As String
    Dim lpReturnedString As String
    Dim nsize As Long
    Dim strUserName As String

On Error GoTo ErrHandler


If (Val(txtInterval.Text) = 0) Then
    txtInterval.Text = ""
Else

    If (Trim(txtUserName.Text) = "") Then
        lblerr.Visible = True
        txtUserName.BackColor = vbRed
    Else
        Dim strDboPath As String
        Dim fso As New FileSystemObject
        Dim strStrikeIvFilePath As String
        Dim strPortfolioFilePath As String

        strStrikeIvFilePath = Trim(txtFolderSettings.Text) & "\" & Trim(txtUserName.Text) & "_IVStrikeWise_" & Format(Now(), "dd-mm-yyyy") & ".txt"
        strPortfolioFilePath = Trim(txtFolderSettings.Text) & "\" & Trim(txtUserName.Text) & "_IVPortfolioWise_" & Format(Now(), "dd-mm-yyyy") & ".txt"

        'Code to move old files with same username to old folder at same location
        If ((fso.FileExists(strStrikeIvFilePath) = True) Or (fso.FileExists(strPortfolioFilePath) = True)) Then
            If (txtUserName.Enabled = True) Then
                Dim intOk As Integer
                intOk = MsgBox("Files for " & txtUserName.Text & " already exist" & vbNewLine & "Do you want to overwrite it ? ", vbYesNo, "FileCreation")


                If (intOk = 7) Then
                'Not to overwrite files
                '----------------------------

                     txtUserName.Text = ""
                     lblerr.Visible = True
                     txtUserName.Enabled = True
                     txtUserName.SetFocus
                     Exit Sub
                Else
                'Overwrite files
                '----------------------------

                    If (Not (fso.FolderExists(txtFolderSettings.Text & "\old"))) Then fso.CreateFolder (txtFolderSettings.Text & "\old")
                    If (fso.FileExists(strStrikeIvFilePath) = True) Then
                        fso.CopyFile strStrikeIvFilePath, CStr(txtFolderSettings.Text & "\old" & "\" & Trim(txtUserName.Text) & "_IVStrikeWise_" & Format(Now(), "dd-mm-yyyy") & ".txt"), True

                    End If
                    If (fso.FileExists(strPortfolioFilePath) = True) Then
                        fso.CopyFile strPortfolioFilePath, CStr(txtFolderSettings.Text & "\old" & "\" & Trim(txtUserName.Text) & "_IVPortfolioWise_" & Format(Now(), "dd-mm-yyyy") & ".txt"), True
                    End If
                End If
            End If
        End If

                'Code to save username in setting.inf file
                '--------------------------------------------------
                strUserName = Trim(txtUserName.Text)
                lpFileName = App.path & "\FileSettings.ini"
                lpSectionName = "UserDetails"
                lpKeyName = "UserName"
                lpValue = Trim(txtUserName.Text)
                Call ProfileSaveItem(lpSectionName, lpKeyName, lpValue, lpFileName)

                '--------------------------------------------------


                'Code to save folder path in setting.inf file
                '--------------------------------------------------
                lpFileName = App.path & "\FileSettings.ini"
                lpSectionName = "Filepathsetting"
                lpKeyName = "Path"
                lpValue = Trim(txtFolderSettings.Text)
                Call ProfileSaveItem(lpSectionName, lpKeyName, lpValue, lpFileName)

                '--------------------------------------------------



                txtFolderSettings.ForeColor = vbBlack
                If (fso.FolderExists(lpValue) = False) Then
                    MsgBox "Folder does not exist. Please select new one!", vbCritical, "Folder Missing"
                    txtFolderSettings.ForeColor = vbRed
                Else

                    strDboPath = App.path & "\Delta.mdb"

                     If (chkDbCon(strDboPath) = True) Then
                        'Call to update calculated iv
                        'Call readCalculatedIv(lpValue)
                        Call readCalculateIVUsingFSO(lpValue, UCase(strUserName))

                        'Call to update repfullsheetm
                        'Call readRepFullSheetM(lpValue)
                        Call readStrikePortfolioUsingFSO(lpValue, UCase(strUserName))

                        MsgBox "File creation at specified path done successfully" & vbNewLine & "File Settings Modified", vbInformation, "File Setting"
                        Me.Hide
                    Else
                        MsgBox "Database not found!" & vbCrLf & "Settings not possible", vbCritical, "Db Setting"
                    End If
                End If

                'Code to save Time interval in setting.inf file
                '--------------------------------------------------
                    lpSectionName = "TimeSetting"
                    lpKeyName = "Interval"
                    lpValue = Trim(txtInterval.Text)
                    Call ProfileSaveItem(lpSectionName, lpKeyName, lpValue, lpFileName)
                '---------------------------------------------------


    End If
End If

Exit Sub

ErrHandler:
If (Err) Then
    MsgBox "Error : " & Err.Description, vbCritical, "Save File settings"
    Exit Sub
End If
End Sub

Private Sub Command1_Click()
Dim strFolderPath As String
'strFolderPath = BrowseForFolder(0, "Please Browse to path")
'strFolderPath = GetFolderPath(frmFileSettings, , True)
strFolderPath = fBrowseForFolder(hwnd, "Click on an entry to select it.")
txtFolderSettings.Text = strFolderPath
End Sub

Private Sub drFolderSelect_Change()
txtFolderSettings.Text = drFolderSelect.path
End Sub

Private Sub driveSelect_Change()
On Error GoTo ErrHandler
    drFolderSelect.path = driveSelect.Drive

Exit Sub

ErrHandler:
If (Err) Then
    MsgBox "Error : " & Err.Description, vbCritical, "Select drive"
    Exit Sub
End If
End Sub

Private Sub Form_Activate()
On Error GoTo ErrHandler

    txtFolderSettings.Text = ""
    txtUserName.Enabled = False
    'select folderpath from setting.inf file
    Call ReadSettinginfFile

Exit Sub

ErrHandler:
If (Err) Then
    MsgBox "Error : " & Err.Description, vbCritical, "Activate Form"
    Exit Sub
End If
End Sub

'Read folder path from FileSettings.ini file
'---------------------------------------------------
Public Sub ReadSettinginfFile()
    Dim iniFilePath As String
    Dim lpSectionName As String
    Dim lpKeyName As String
    Dim lpValue As String
    Dim lpFileName As String
    Dim lpReturnedString As String
    Dim nsize As Long

Dim strTime As String
Dim strUName As String
Dim strFolderPath As String
Dim strFilePathINI As String

On Error GoTo ErrHandler
strFilePathINI = App.path & "\" & "FileSettings.ini"

lpFileName = strFilePathINI

lpReturnedString = Space$(255)
nsize = Len(lpReturnedString)
nsize = GetPrivateProfileString("Filepathsetting", "Path", _
       " ", lpReturnedString, 250, lpFileName)
lpReturnedString = Mid(lpReturnedString, 1, nsize)
strFolderPath = lpReturnedString


lpReturnedString = Space$(255)
nsize = Len(lpReturnedString)
nsize = GetPrivateProfileString("TimeSetting", "Interval", _
       " ", lpReturnedString, 250, lpFileName)
lpReturnedString = Mid(lpReturnedString, 1, nsize)
strTime = lpReturnedString

lpReturnedString = Space$(255)
nsize = Len(lpReturnedString)
nsize = GetPrivateProfileString("UserDetails", "UserName", _
       " ", lpReturnedString, 250, lpFileName)
lpReturnedString = Mid(lpReturnedString, 1, nsize)
strUName = lpReturnedString

'set time interval
txtInterval.Text = Trim(strTime)
'set folder path in textbox
txtFolderSettings.Text = Trim(strFolderPath)
'set username
txtUserName.Text = Trim(strUName)

Exit Sub

ErrHandler:
If (Err) Then
    MsgBox "Error : " & Err.Description, vbCritical, "ReadSettinginiFile"
    Exit Sub
End If
End Sub
'---------------------------------------------------
Public Sub readCalculatedIv(ByVal strFolderPath As String)
'Code to generate file datewise for iv calculation
'----------------------------------------------------

'Declaring variables for column representation
Dim intCalcIvId As Integer
Dim strScriptname As String
Dim strExpiryDate As String
Dim strPortfolioName As String
Dim strStrike As String
Dim strCP As String
Dim strNewIV As String
Dim strPreviousIV As String
Dim strModifiedDate As String
Dim strUserCD As String
Dim strField1 As String
Dim strField2 As String
Dim strField3 As String
Dim strField4 As String
Dim strField5 As String

'Declaring variables
Dim strSelectQuery As String
Dim strCalcFileName As String
Dim rsCalculatedIv As ADODB.Recordset
Dim intEmpFileNbr As Integer


On Error GoTo ErrHandler
'Initialise variables
'Set con = New ADODB.Connection
Set rsCalculatedIv = New ADODB.Recordset

strSelectQuery = "SELECT * FROM CalculatedIV  where CDate(ExpiryDate)>=CDate('" & Format(CDate(Date), "DD/MM/YYYY") & "') ORDER BY PortfolioName"

'conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source= " & App.Path & "\Delta.mdb;" & _
            "Jet OLEDB:Database Password=talk53055682delta01;"
'conString = "DSN=IVData;UID=Admin;PWD=talk53055682delta01;"
'con.Open conString
Set rsCalculatedIv = con.Execute(strSelectQuery, , adCmdText) 'Select all column data values from calculatediv

strCalcFileName = strFolderPath & "\IVStrikeWise" & Format(Now(), "dd-mm-yyyy") & ".txt"

    'Delete file if already exist
    If (Dir(strCalcFileName) <> "") Then
        Kill strCalcFileName
    End If

Dim strFileLine As String

strFileLine = ""

While Not rsCalculatedIv.EOF
    If (IsNull(rsCalculatedIv.Fields("CalculatedIVID").Value) = False) Then intCalcIvId = Val(rsCalculatedIv.Fields("CalculatedIVID").Value)
    If (IsNull(rsCalculatedIv.Fields("ScriptName").Value) = False) Then strScriptname = Trim$(rsCalculatedIv.Fields("ScriptName").Value)
    If (IsNull(rsCalculatedIv.Fields("ExpiryDate").Value) = False) Then strExpiryDate = Trim$(rsCalculatedIv.Fields("ExpiryDate").Value)
    If (IsNull(rsCalculatedIv.Fields("PortfolioName").Value) = False) Then strPortfolioName = Trim$(rsCalculatedIv.Fields("PortfolioName").Value)
    If (IsNull(rsCalculatedIv.Fields("Strike").Value) = False) Then strStrike = Trim$(rsCalculatedIv.Fields("Strike").Value)
    If (IsNull(rsCalculatedIv.Fields("CP").Value) = False) Then strCP = Trim$(rsCalculatedIv.Fields("CP").Value)
    If (IsNull(rsCalculatedIv.Fields("NewIV").Value) = False) Then strNewIV = Trim$(rsCalculatedIv.Fields("NewIV").Value)
    If (IsNull(rsCalculatedIv.Fields("PreviousIV").Value) = False) Then strPreviousIV = Trim$(rsCalculatedIv.Fields("PreviousIV").Value)
    If (IsNull(rsCalculatedIv.Fields("ModifiedDate").Value) = False) Then strModifiedDate = Trim$(rsCalculatedIv.Fields("ModifiedDate").Value)
    If (IsNull(rsCalculatedIv.Fields("UserCD").Value) = False) Then strUserCD = Trim$(rsCalculatedIv.Fields("UserCD ").Value)
    If (IsNull(rsCalculatedIv.Fields("Field1").Value) = False) Then strField1 = Trim$(rsCalculatedIv.Fields("Field1").Value)
    If (IsNull(rsCalculatedIv.Fields("Field2").Value) = False) Then strField2 = Trim$(rsCalculatedIv.Fields("Field2").Value)
    If (IsNull(rsCalculatedIv.Fields("Field3").Value) = False) Then strField3 = Trim$(rsCalculatedIv.Fields("Field3").Value)
    If (IsNull(rsCalculatedIv.Fields("Field4").Value) = False) Then strField4 = Trim$(rsCalculatedIv.Fields("Field4").Value)
    If (IsNull(rsCalculatedIv.Fields("Field5").Value) = False) Then strField5 = Trim$(rsCalculatedIv.Fields("Field5").Value)

    'Create line of column values for writing to file
    strFileLine = strFileLine & strPortfolioName & "," & strStrike & "," & strCP & "," & strNewIV & "," & strExpiryDate & vbCrLf

    rsCalculatedIv.MoveNext
Wend

'Code to write above generated line of string to file
    If (Dir(strCalcFileName) <> "") Then
      'If File exist append it
      intEmpFileNbr = FreeFile
      Open strCalcFileName For Append As #intEmpFileNbr
      Print #intEmpFileNbr, strFileLine
      Close #intEmpFileNbr
    Else
      'If File does not exist create and write in it
      intEmpFileNbr = FreeFile
      Open strCalcFileName For Output As #intEmpFileNbr
      Print #intEmpFileNbr, strFileLine
      Close #intEmpFileNbr
    End If


rsCalculatedIv.Close
'If (con.State = adStateOpen) Then con.Close
'----------------------------------------------------


'Write #intEmpFileNbr, intCalcIvId, strScriptName, strExpiryDate, strPortfolioName, strStrike, strCP, strNewIV, strPreviousIV, strModifiedDate, strUserCD, strField1, strField2, strField3, strField4, strField5
'Write #intEmpFileNbr, strPortfolioName, strStrike, strCP, strNewIV, strExpiryDate

Exit Sub

ErrHandler:
If (Err) Then
    MsgBox "Error : " & Err.Description, vbCritical, "Read Calculated IV"
    Exit Sub
End If
End Sub
Public Sub readRepFullSheetM(ByVal strFolderPath As String)
'Code to generate file datewise for iv calculation
'----------------------------------------------------

'Declaring variables for column representation
Dim strIndex As String
Dim strSymbolName As String
Dim strMy_strDesc As String
Dim strUserCD As String
Dim strDays As String
Dim strExpDt As String
Dim strDT As String
Dim strIntRate As String
Dim strMidStrike As String
Dim strStAbovetxt As String
Dim strStBelowtxt As String
Dim strCall As String
Dim strPut As String
Dim strMkPrice As String
Dim strmUp1MktPrice As String
Dim strmUp2MktPrice As String
Dim strmDn1MktPrice As String
Dim strmDn2MktPrice As String
Dim strmUp1Bal As String
Dim strmUp2Bal As String
Dim strmDn1Bal As String
Dim strmDn2Bal As String
Dim strPremium As String
Dim strOptionU As String
Dim strOptionR As String
Dim strFutureU As String
Dim strFutureR As String
Dim strBalance  As String
Dim strF_FutStk As String
Dim strF_Equity As String
Dim strF_DeltaNeutral As String
Dim strF_FutTraded As String
Dim strF_EqTraded As String
Dim strF_TodaysExp As String
Dim strF_Expenses As String
Dim strF_NetBal As String
Dim strRateDiff As String
Dim strRemark As String
Dim strOTP As String
Dim strOTQ As String
Dim strField1 As String
Dim strField2 As String
Dim strField3 As String
Dim strField4 As String
Dim strField5 As String

'Declaring variables
Dim strSelectQuery As String
Dim strCalcFileName As String
Dim rsCalculatedIv As ADODB.Recordset
Dim intEmpFileNbr As Integer

On Error GoTo ErrHandler
'Initialise variables
'Set con = New ADODB.Connection
Set rsCalculatedIv = New ADODB.Recordset

strSelectQuery = "SELECT * FROM RepFullSheetM where CDate(ExpDt)>=CDate('" & Format(CDate(Date), "DD/MM/YYYY") & "') order by My_strDesc"

'conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source= " & App.Path & "\Delta.mdb;" & _
            "Jet OLEDB:Database Password=talk53055682delta01;"
'conString = "DSN=IVData;UID=Admin;PWD=talk53055682delta01;"
'con.Open conString
Set rsCalculatedIv = con.Execute(strSelectQuery, , adCmdText) 'Select all column data values from calculatediv

strCalcFileName = strFolderPath & "\IVPortfolioWise" & Format(Now(), "dd-mm-yyyy") & ".txt"

     'Delete file if already exist
    If (Dir(strCalcFileName) <> "") Then
        Kill strCalcFileName
    End If

Dim strFileLine As String

While Not rsCalculatedIv.EOF
    If (IsNull(rsCalculatedIv.Fields("Index").Value) = False) Then strIndex = CStr(rsCalculatedIv.Fields("Index").Value)
    If (IsNull(rsCalculatedIv.Fields("SymbolName").Value) = False) Then strSymbolName = CStr(rsCalculatedIv.Fields("SymbolName").Value)
    If (IsNull(rsCalculatedIv.Fields("My_strDesc").Value) = False) Then strMy_strDesc = CStr(rsCalculatedIv.Fields("My_strDesc").Value)
    If (IsNull(rsCalculatedIv.Fields("Days").Value) = False) Then strDays = CStr(rsCalculatedIv.Fields("Days").Value)
    If (IsNull(rsCalculatedIv.Fields("ExpDt").Value) = False) Then strExpDt = CStr(rsCalculatedIv.Fields("ExpDt").Value)
    If (IsNull(rsCalculatedIv.Fields("dt").Value) = False) Then strDT = CStr(rsCalculatedIv.Fields("dt").Value)
    If (IsNull(rsCalculatedIv.Fields("IntRate").Value) = False) Then strIntRate = CStr(rsCalculatedIv.Fields("IntRate").Value)
    If (IsNull(rsCalculatedIv.Fields("MidStrike").Value) = False) Then strMidStrike = CStr(rsCalculatedIv.Fields("MidStrike").Value)
    If (IsNull(rsCalculatedIv.Fields("StAbovetxt").Value) = False) Then strStAbovetxt = CStr(rsCalculatedIv.Fields("StAbovetxt").Value)
    If (IsNull(rsCalculatedIv.Fields("StBelowtxt").Value) = False) Then strStBelowtxt = CStr(rsCalculatedIv.Fields("StBelowtxt").Value)
    If (IsNull(rsCalculatedIv.Fields("Call").Value) = False) Then strCall = CStr(rsCalculatedIv.Fields("Call").Value)
    If (IsNull(rsCalculatedIv.Fields("Put").Value) = False) Then strPut = CStr(rsCalculatedIv.Fields("Put").Value)
    If (IsNull(rsCalculatedIv.Fields("MkPrice").Value) = False) Then strMkPrice = CStr(rsCalculatedIv.Fields("MkPrice").Value)
    If (IsNull(rsCalculatedIv.Fields("mUp1MktPrice").Value) = False) Then strmUp1MktPrice = CStr(rsCalculatedIv.Fields("mUp1MktPrice").Value)
    If (IsNull(rsCalculatedIv.Fields("mUp2MktPrice").Value) = False) Then strmUp2MktPrice = CStr(rsCalculatedIv.Fields("mUp2MktPrice").Value)
    If (IsNull(rsCalculatedIv.Fields("mDn1MktPrice").Value) = False) Then strmDn1MktPrice = CStr(rsCalculatedIv.Fields("mDn1MktPrice").Value)
    If (IsNull(rsCalculatedIv.Fields("mDn2MktPrice").Value) = False) Then strmDn2MktPrice = CStr(rsCalculatedIv.Fields("mDn2MktPrice").Value)
    If (IsNull(rsCalculatedIv.Fields("mUp1Bal").Value) = False) Then strmUp1Bal = CStr(rsCalculatedIv.Fields("mUp1Bal").Value)
    If (IsNull(rsCalculatedIv.Fields("mUp2Bal").Value) = False) Then strmUp2Bal = CStr(rsCalculatedIv.Fields("mUp2Bal").Value)
    If (IsNull(rsCalculatedIv.Fields("mDn1Bal").Value) = False) Then strmDn1Bal = CStr(rsCalculatedIv.Fields("mDn1Bal").Value)
    If (IsNull(rsCalculatedIv.Fields("mDn2Bal").Value) = False) Then strmDn2Bal = CStr(rsCalculatedIv.Fields("mDn2Bal").Value)
    If (IsNull(rsCalculatedIv.Fields("Premium").Value) = False) Then strPremium = CStr(rsCalculatedIv.Fields("Premium").Value)
    If (IsNull(rsCalculatedIv.Fields("FutureU").Value) = False) Then strFutureU = CStr(rsCalculatedIv.Fields("FutureU").Value)
    If (IsNull(rsCalculatedIv.Fields("OptionU").Value) = False) Then strOptionU = CStr(rsCalculatedIv.Fields("OptionU").Value)
    If (IsNull(rsCalculatedIv.Fields("FutureR").Value) = False) Then strFutureR = CStr(rsCalculatedIv.Fields("FutureR").Value)
    If (IsNull(rsCalculatedIv.Fields("OptionR").Value) = False) Then strOptionR = CStr(rsCalculatedIv.Fields("OptionR").Value)
    If (IsNull(rsCalculatedIv.Fields("Balance").Value) = False) Then strBalance = CStr(rsCalculatedIv.Fields("Balance").Value)
    If (IsNull(rsCalculatedIv.Fields("F_FutStk").Value) = False) Then strF_FutStk = CStr(rsCalculatedIv.Fields("F_FutStk").Value)
    If (IsNull(rsCalculatedIv.Fields("F_Equity").Value) = False) Then strF_Equity = CStr(rsCalculatedIv.Fields("F_Equity").Value)
    If (IsNull(rsCalculatedIv.Fields("F_DeltaNeutral").Value) = False) Then strF_DeltaNeutral = CStr(rsCalculatedIv.Fields("F_DeltaNeutral").Value)
    If (IsNull(rsCalculatedIv.Fields("F_FutTraded").Value) = False) Then strF_FutTraded = CStr(rsCalculatedIv.Fields("F_FutTraded").Value)
    If (IsNull(rsCalculatedIv.Fields("F_EqTraded").Value) = False) Then strF_EqTraded = CStr(rsCalculatedIv.Fields("F_EqTraded").Value)
    If (IsNull(rsCalculatedIv.Fields("F_TodaysExp").Value) = False) Then strF_TodaysExp = CStr(rsCalculatedIv.Fields("F_TodaysExp").Value)
    If (IsNull(rsCalculatedIv.Fields("F_Expenses").Value) = False) Then strF_Expenses = CStr(rsCalculatedIv.Fields("F_Expenses").Value)
    If (IsNull(rsCalculatedIv.Fields("F_NetBal").Value) = False) Then strF_NetBal = CStr(rsCalculatedIv.Fields("F_NetBal").Value)
    If (IsNull(rsCalculatedIv.Fields("UserCD").Value) = False) Then strField5 = CStr(rsCalculatedIv.Fields("UserCD").Value)
    If (IsNull(rsCalculatedIv.Fields("Field1").Value) = False) Then strField1 = CStr(rsCalculatedIv.Fields("Field1").Value)
    If (IsNull(rsCalculatedIv.Fields("Field2").Value) = False) Then strField2 = CStr(rsCalculatedIv.Fields("Field2").Value)
    If (IsNull(rsCalculatedIv.Fields("Field3").Value) = False) Then strField3 = CStr(rsCalculatedIv.Fields("Field3").Value)
    If (IsNull(rsCalculatedIv.Fields("Field4").Value) = False) Then strField4 = CStr(rsCalculatedIv.Fields("Field4").Value)
    If (IsNull(rsCalculatedIv.Fields("Field5").Value) = False) Then strField5 = CStr(rsCalculatedIv.Fields("Field5").Value)
    If (IsNull(rsCalculatedIv.Fields("RateDiff").Value) = False) Then strRateDiff = CStr(rsCalculatedIv.Fields("RateDiff").Value)
    If (IsNull(rsCalculatedIv.Fields("Remark").Value) = False) Then strRemark = CStr(rsCalculatedIv.Fields("Remark").Value)
    If (IsNull(rsCalculatedIv.Fields("OTP").Value) = False) Then strOTP = CStr(rsCalculatedIv.Fields("OTP").Value)
    If (IsNull(rsCalculatedIv.Fields("OTQ").Value) = False) Then strOTQ = CStr(rsCalculatedIv.Fields("OTQ").Value)

    strFileLine = strFileLine & strMy_strDesc & "," & strCall & "," & strPut & "," & strExpDt & vbCrLf

    rsCalculatedIv.MoveNext
Wend

    If (Dir(strCalcFileName) <> "") Then
      'If File exist append it
      intEmpFileNbr = FreeFile
      Open strCalcFileName For Append As #intEmpFileNbr
      Print #intEmpFileNbr, strFileLine
      Close #intEmpFileNbr
    Else
      'If File does not exist create and write in it
      intEmpFileNbr = FreeFile
      Open strCalcFileName For Output As #intEmpFileNbr
      Print #intEmpFileNbr, strFileLine
      Close #intEmpFileNbr
    End If

rsCalculatedIv.Close
'If (con.State = adStateOpen) Then con.Close
'----------------------------------------------------

    'Write #intEmpFileNbr, strIndex, strSymbolName, strMy_strDesc, strDays, strExpDt, strdt, strIntRate, strMidStrike, strStAbovetxt, strStBelowtxt, strCall, strPut, strMkPrice, strmUp1MktPrice, strmUp2MktPrice, strmDn1MktPrice, strmDn2MktPrice, strmUp1Bal, strmUp2Bal, strmDn1Bal, strmDn2Bal, strPremium, strOptionU, strOptionR, strFutureU, strFutureR, strBalance, strF_FutStk, strF_Equity, strF_DeltaNeutral, strF_FutTraded, strF_EqTraded, strF_TodaysExp, strF_Expenses, strF_NetBal, strRateDiff, strRemark, strOTP, strOTQ
    'Write #intEmpFileNbr, strMy_strDesc, strCall, strPut, strExpDt


Exit Sub

ErrHandler:
If (Err) Then
    MsgBox "Error : " & Err.Description, vbCritical, "Reading Fullsheetm table"
    Exit Sub
End If
End Sub

Public Sub readCalculateIVUsingFSO(ByVal strFolderPath As String, ByVal strUserName As String)
'Declaring variables for column representation
Dim intCalcIvId As Integer
Dim strScriptname As String
Dim strExpiryDate As String
Dim strPortfolioName As String
Dim strStrike As String
Dim strCP As String
Dim strNewIV As String
Dim strPreviousIV As String
Dim strModifiedDate As String
Dim strUserCD As String
Dim strField1 As String
Dim strField2 As String
Dim strField3 As String
Dim strField4 As String
Dim strField5 As String


Dim rsCalculatedIv As ADODB.Recordset
Dim strSelectQuery As String
Dim strCalcFileName As String
Dim lngFile As Long

lngFile = FreeFile
Dim fso As New FileSystemObject
Dim txtobj As TextStream

'Set con = New ADODB.Connection
Set rsCalculatedIv = New ADODB.Recordset

On Error GoTo Error
strSelectQuery = "SELECT * FROM CalculatedIV  where CDate(ExpiryDate)>=CDate('" & Format(CDate(Date), "DD/MM/YYYY") & "') ORDER BY PortfolioName"

'conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source= " & App.Path & "\Delta.mdb;" & _
            "Jet OLEDB:Database Password=talk53055682delta01;"

'conString = "DSN=IVData;UID=Admin;PWD=talk53055682delta01;"
'con.Open conString
Set rsCalculatedIv = con.Execute(strSelectQuery, , adCmdText) 'Select all column data values from calculatediv

strCalcFileName = strFolderPath & "\" & strUserName & "_IVStrikeWise_" & Format(Now(), "dd-mm-yyyy") & ".txt"

'Code to create and fill IV script file
If (fso.FileExists(strCalcFileName) = False) Then
    fso.CreateTextFile (strCalcFileName)
End If


If (fso.FileExists(strCalcFileName) = True) Then
    Set txtobj = fso.OpenTextFile(strCalcFileName, ForWriting)

    Dim strFileLine As String

    strFileLine = ""

    While Not rsCalculatedIv.EOF
        'If (IsNull(rsCalculatedIv.Fields("CalculatedIVID").Value) = False) Then intCalcIvId = Val(rsCalculatedIv.Fields("CalculatedIVID").Value)
        'If (IsNull(rsCalculatedIv.Fields("ScriptName").Value) = False) Then strScriptName = Trim$(rsCalculatedIv.Fields("ScriptName").Value)
        If (IsNull(rsCalculatedIv.Fields("ExpiryDate").Value) = False) Then strExpiryDate = Trim$(rsCalculatedIv.Fields("ExpiryDate").Value)
        If (IsNull(rsCalculatedIv.Fields("PortfolioName").Value) = False) Then strPortfolioName = Trim$(rsCalculatedIv.Fields("PortfolioName").Value)
        If (IsNull(rsCalculatedIv.Fields("Strike").Value) = False) Then strStrike = Trim$(rsCalculatedIv.Fields("Strike").Value)
        If (IsNull(rsCalculatedIv.Fields("CP").Value) = False) Then strCP = Trim$(rsCalculatedIv.Fields("CP").Value)
        If (IsNull(rsCalculatedIv.Fields("NewIV").Value) = False) Then strNewIV = Trim$(rsCalculatedIv.Fields("NewIV").Value)
        'If (IsNull(rsCalculatedIv.Fields("PreviousIV").Value) = False) Then strPreviousIV = Trim$(rsCalculatedIv.Fields("PreviousIV").Value)
        'If (IsNull(rsCalculatedIv.Fields("ModifiedDate").Value) = False) Then strModifiedDate = Trim$(rsCalculatedIv.Fields("ModifiedDate").Value)
        'If (IsNull(rsCalculatedIv.Fields("UserCD").Value) = False) Then strUserCD = Trim$(rsCalculatedIv.Fields("UserCD ").Value)
        'If (IsNull(rsCalculatedIv.Fields("Field1").Value) = False) Then strField1 = Trim$(rsCalculatedIv.Fields("Field1").Value)
        'If (IsNull(rsCalculatedIv.Fields("Field2").Value) = False) Then strField2 = Trim$(rsCalculatedIv.Fields("Field2").Value)
        'If (IsNull(rsCalculatedIv.Fields("Field3").Value) = False) Then strField3 = Trim$(rsCalculatedIv.Fields("Field3").Value)
        'If (IsNull(rsCalculatedIv.Fields("Field4").Value) = False) Then strField4 = Trim$(rsCalculatedIv.Fields("Field4").Value)
        'If (IsNull(rsCalculatedIv.Fields("Field5").Value) = False) Then strField5 = Trim$(rsCalculatedIv.Fields("Field5").Value)

        'Create line of column values for writing to file
        strFileLine = strFileLine & strUserName & "," & strPortfolioName & "," & strStrike & "," & strCP & "," & strNewIV & "," & strExpiryDate & vbCrLf

        rsCalculatedIv.MoveNext
    Wend

    txtobj.WriteLine strFileLine
    txtobj.Close
End If
Set fso = Nothing

Exit Sub
Error:
    If Err.Number = 3356 Then
        MsgBox "Database Already Open!!", vbCritical, "Reading Calculated Iv"
    ElseIf Err.Number = 35764 Then
        Resume Next
    ElseIf Err.Number = 35754 Then
        MsgBox "FTP Server is not Available", vbCritical, "Reading Calculated Iv"
        End
    Else
    MsgBox Err.Description, vbCritical, "Reading Calculated Iv"
   End If
End Sub

Public Sub readStrikePortfolioUsingFSO(ByVal strFolderPath As String, ByVal strUserName As String)

'Declaring variables for column representation
Dim strIndex As String
Dim strSymbolName As String
Dim strMy_strDesc As String
Dim strUserCD As String
Dim strDays As String
Dim strExpDt As String
Dim strDT As String
Dim strIntRate As String
Dim strMidStrike As String
Dim strStAbovetxt As String
Dim strStBelowtxt As String
Dim strCall As String
Dim strPut As String
Dim strMkPrice As String
Dim strmUp1MktPrice As String
Dim strmUp2MktPrice As String
Dim strmDn1MktPrice As String
Dim strmDn2MktPrice As String
Dim strmUp1Bal As String
Dim strmUp2Bal As String
Dim strmDn1Bal As String
Dim strmDn2Bal As String
Dim strPremium As String
Dim strOptionU As String
Dim strOptionR As String
Dim strFutureU As String
Dim strFutureR As String
Dim strBalance  As String
Dim strF_FutStk As String
Dim strF_Equity As String
Dim strF_DeltaNeutral As String
Dim strF_FutTraded As String
Dim strF_EqTraded As String
Dim strF_TodaysExp As String
Dim strF_Expenses As String
Dim strF_NetBal As String
Dim strRateDiff As String
Dim strRemark As String
Dim strOTP As String
Dim strOTQ As String
Dim strField1 As String
Dim strField2 As String
Dim strField3 As String
Dim strField4 As String
Dim strField5 As String

Dim strSelectQuery As String
Dim strCalcFileName As String
Dim rsCalculatedIv As ADODB.Recordset
Dim lngFile As Long

lngFile = FreeFile
Dim fso As New FileSystemObject
Dim txtobj As TextStream

'Set con = New ADODB.Connection
Set rsCalculatedIv = New ADODB.Recordset


On Error GoTo Error
strSelectQuery = "SELECT * FROM RepFullSheetM where CDate(ExpDt)>=CDate('" & Format(CDate(Date), "DD/MM/YYYY") & "') order by My_strDesc"
'con.Close
conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source= " & App.path & "\Delta.mdb;" & _
            "Jet OLEDB:Database Password=talk53055682delta01;"
'conString = "DSN=IVData;UID=Admin;PWD=talk53055682delta01;"

'con.Open conString
Set rsCalculatedIv = con.Execute(strSelectQuery, , adCmdText) 'Select all column data values from calculatediv


strCalcFileName = strFolderPath & "\" & strUserName & "_IVPortfolioWise_" & Format(Now(), "dd-mm-yyyy") & ".txt"
'strCalcFileName = strFolderPath & "\IVPortfolioWise" & Format(Now(), "dd-mm-yyyy") & ".txt"

'Code to create and fill IV script file
If (fso.FileExists(strCalcFileName) = False) Then
    fso.CreateTextFile (strCalcFileName)
End If


If (fso.FileExists(strCalcFileName) = True) Then
    Set txtobj = fso.OpenTextFile(strCalcFileName, ForWriting)

Dim strFileLine As String

strFileLine = ""

While Not rsCalculatedIv.EOF
    'If (IsNull(rsCalculatedIv.Fields("Index").Value) = False) Then strIndex = CStr(rsCalculatedIv.Fields("Index").Value)
    'If (IsNull(rsCalculatedIv.Fields("SymbolName").Value) = False) Then strSymbolName = CStr(rsCalculatedIv.Fields("SymbolName").Value)
    If (IsNull(rsCalculatedIv.Fields("My_strDesc").Value) = False) Then strMy_strDesc = CStr(rsCalculatedIv.Fields("My_strDesc").Value)
    'If (IsNull(rsCalculatedIv.Fields("Days").Value) = False) Then strDays = CStr(rsCalculatedIv.Fields("Days").Value)
    If (IsNull(rsCalculatedIv.Fields("ExpDt").Value) = False) Then strExpDt = CStr(rsCalculatedIv.Fields("ExpDt").Value)
    'If (IsNull(rsCalculatedIv.Fields("dt").Value) = False) Then strdt = CStr(rsCalculatedIv.Fields("dt").Value)
    'If (IsNull(rsCalculatedIv.Fields("IntRate").Value) = False) Then strIntRate = CStr(rsCalculatedIv.Fields("IntRate").Value)
    'If (IsNull(rsCalculatedIv.Fields("MidStrike").Value) = False) Then strMidStrike = CStr(rsCalculatedIv.Fields("MidStrike").Value)
    'If (IsNull(rsCalculatedIv.Fields("StAbovetxt").Value) = False) Then strStAbovetxt = CStr(rsCalculatedIv.Fields("StAbovetxt").Value)
    'If (IsNull(rsCalculatedIv.Fields("StBelowtxt").Value) = False) Then strStBelowtxt = CStr(rsCalculatedIv.Fields("StBelowtxt").Value)
    If (IsNull(rsCalculatedIv.Fields("Call").Value) = False) Then strCall = CStr(rsCalculatedIv.Fields("Call").Value)
    If (IsNull(rsCalculatedIv.Fields("Put").Value) = False) Then strPut = CStr(rsCalculatedIv.Fields("Put").Value)
    'If (IsNull(rsCalculatedIv.Fields("MkPrice").Value) = False) Then strMkPrice = CStr(rsCalculatedIv.Fields("MkPrice").Value)
    'If (IsNull(rsCalculatedIv.Fields("mUp1MktPrice").Value) = False) Then strmUp1MktPrice = CStr(rsCalculatedIv.Fields("mUp1MktPrice").Value)
    'If (IsNull(rsCalculatedIv.Fields("mUp2MktPrice").Value) = False) Then strmUp2MktPrice = CStr(rsCalculatedIv.Fields("mUp2MktPrice").Value)
    'If (IsNull(rsCalculatedIv.Fields("mDn1MktPrice").Value) = False) Then strmDn1MktPrice = CStr(rsCalculatedIv.Fields("mDn1MktPrice").Value)
    'If (IsNull(rsCalculatedIv.Fields("mDn2MktPrice").Value) = False) Then strmDn2MktPrice = CStr(rsCalculatedIv.Fields("mDn2MktPrice").Value)
    'If (IsNull(rsCalculatedIv.Fields("mUp1Bal").Value) = False) Then strmUp1Bal = CStr(rsCalculatedIv.Fields("mUp1Bal").Value)
    'If (IsNull(rsCalculatedIv.Fields("mUp2Bal").Value) = False) Then strmUp2Bal = CStr(rsCalculatedIv.Fields("mUp2Bal").Value)
    'If (IsNull(rsCalculatedIv.Fields("mDn1Bal").Value) = False) Then strmDn1Bal = CStr(rsCalculatedIv.Fields("mDn1Bal").Value)
    'If (IsNull(rsCalculatedIv.Fields("mDn2Bal").Value) = False) Then strmDn2Bal = CStr(rsCalculatedIv.Fields("mDn2Bal").Value)
    'If (IsNull(rsCalculatedIv.Fields("Premium").Value) = False) Then strPremium = CStr(rsCalculatedIv.Fields("Premium").Value)
    'If (IsNull(rsCalculatedIv.Fields("FutureU").Value) = False) Then strFutureU = CStr(rsCalculatedIv.Fields("FutureU").Value)
    'If (IsNull(rsCalculatedIv.Fields("OptionU").Value) = False) Then strOptionU = CStr(rsCalculatedIv.Fields("OptionU").Value)
    'If (IsNull(rsCalculatedIv.Fields("FutureR").Value) = False) Then strFutureR = CStr(rsCalculatedIv.Fields("FutureR").Value)
    'If (IsNull(rsCalculatedIv.Fields("OptionR").Value) = False) Then strOptionR = CStr(rsCalculatedIv.Fields("OptionR").Value)
    'If (IsNull(rsCalculatedIv.Fields("Balance").Value) = False) Then strBalance = CStr(rsCalculatedIv.Fields("Balance").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_FutStk").Value) = False) Then strF_FutStk = CStr(rsCalculatedIv.Fields("F_FutStk").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_Equity").Value) = False) Then strF_Equity = CStr(rsCalculatedIv.Fields("F_Equity").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_DeltaNeutral").Value) = False) Then strF_DeltaNeutral = CStr(rsCalculatedIv.Fields("F_DeltaNeutral").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_FutTraded").Value) = False) Then strF_FutTraded = CStr(rsCalculatedIv.Fields("F_FutTraded").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_EqTraded").Value) = False) Then strF_EqTraded = CStr(rsCalculatedIv.Fields("F_EqTraded").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_TodaysExp").Value) = False) Then strF_TodaysExp = CStr(rsCalculatedIv.Fields("F_TodaysExp").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_Expenses").Value) = False) Then strF_Expenses = CStr(rsCalculatedIv.Fields("F_Expenses").Value)
    'If (IsNull(rsCalculatedIv.Fields("F_NetBal").Value) = False) Then strF_NetBal = CStr(rsCalculatedIv.Fields("F_NetBal").Value)
    'If (IsNull(rsCalculatedIv.Fields("UserCD").Value) = False) Then strField5 = CStr(rsCalculatedIv.Fields("UserCD").Value)
    'If (IsNull(rsCalculatedIv.Fields("Field1").Value) = False) Then strField1 = CStr(rsCalculatedIv.Fields("Field1").Value)
    'If (IsNull(rsCalculatedIv.Fields("Field2").Value) = False) Then strField2 = CStr(rsCalculatedIv.Fields("Field2").Value)
    'If (IsNull(rsCalculatedIv.Fields("Field3").Value) = False) Then strField3 = CStr(rsCalculatedIv.Fields("Field3").Value)
    'If (IsNull(rsCalculatedIv.Fields("Field4").Value) = False) Then strField4 = CStr(rsCalculatedIv.Fields("Field4").Value)
    'If (IsNull(rsCalculatedIv.Fields("Field5").Value) = False) Then strField5 = CStr(rsCalculatedIv.Fields("Field5").Value)
    'If (IsNull(rsCalculatedIv.Fields("RateDiff").Value) = False) Then strRateDiff = CStr(rsCalculatedIv.Fields("RateDiff").Value)
    'If (IsNull(rsCalculatedIv.Fields("Remark").Value) = False) Then strRemark = CStr(rsCalculatedIv.Fields("Remark").Value)
    'If (IsNull(rsCalculatedIv.Fields("OTP").Value) = False) Then strOTP = CStr(rsCalculatedIv.Fields("OTP").Value)
    'If (IsNull(rsCalculatedIv.Fields("OTQ").Value) = False) Then strOTQ = CStr(rsCalculatedIv.Fields("OTQ").Value)

    strFileLine = strFileLine & strUserName & "," & strMy_strDesc & "," & strCall & "," & strPut & "," & strExpDt & vbCrLf

    rsCalculatedIv.MoveNext
Wend

    txtobj.WriteLine strFileLine
    txtobj.Close
End If
Set fso = Nothing

Exit Sub
Error:
    If Err.Number = 3356 Then
        MsgBox "Database Already Open!!", vbCritical, "Reading Iv Portfolio"
    ElseIf Err.Number = 35764 Then
        Resume Next
    ElseIf Err.Number = 35754 Then
        MsgBox "FTP Server is not Available", vbCritical, "Reading Iv Portfolio"
        End
    Else
    MsgBox Err.Description, vbCritical, "Reading Iv Portfolio"
   End If
End Sub

Public Function chkDbCon(ByVal strDbAccessFilePath As String) As Boolean
Dim fsoObject As New FileSystemObject
Dim blnFound As Boolean

blnFound = True
If (fsoObject.FileExists(strDbAccessFilePath) = False) Then blnFound = False

chkDbCon = blnFound
End Function
'-------------------------------------------------------
'Public Function BrowseForFolder(ByVal lngHwnd As Long, ByVal strPrompt As String) As String
'
'    On Error GoTo ehBrowseForFolder 'Trap for errors
'
'    Dim intNull As Integer
'    Dim lngIDList As Long, lngResult As Long
'    Dim strPath As String
'    Dim udtBI As BROWSEINFO
'
'    'Set API properties (housed in a UDT)
'    With udtBI
'        .lngHwnd = lngHwnd
'        .lpszTitle = lstrcat(strPrompt, "")
'        .ulFlags = BIF_RETURNONLYFSDIRS
'    End With
'
'    'Display the browse folder...
'    lngIDList = SHBrowseForFolder(udtBI)
'
'    If lngIDList <> 0 Then
'        'Create string of nulls so it will fill in with the path
'        strPath = String(MAX_PATH, 0)
'
'        'Retrieves the path selected, places in the null
'         'character filled string
'        lngResult = SHGetPathFromIDList(lngIDList, strPath)
'
'        'Frees memory
'        Call CoTaskMemFree(lngIDList)
'
'        'Find the first instance of a null character,
'         'so we can get just the path
'        intNull = InStr(strPath, vbNullChar)
'        'Greater than 0 means the path exists...
'        If intNull > 0 Then
'            'Set the value
'            strPath = Left(strPath, intNull - 1)
'        End If
'    End If
'
'    'Return the path name
'    BrowseForFolder = strPath
'    Exit Function 'Abort
'
'ehBrowseForFolder:
'
'    'Return no value
'    BrowseForFolder = Empty
'
'End Function



Private Sub txtUserName_Change()
lblerr.Visible = False
End Sub

Private Sub txtUserName_GotFocus()
txtUserName.BackColor = &H80000005
'lblerr.Visible = False
End Sub
Private Function fGetSpecialFolder(CSIDL As Long, IDL As ITEMIDLIST) As String
Dim sPath As String
'
' Retrieve info about system folders such as the
' "Recent Documents" folder.  Info is stored in
' the IDL structure.
'
fGetSpecialFolder = ""
If SHGetSpecialFolderLocation(Me.hwnd, CSIDL, IDL) = 0 Then
    '
    ' Get the path from the ID list, and return the folder.
    '
    sPath = Space$(MAX_PATH)
    If SHGetPathFromIDList(ByVal IDL.mkid.cb, ByVal sPath) Then
        fGetSpecialFolder = Left$(sPath, InStr(sPath, vbNullChar) - 1) & "\"
    End If
End If
End Function


Public Function fBrowseForFolder(hwndOwner As Long, sPrompt As String) As String
'
' Opens the system dialog for browsing for a folder.
'
Dim iNull    As Integer
Dim lpIDList As Long
Dim lResult  As Long
Dim sPath    As String
Dim sPath1   As String
Dim udtBI    As BROWSEINFO
Dim IDL      As ITEMIDLIST

'
' Get the ID of the folder to use as the root
' in the directory box. Change the "CSIDL_"
' constant to any of the defined values as
' shown in the declarations section of this form.
'
sPath1 = fGetSpecialFolder(CSIDL_DESKTOP, IDL)

'Initialize Drag & Drop capabilities in the dialog.
Call OleInitialize(ByVal 0&)

With udtBI
'    .pIDLRoot = 0  'Display the entire namespace hierarchy
'                   'starting with the desktop folder.

    .pidlRoot = IDL.mkid.cb 'Use the desired starting folder.

    .hwndOwner = hwndOwner
    .lpszTitle = lstrcat(sPrompt, "")

    .ulFlags = BIF_RETURNONLYFSDIRS Or BIF_USENEWUI

'    If Option1(0).Value Then
'        .ulFlags = BIF_RETURNONLYFSDIRS Or BIF_USENEWUI
'    ElseIf Option1(1).Value Then
'        .ulFlags = BIF_RETURNONLYFSDIRS Or BIF_BROWSEINCLUDEFILES
'    ElseIf Option1(2).Value Then
'        .ulFlags = BIF_BROWSEFORCOMPUTER
'    Else
'        .ulFlags = BIF_BROWSEFORPRINTER
'    End If
End With

lpIDList = SHBrowseForFolder(udtBI)

If lpIDList Then
    sPath = String$(MAX_PATH, 0)
    lResult = SHGetPathFromIDList(lpIDList, sPath)
    Call CoTaskMemFree(lpIDList)

    iNull = InStr(sPath, vbNullChar)
    If iNull Then sPath = Left$(sPath, iNull - 1)
End If

Call OleUninitialize

fBrowseForFolder = sPath
End Function



