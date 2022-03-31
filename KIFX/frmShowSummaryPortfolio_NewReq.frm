VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmShowSummaryPortfolio_NewReq 
   Caption         =   "Portfolio Summary"
   ClientHeight    =   10110
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11400
   Icon            =   "frmShowSummaryPortfolio_NewReq.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form4"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdExportVolatility 
      Caption         =   "Export Volatility"
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
      Left            =   4680
      TabIndex        =   4
      Top             =   9420
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
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
      Left            =   14340
      Picture         =   "frmShowSummaryPortfolio_NewReq.frx":1F8FA
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Settings"
      Top             =   60
      Width           =   390
   End
   Begin VB.CommandButton Command1 
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
      Left            =   14745
      Picture         =   "frmShowSummaryPortfolio_NewReq.frx":1FD64
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Close"
      Top             =   60
      Width           =   390
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   930
      Top             =   10260
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton cmdReport 
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3660
      Picture         =   "frmShowSummaryPortfolio_NewReq.frx":1FE5E
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "Print Report"
      Top             =   9420
      Width           =   405
   End
   Begin VB.CommandButton cmdCalculator 
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   4125
      Picture         =   "frmShowSummaryPortfolio_NewReq.frx":20214
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Calculator..."
      Top             =   9420
      Width           =   405
   End
   Begin VB.CommandButton cmdExcelList 
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3210
      Picture         =   "frmShowSummaryPortfolio_NewReq.frx":2072C
      Style           =   1  'Graphical
      TabIndex        =   1
      ToolTipText     =   "Export to Excel"
      Top             =   9420
      Width           =   405
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   8565
      Top             =   9435
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ListView lvPortFolio 
      Height          =   8895
      Left            =   90
      TabIndex        =   0
      Top             =   465
      Width           =   15075
      _ExtentX        =   26591
      _ExtentY        =   15690
      View            =   3
      Arrange         =   2
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Portfolio's Summary"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   240
      Left            =   90
      TabIndex        =   7
      Top             =   60
      Width           =   2205
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "* Double Click to View Detail"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   135
      TabIndex        =   6
      Top             =   9435
      Width           =   2970
   End
End
Attribute VB_Name = "frmShowSummaryPortfolio_NewReq"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intBalance As Integer
Dim intMarket As Integer
Dim intDeltaInShares As Integer
Dim intDelta As Integer
Dim intGamma As Integer
Dim intVega As Integer
Dim intTheta As Integer

Dim intExpense As Integer
Dim intNetBalance As Integer
Dim intExposure As Integer

Dim intPremium As Integer
Dim intEquity As Integer
Dim intETraded As Integer
Dim intFuture As Integer
Dim intTraded As Integer
Dim intStock As Integer
Dim intMargin As Integer

Private Sub cmdExportVolatility_Click()
'Added By : Pramisha
'Date : 2/06/2010
'Description : Export Call,Put from Database to Excel File

On Error GoTo EH

Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim strFileName As String
Dim i, K As Integer

i = 0
K = 0

Dim createExcel As New Excel.Application
Dim Wbook As Excel.Workbook
Dim Wsheet As Excel.Worksheet
Set Wbook = createExcel.Workbooks.Add
Set Wsheet = Wbook.Worksheets.Add

 With CommonDialog1
        .CancelError = True
        .Filter = "Excel File Format (*.xls)|*.xls;|"
        .ShowSave
         strFileName = .FileName
 End With


strQ = "Select *,Left(My_Strdesc,Len(My_StrDesc)-7) as Script from RepFullSheetM WHERE cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "')  AND isnull(usercd) Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
'strDetail = "SELECT * FROM RepFullSheetM WHERE cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "')  AND isnull(usercd) Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = False Then
    Wsheet.Cells(1, 1).Value = "Sr"
    Wsheet.Cells(1, 2).Value = "My_strDesc"
    Wsheet.Cells(1, 3).Value = "Script"
    Wsheet.Cells(1, 4).Value = "ExpDt"
    Wsheet.Cells(1, 5).Value = "Call"
    Wsheet.Cells(1, 6).Value = "Put"
    
    While Not rsQ.EOF
        Wsheet.Cells(i + 2, 1).Value = i + 1
        Wsheet.Cells(i + 2, 2).Value = rsQ!My_strDesc
        Wsheet.Cells(i + 2, 3).Value = rsQ!Script
        Wsheet.Cells(i + 2, 4).Value = rsQ!ExpDt
        Wsheet.Cells(i + 2, 5).Value = rsQ!Call
        Wsheet.Cells(i + 2, 6).Value = rsQ!Put
        i = i + 1
    rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing

    Wbook.SaveAs strFileName
    Wbook.Close True
    
    Set createExcel = Nothing
    Set Wbook = Nothing
    Set Wsheet = Nothing
    Set Wbook = createExcel.Workbooks.Open(strFileName)
    createExcel.Visible = True

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Source, vbCritical, "Error"
    Set createExcel = Nothing
    Set Wbook = Nothing
    Set Wsheet = Nothing
    
End Sub

'Created By: Sachin
'Date: 02/06/2009
Private Sub cmdReport_Click()
Call FillData
Call PrintReport
End Sub

Private Sub cmdCalculator_Click()
On Error Resume Next
Shell "calc.exe", vbNormalFocus
End Sub

Public Sub FillData()
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim intRow As Integer
Dim intColumn As Integer
Set rsQ = New ADODB.Recordset
strQ = "Delete From TempTableReport1"
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.State <> 0 Then
    rsQ.Close
End If
strQ = "Select * From TempTableReport1"
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic

For intRow = 1 To lvPortfolio.ListItems.count - 1
    rsQ.AddNew
    rsQ!Field1 = lvPortfolio.ListItems(intRow)
    For intColumn = 1 To lvPortfolio.ColumnHeaders.count - 1
        rsQ.Fields("Field" & intColumn + 1 & "") = lvPortfolio.ListItems(intRow).SubItems(intColumn)
        If rsQ.Fields("Field" & intColumn + 1 & "") = "" Then
            rsQ.Fields("Field" & intColumn + 1 & "") = "  "
        End If
    Next
    rsQ.Update
    rsQ.MoveNext
Next
rsQ.Close
Set rsQ = Nothing
End Sub

Public Sub PrintReport()
On Error GoTo Err

Dim intCount As Integer

con.Close
Set con = Nothing
Call CONNECT
CrystalReport1.Reset

CrystalReport1.Formulas(1) = ""
CrystalReport1.Formulas(1) = "ReportTitle='Portfolio'"

CrystalReport1.Formulas(2) = ""
CrystalReport1.Formulas(2) = "UserCodeLabel=' '"

CrystalReport1.Formulas(3) = ""
CrystalReport1.Formulas(3) = "Field1='" & lvPortfolio.ColumnHeaders(4).Text & "'"

CrystalReport1.Formulas(4) = ""
CrystalReport1.Formulas(4) = "Field2='" & lvPortfolio.ColumnHeaders(5).Text & "'"

CrystalReport1.Formulas(5) = ""
CrystalReport1.Formulas(5) = "Field3='" & lvPortfolio.ColumnHeaders(6).Text & "'"

CrystalReport1.Formulas(6) = ""
CrystalReport1.Formulas(6) = "Field4='" & lvPortfolio.ColumnHeaders(7).Text & "'"

CrystalReport1.Formulas(7) = ""
CrystalReport1.Formulas(7) = "Field5='" & lvPortfolio.ColumnHeaders(8).Text & "'"

CrystalReport1.Formulas(8) = ""
CrystalReport1.Formulas(8) = "Field6='" & lvPortfolio.ColumnHeaders(9).Text & "'"

CrystalReport1.Formulas(9) = ""
CrystalReport1.Formulas(9) = "Field7='" & lvPortfolio.ColumnHeaders(10).Text & "'"

CrystalReport1.Formulas(10) = ""
CrystalReport1.Formulas(10) = "Field8='" & lvPortfolio.ColumnHeaders(11).Text & "'"

CrystalReport1.Formulas(11) = ""
CrystalReport1.Formulas(11) = "Field9='" & lvPortfolio.ColumnHeaders(12).Text & "'"

CrystalReport1.Formulas(12) = ""
CrystalReport1.Formulas(12) = "Field10='" & lvPortfolio.ColumnHeaders(13).Text & "'"

CrystalReport1.Formulas(13) = ""
CrystalReport1.Formulas(13) = "Field11='" & lvPortfolio.ColumnHeaders(14).Text & "'"

CrystalReport1.Formulas(14) = ""
CrystalReport1.Formulas(14) = "Field12='" & lvPortfolio.ColumnHeaders(15).Text & "'"

CrystalReport1.Formulas(15) = ""
CrystalReport1.Formulas(15) = "Field13='" & lvPortfolio.ColumnHeaders(16).Text & "'"

CrystalReport1.Formulas(16) = ""
CrystalReport1.Formulas(16) = "Field14='" & lvPortfolio.ColumnHeaders(17).Text & "'"

CrystalReport1.Formulas(17) = ""
CrystalReport1.Formulas(17) = "Field15='" & lvPortfolio.ColumnHeaders(18).Text & "'"

'==================================================

CrystalReport1.Formulas(18) = ""
CrystalReport1.Formulas(18) = "Sum_Field1='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(3) & "'"

CrystalReport1.Formulas(19) = ""
CrystalReport1.Formulas(19) = "Sum_Field2='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(4) & "'"

CrystalReport1.Formulas(20) = ""
CrystalReport1.Formulas(20) = "Sum_Field3='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(5) & "'"

CrystalReport1.Formulas(21) = ""
CrystalReport1.Formulas(21) = "Sum_Field4='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(6) & "'"

CrystalReport1.Formulas(22) = ""
CrystalReport1.Formulas(22) = "Sum_Field5='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(7) & "'"

CrystalReport1.Formulas(23) = ""
CrystalReport1.Formulas(23) = "Sum_Field6='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(8) & "'"

CrystalReport1.Formulas(24) = ""
CrystalReport1.Formulas(24) = "Sum_Field7='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(9) & "'"

CrystalReport1.Formulas(25) = ""
CrystalReport1.Formulas(25) = "Sum_Field8='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(10) & "'"

CrystalReport1.Formulas(26) = ""
CrystalReport1.Formulas(26) = "Sum_Field9='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(11) & "'"

CrystalReport1.Formulas(27) = ""
CrystalReport1.Formulas(27) = "Sum_Field10='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(12) & "'"

CrystalReport1.Formulas(28) = ""
CrystalReport1.Formulas(28) = "Sum_Field11='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(13) & "'"

CrystalReport1.Formulas(29) = ""
CrystalReport1.Formulas(29) = "Sum_Field12='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(14) & "'"

CrystalReport1.Formulas(30) = ""
CrystalReport1.Formulas(30) = "Sum_Field13='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(15) & "'"

CrystalReport1.Formulas(31) = ""
CrystalReport1.Formulas(31) = "Sum_Field14='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(16) & "'"

CrystalReport1.Formulas(32) = ""
CrystalReport1.Formulas(32) = "Sum_Field15='" & lvPortfolio.ListItems(lvPortfolio.ListItems.count).SubItems(17) & "'"

CrystalReport1.ReportSource = crptReport
CrystalReport1.ReportFileName = App.Path & "\DeltaSoftRm Reports\rptPortFolioNewReq.rpt"
CrystalReport1.WindowState = crptMaximized
CrystalReport1.PrintReport
CrystalReport1.PageZoom (100)

Exit Sub
Err:
    MsgBox Err.Number & ":" & Err.Source, vbCritical, "Error"
End Sub




Private Sub cmdExcelList_Click()
Call ExporttoExcelFromListview(CommonDialog1, lvPortfolio)
End Sub


Public Sub MenusOnLoad()
'File Menus
'MDIMain.mnuFileNewPortfolio.Enabled = False
MDIMain.mnuFileNewPortfolio.Enabled = False
MDIMain.mnuFileModifyPortfolio.Enabled = False

MDIMain.mnuView.Enabled = False
MDIMain.mnuFileOpenPortfolio.Enabled = False
MDIMain.mnuFileSavePortfolio.Enabled = False
MDIMain.mnuFileDeletePortfolio.Enabled = False
MDIMain.mnuFileClose.Enabled = True
MDIMain.mnuViewUserTotalPortfolioSummary.Enabled = False
MDIMain.mnuUserNameWiseTotalPortfolioSummary.Enabled = False

MDIMain.mnuUpload.Enabled = False 'Whole Upload Menu
MDIMain.mnuUtility.Enabled = False 'Whole Utility Menu
MDIMain.mnuReports.Enabled = False 'Whole Report Menu
MDIMain.mnuMasters.Enabled = False 'Whole Master Menu

End Sub


Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
frmPortfolioSummarySettings.Show vbModal
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Call GlobalKeyUp(Shift, KeyCode)

Shift = 0
KeyCode = 0
End Sub

Private Sub Form_Load()
'MDIMain.Toolbar1.Visible = False
'MDIMain.mnuUtility.Visible = False
'MDIMain.mnuExpense.Enabled = False
'MDIMain.mnuFile1CrePort1.Enabled = False

'Code For Resolution
'============================
Dim MyForm As FRMSIZE
Dim DesignX As Integer
Dim DesignY As Integer
Dim ScaleFactorX As Single, ScaleFactorY As Single  ' Scaling factors
' Size of Form in Pixels at design resolution
DesignX = 1024
DesignY = 768
RePosForm = True   ' Flag for positioning Form
DoResize = False   ' Flag for Resize Event
' Set up the screen values
Xtwips = Screen.TwipsPerPixelX
Ytwips = Screen.TwipsPerPixelY
Ypixels = Screen.Height / Ytwips ' Y Pixel Resolution
Xpixels = Screen.Width / Xtwips  ' X Pixel Resolution

' Determine scaling factors
ScaleFactorX = (Xpixels / DesignX)
ScaleFactorY = (Ypixels / DesignY)
ScaleMode = 1  ' twips

Resize_For_Resolution ScaleFactorX, ScaleFactorY, Me
'Label.Caption = "Current resolution is " & Str$(Xpixels) + _
 '"  by " + Str$(Ypixels)
MyForm.Height = Me.Height ' Remember the current size
MyForm.Width = Me.Width
'===============================



If intUseEscape = 1 Then
    Command1.Cancel = True
ElseIf intUseEscape = 0 Then
    Command1.Cancel = False
End If

'
'MDIMain.mnuOptionStrategy.Enabled = False
'blnPubIsSummaryPortfolioOpen = True
Call SetPortfolioList
Call FillPortFolioList
'Call MenusOnLoad
'MDIMain.txtPortfolio.Visible = False
'blnIsSummaryPortfolioOpenForDisplay = True
blnShowSummaryPortfolioNewReq = True
End Sub


Private Sub SetPortfolioList() 'Sub Procedure for setting portfolio list at runtime
Dim strQ As String
Dim rsQ As ADODB.Recordset

lvPortfolio.ColumnHeaders.Add , , "Index", 0 '0
lvPortfolio.ColumnHeaders.Add , , "Symbol", 0 '1

strQ = "Select * From MstApplicationSettings Where SettingsName='Show Portfolio Summary' Order By CInt(SettingsValue)"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        If rsQ!SubSettingName = "Portfolio" Then
            lvPortfolio.ColumnHeaders.Add Val(rsQ!SettingsValue) + 2, , rsQ!SubSettingName, 3000, vbLeftJustify
        Else
            
            If InStr(1, rsQ!SubSettingName, "Delta Neutral") <> 0 Then
                lvPortfolio.ColumnHeaders.Add Val(rsQ!SettingsValue) + 2, , "Delta Neutral", 1500, vbRightJustify
            Else
                lvPortfolio.ColumnHeaders.Add Val(rsQ!SettingsValue) + 2, , rsQ!SubSettingName, 1500, vbRightJustify
            End If
        End If
        
        If rsQ!SubSettingName = "Balance" Then
            intBalance = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Market" Then
            intMarket = Val(rsQ!SettingsValue) + 1
        ElseIf InStr(1, rsQ!SubSettingName, "Delta Neutral") <> 0 Then
            intDeltaInShares = Val(rsQ!SettingsValue) + 1
            
            If rsQ!SubSettingName = "Delta Neutral" Then
                intDeltaInShares = Val(rsQ!SettingsValue) + 1
            End If
            
        ElseIf rsQ!SubSettingName = "Delta" Then
            intDelta = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Gamma" Then
            intGamma = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Vega" Then
            intVega = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Theta" Then
            intTheta = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Expense" Then
            intExpense = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Net Balance" Then
            intNetBalance = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Exposure" Then
            intExposure = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Premium" Then
            intPremium = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Equity" Then
            intEquity = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "E Traded" Then
            intETraded = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Future" Then
            intFuture = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Traded" Then
            intTraded = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Stock" Then
            intStock = Val(rsQ!SettingsValue) + 1
        ElseIf rsQ!SubSettingName = "Margin" Then
            intMargin = Val(rsQ!SettingsValue) + 1
        End If
        rsQ.MoveNext
    Wend
Else

    intBalance = 3
    intMarket = 4
    intDeltaInShares = 5
    intDelta = 6
    intGamma = 7
    intVega = 8
    intTheta = 9
    intExpense = 10
    intNetBalance = 11
    intExposure = 12
    intPremium = 13
    intEquity = 14
    intETraded = 15
    intFuture = 16
    intTraded = 17
    intStock = 18
    intMargin = 19
    
    lvPortfolio.ColumnHeaders.Add , , "Portfolio", 3000, vbLeftJustify '3
    lvPortfolio.ColumnHeaders.Add , , "Balance", 1500, vbRightJustify '3
    lvPortfolio.ColumnHeaders.Add , , "Market", 1500, vbRightJustify '4
    lvPortfolio.ColumnHeaders.Add , , "Delta Neutral", 1500, vbRightJustify '11'6 '5
    lvPortfolio.ColumnHeaders.Add , , "Delta", 1500, vbRightJustify   '6
    lvPortfolio.ColumnHeaders.Add , , "Gamma", 1500, vbRightJustify  '7
    lvPortfolio.ColumnHeaders.Add , , "Vega", 1500, vbRightJustify  '8
    lvPortfolio.ColumnHeaders.Add , , "Theta", 1500, vbRightJustify  '9

    lvPortfolio.ColumnHeaders.Add , , "Expense", 1500, vbRightJustify '10
    lvPortfolio.ColumnHeaders.Add , , "Net Balance", 1500, vbRightJustify '11
    lvPortfolio.ColumnHeaders.Add , , "Exposure", 1500, vbRightJustify '12

    lvPortfolio.ColumnHeaders.Add , , "Premium", 1500, vbRightJustify  '13
    lvPortfolio.ColumnHeaders.Add , , "Equity", 1500, vbRightJustify  '14
    lvPortfolio.ColumnHeaders.Add , , "E Traded", 1500, vbRightJustify '15
    lvPortfolio.ColumnHeaders.Add , , "Future", 1500, vbRightJustify  '16
    lvPortfolio.ColumnHeaders.Add , , "Traded", 1500, vbRightJustify  '17
    lvPortfolio.ColumnHeaders.Add , , "Stock", 1500, vbRightJustify '18
    lvPortfolio.ColumnHeaders.Add , , "Margin", 1500, vbRightJustify '19
    
End If
rsQ.Close
Set rsQ = Nothing
End Sub


Public Sub FillPortFolioList() 'Sub Procedure For filling portfolio list
On Error GoTo EH
blnShowSummaryPortfolioNewReq = True
Dim strDetail As String
Dim rsDetail As New ADODB.Recordset

Dim strOtherDetails As String
Dim rsOtherDetails As New ADODB.Recordset

Dim lngIndex As Long
Dim List As ListItem

Dim dblTotalBalance As Double
Dim dblTotalDelta As Double
Dim dblTotalTTheta As Double
Dim dblTotalTDelta As Double
Dim dblTotalTVega As Double
Dim dblTotalTGamma As Double
Dim dblTotalPremium As Double

Dim dblTotalDeltaNeutral As Double
'Dim dblTotalTheta As Double
Dim dblTotalExpense As Double
Dim dblTotalNetBalance As Double
Dim dblTotalExposure As Double
Dim dblTotalEquity As Double
Dim dblTotalETraded As Double
Dim dblTotalFuture As Double
Dim dblTotalTraded As Double
Dim dblTotalStock As Double
Dim dblTotalMargin As Double


Dim blnIsPortfolioSampleIsLoaded As Boolean

If blnIsHidePortfolio = True Then
    strDetail = "SELECT * FROM RepFullSheetM WHERE cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "')  AND isnull(usercd) and Balance=0 Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
Else
    strDetail = "SELECT * FROM RepFullSheetM WHERE cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "')  AND isnull(usercd) Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
End If

rsDetail.Open strDetail, con, adOpenKeyset, adLockOptimistic
If rsDetail.EOF = False Then
    lvPortfolio.ListItems.Clear
    Me.ZOrder
    DoEvents
    Me.ZOrder
    blnIsPortfolioSampleIsLoaded = False
    Do Until rsDetail.EOF
        DoEvents
        Set List = lvPortfolio.ListItems.Add(, , rsDetail("index"))
        lngIndex = rsDetail!Index
        List.SubItems(1) = rsDetail("symbolname")
        List.SubItems(2) = rsDetail("my_strdesc")
        strPubMyDesc = rsDetail("my_strdesc")
        userinfo.SELUSERCD = ""
        
        
        
        If blnIsPortfolioSampleIsLoaded = False Then
            Load frmPortfolioSample
            blnIsPortfolioSampleIsLoaded = True
        End If
        
        frmPortfolioSample.CLEARALL
        frmPortfolioSample.SSTab2.Caption = strPubMyDesc & "-" & userinfo.SELUSERCD
        frmPortfolioSample.FillDetails (UCase(List.SubItems(2)))
        frmPortfolioSample.FillStrike
        frmPortfolioSample.CalculateSummary

        List.SubItems(intBalance) = Round(Val(frmPortfolioSample.txtBalance.Text))
        List.SubItems(intMarket) = rsDetail("mkprice")
        List.SubItems(intDeltaInShares) = Val(frmPortfolioSample.txtInShares.Text)
        List.SubItems(intDelta) = Val(frmPortfolioSample.txtTotal_DelVal.Text)
        List.SubItems(intGamma) = Val(frmPortfolioSample.txtTotal_GMVal.Text)
        List.SubItems(intVega) = Val(frmPortfolioSample.txtTotal_VGVal.Text)
        List.SubItems(intTheta) = Val(frmPortfolioSample.txtTotal_ThetaVal.Text)
'        List.SubItems(intExpense) = Format(-(Val(frmPortfolioSample.txtNetBalance.Text) - Val(frmPortfolioSample.txtBalance.Text)), "0.00")
        List.SubItems(intExpense) = Round(-(Val(frmPortfolioSample.txtNetBalance.Text) - Val(frmPortfolioSample.txtBalance.Text)))
        List.SubItems(intNetBalance) = Round(Val(frmPortfolioSample.txtNetBalance.Text))
        List.SubItems(intExposure) = Val(frmPortfolioSample.txtExposure.Text)
        List.SubItems(intPremium) = Val(frmPortfolioSample.txtPremium.Text)
        
        List.SubItems(intEquity) = Val(frmPortfolioSample.txtNStock.Text)
        List.SubItems(intETraded) = Val(frmPortfolioSample.txtTradeStock.Text)
        List.SubItems(intFuture) = Val(frmPortfolioSample.txtNFutu.Text)
        List.SubItems(intTraded) = Val(frmPortfolioSample.txtTradeFutu.Text)
        List.SubItems(intStock) = 0
        List.SubItems(intMargin) = 0


        dblTotalPremium = dblTotalPremium + List.SubItems(intPremium)
        dblTotalDelta = dblTotalDelta + Val(List.SubItems(intDeltaInShares))
        dblTotalTDelta = dblTotalTDelta + Val(List.SubItems(intDelta))
        dblTotalTTheta = dblTotalTTheta + Val(List.SubItems(intTheta))
        dblTotalTVega = dblTotalTVega + Val(List.SubItems(intVega))
        dblTotalTGamma = dblTotalTGamma + Val(List.SubItems(intGamma))
        dblTotalBalance = dblTotalBalance + List.SubItems(intBalance)
        
        dblTotalDeltaNeutral = dblTotalDeltaNeutral + List.SubItems(intDeltaInShares)
        dblTotalExpense = dblTotalExpense + List.SubItems(intExpense)
        dblTotalNetBalance = dblTotalNetBalance + List.SubItems(intNetBalance)
        dblTotalExposure = dblTotalExposure + List.SubItems(intExposure)
        dblTotalEquity = dblTotalEquity + List.SubItems(intEquity)
        dblTotalETraded = dblTotalETraded + List.SubItems(intETraded)
        dblTotalFuture = dblTotalFuture + List.SubItems(intFuture)
        dblTotalTraded = dblTotalTraded + List.SubItems(intTraded)
        dblTotalStock = dblTotalStock + List.SubItems(intStock)
        dblTotalMargin = dblTotalMargin + List.SubItems(intMargin)
        
        rsDetail.MoveNext
    Loop

    If blnIsPortfolioSampleIsLoaded = True Then
        Unload frmPortfolioSample
    End If
    
    Me.ZOrder
End If
rsDetail.Close

'Adding Total Field
Set List = lvPortfolio.ListItems.Add(, , "ALL")
List.SubItems(1) = ""
List.SubItems(2) = "TOTAL"
List.ListSubItems(2).ForeColor = vbBlue

List.SubItems(intBalance) = dblTotalBalance
List.ListSubItems(intBalance).ForeColor = vbBlue
List.SubItems(intPremium) = dblTotalPremium
List.ListSubItems(intPremium).ForeColor = vbBlue
List.SubItems(intDeltaInShares) = dblTotalDelta
List.ListSubItems(intDeltaInShares).ForeColor = vbBlue
List.SubItems(intDelta) = dblTotalTDelta
List.ListSubItems(intDelta).ForeColor = vbBlue
List.SubItems(intTheta) = dblTotalTTheta
List.ListSubItems(intTheta).ForeColor = vbBlue
List.SubItems(intVega) = dblTotalTVega
List.ListSubItems(intVega).ForeColor = vbBlue
List.SubItems(intGamma) = dblTotalTGamma
List.ListSubItems(intGamma).ForeColor = vbBlue

List.SubItems(intDeltaInShares) = dblTotalDeltaNeutral
List.ListSubItems(intDeltaInShares).ForeColor = vbBlue
List.SubItems(intExpense) = dblTotalExpense
List.ListSubItems(intExpense).ForeColor = vbBlue
List.SubItems(intNetBalance) = dblTotalNetBalance
List.ListSubItems(intNetBalance).ForeColor = vbBlue
List.SubItems(intExposure) = dblTotalExposure
List.ListSubItems(intExposure).ForeColor = vbBlue
List.SubItems(intEquity) = dblTotalEquity
List.ListSubItems(intEquity).ForeColor = vbBlue
List.SubItems(intETraded) = dblTotalETraded
List.ListSubItems(intETraded).ForeColor = vbBlue
List.SubItems(intFuture) = dblTotalFuture
List.ListSubItems(intFuture).ForeColor = vbBlue
List.SubItems(intTraded) = dblTotalTraded
List.ListSubItems(intTraded).ForeColor = vbBlue
List.SubItems(intStock) = dblTotalStock
List.ListSubItems(intStock).ForeColor = vbBlue
List.SubItems(intMargin) = dblTotalMargin
List.ListSubItems(intMargin).ForeColor = vbBlue

blnShowSummaryPortfolioNewReq = False
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Private Sub Form_Unload(Cancel As Integer)
'blnIsSummaryPortfolioOpenForDisplay = False
'MDIMain.mnuOptionStrategy.Enabled = True
'MDIMain.mnuView.Enabled = True
'If blnIsExit = True Then
'    Exit Sub
'End If
'blnPubIsSummaryPortfolioOpen = False
'Call MDIMain.EnabledOnFirstLoad
blnShowSummaryPortfolioNewReq = False
End Sub

Private Sub lvPortfolio_DblClick()
'Call ShowPortfolio
End Sub

Private Sub lvPortfolio_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = vbKeyReturn Then
'    Call lvPortfolio_DblClick
'End If
End Sub


Public Sub ShowPortfolio()

'If lvPortFolio.ListItems.count <> 0 Then
'
'    If lvPortFolio.SelectedItem.SubItems(2) = "ALL" Then Exit Sub
'    blnIsSummaryPortfolioOpenForDisplay = False
'    Load frmPortfolio
'    MDIMain.Toolbar1.Enabled = True
'    frmPortfolio.SSTab2.Caption = lvPortFolio.SelectedItem.SubItems(2) & "-"
'    frmPortfolio.CLEARALL
'    frmPortfolio.FillDetails (lvPortFolio.SelectedItem.SubItems(2))
'    frmPortfolio.FillStrike
'    frmPortfolio.CalculateSummary
'    frmPortfolio.cmdSummary.Enabled = False
'    blnCmbPortFolio = True
'    MDIMain.cmbPortfolioList.Text = lvPortFolio.SelectedItem.SubItems(2)
'    blnCmbPortFolio = False
'    frmPortfolio.Show
'End If
'
'Unload Me
'frmPortfolio.MenusOnOpen
End Sub
