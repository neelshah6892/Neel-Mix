VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmTrailTrack 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Trail Track"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10350
   Icon            =   "frmTrailTrack.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form3"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   10350
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDeleteHandEntries 
      Caption         =   "Delete Selected Hand Entries"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5940
      TabIndex        =   9
      Top             =   6240
      Width           =   3060
   End
   Begin VB.TextBox txtUserCode 
      Height          =   285
      Left            =   7485
      TabIndex        =   29
      Top             =   7035
      Visible         =   0   'False
      Width           =   690
   End
   Begin VB.TextBox txtCP 
      Height          =   285
      Left            =   6270
      TabIndex        =   28
      Top             =   7065
      Visible         =   0   'False
      Width           =   1110
   End
   Begin VB.TextBox txtStrike 
      Height          =   285
      Left            =   5070
      TabIndex        =   27
      Top             =   7080
      Visible         =   0   'False
      Width           =   1110
   End
   Begin VB.TextBox txtUserNameOrCode 
      Height          =   300
      Left            =   3885
      TabIndex        =   26
      Text            =   "UC"
      Top             =   7050
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox txtTradeDate 
      Height          =   300
      Left            =   2685
      TabIndex        =   25
      Top             =   7035
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox txtExpiry 
      Height          =   300
      Left            =   1485
      TabIndex        =   24
      Top             =   7020
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox txtScript 
      Height          =   300
      Left            =   270
      TabIndex        =   23
      Top             =   7035
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "C&lose"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9105
      TabIndex        =   12
      Top             =   6240
      Width           =   1170
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3315
      Top             =   7095
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Height          =   6165
      Left            =   60
      TabIndex        =   13
      Top             =   15
      Width           =   10230
      Begin VB.CheckBox chkHandEntries 
         Caption         =   "Show &Hand Entries"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4995
         TabIndex        =   7
         Top             =   1080
         Width           =   2475
      End
      Begin VB.CommandButton cmdExcelList 
         Height          =   375
         Left            =   9690
         Picture         =   "frmTrailTrack.frx":000C
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Export to Excel"
         Top             =   1335
         Width           =   405
      End
      Begin VB.CommandButton cmdCalculator 
         Height          =   375
         Left            =   9270
         Picture         =   "frmTrailTrack.frx":0394
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Calculator..."
         Top             =   1335
         Width           =   405
      End
      Begin VB.Frame fraDatewise 
         Height          =   630
         Left            =   75
         TabIndex        =   21
         Top             =   1050
         Width           =   4785
         Begin VB.CheckBox chkDateWise 
            Caption         =   "Datewise"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   135
            TabIndex        =   5
            Top             =   210
            Width           =   1245
         End
         Begin MSComCtl2.DTPicker dtpTradeDate 
            Height          =   300
            Left            =   3180
            TabIndex        =   6
            Top             =   240
            Width           =   1515
            _ExtentX        =   2672
            _ExtentY        =   529
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   103219201
            CurrentDate     =   40009
         End
         Begin VB.Label Label5 
            Caption         =   "Trade Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1965
            TabIndex        =   22
            Top             =   270
            Width           =   1095
         End
      End
      Begin VB.CommandButton cmdExcel 
         Caption         =   "&Export To Excel"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   8655
         TabIndex        =   20
         Top             =   930
         Visible         =   0   'False
         Width           =   1170
      End
      Begin VB.ComboBox cmbUserName 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   1440
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   660
         Width           =   2580
      End
      Begin VB.ComboBox cmbBuySell 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   5040
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   660
         Width           =   1815
      End
      Begin VB.CommandButton cmdGo 
         Caption         =   "&Go"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   7830
         TabIndex        =   8
         Top             =   1320
         Width           =   1155
      End
      Begin VB.ComboBox cmbCP 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   3075
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   240
         Width           =   915
      End
      Begin VB.ComboBox cmbStrike 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   5040
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   240
         Width           =   1815
      End
      Begin VB.ComboBox cmbType 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         ItemData        =   "frmTrailTrack.frx":08AC
         Left            =   1440
         List            =   "frmTrailTrack.frx":08AE
         Style           =   2  'Dropdown List
         TabIndex        =   0
         Top             =   240
         Width           =   1095
      End
      Begin MSComctlLib.ListView lstDetails 
         Height          =   4320
         Left            =   75
         TabIndex        =   17
         Top             =   1770
         Width           =   10035
         _ExtentX        =   17701
         _ExtentY        =   7620
         View            =   3
         Arrange         =   2
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483629
         BorderStyle     =   1
         Appearance      =   0
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
      Begin VB.Label lblUserCode 
         Caption         =   "User Code"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   19
         Top             =   660
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "Buy/Sell"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4080
         TabIndex        =   18
         Top             =   660
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "C/P"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2595
         TabIndex        =   16
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label1 
         Caption         =   "Strike"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4080
         TabIndex        =   15
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "Type"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Note: Use Ctrl+A to Show All Trades"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   210
      Left            =   75
      TabIndex        =   30
      Top             =   6195
      Width           =   3600
   End
End
Attribute VB_Name = "frmTrailTrack"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim RS As New ADODB.Recordset
Dim mstrUserCode As String

'Added By: Pramisha
'Date: 07/05/2010
'Description: Added Delete Hand Entries

Private Sub chkHandEntries_Click()
If chkHandEntries.Value = vbChecked Then
    lstDetails.ListItems.Clear
    lstDetails.CheckBoxes = True
    cmdDeleteHandEntries.Enabled = True
    
    If cmbType = "O" Then
        If cmbCP.Text = "" Then
            MsgBox "C/P should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
        If cmbStrike.Text = "" Then
            MsgBox "Strike should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
    End If
    If gblnPortfolioLastBackup = True Then
        Call SHOWDATA2_Last_Backup
        cmdDeleteHandEntries.Enabled = False
    Else
        SHOWDATA2
    End If
Else
    lstDetails.ListItems.Clear
    lstDetails.CheckBoxes = False
    cmdDeleteHandEntries.Enabled = False
    
    If cmbType = "O" Then
        If cmbCP.Text = "" Then
            MsgBox "C/P should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
        If cmbStrike.Text = "" Then
            MsgBox "Strike should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
    End If
    If gblnPortfolioLastBackup = True Then
        Call Show_Data_Last_backup
    Else
        SHOWDATA1
    End If
End If

If cmbType.Text = "All" Then
    If gblnPortfolioLastBackup = True Then
        Call SHOWDATA_All_Last_Backup
    Else
        Call SHOWDATA_All
    End If
End If
End Sub



Private Sub cmbUserName_Click()
Dim strUserCode As String
Dim intFind As Integer
If cmbUserName.Text = "All" Then
    mstrUserCode = "All"
Else
    strUserCode = StrReverse(cmbUserName.Text)
    intFind = InStr("1", strUserCode, "=")
    strUserCode = Mid(strUserCode, intFind + 1)
    strUserCode = StrReverse(strUserCode)
    mstrUserCode = strUserCode
End If
End Sub


Private Sub cmdCalculator_Click()
On Error Resume Next
Shell "calc.exe", vbNormalFocus
End Sub

Private Sub cmdClose_Click()
Unload Me
End Sub

Private Sub cmdDeleteHandEntries_Click()
Dim intCount As Integer

On Error GoTo EH

Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim i As Integer
Dim strDate As String

If lstDetails.ListItems.count = 0 Then
    Exit Sub
End If
intCount = 0
For i = 1 To lstDetails.ListItems.count
    If lstDetails.ListItems(i).Checked = False Then
        intCount = intCount + 1
        If intCount = lstDetails.ListItems.count Then
            MsgBox "First Select atleast one Entry!!!", vbCritical
            Exit Sub
        End If
    End If
Next

If MsgBox("Are you sure want to delete selected Hand Entries?", vbQuestion + vbYesNo + vbDefaultButton2) = vbNo Then Exit Sub

For i = 1 To lstDetails.ListItems.count
    If lstDetails.ListItems(i).Checked = True Then
        strQ = "Delete From DummyTracker Where SrNo=" & Val(lstDetails.ListItems(i).SubItems(8)) & ""
        Set rsQ = New ADODB.Recordset
        rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
        Set rsQ = Nothing
        
        strDate = lstDetails.ListItems(i).SubItems(4)
        If Len(strDate) > 10 Then
            strDate = Left(strDate, 10)
        End If
        
'        Load frmExpdet
'        frmExpdet.dtpFrom.Value = CDate(strDate)
'        frmExpdet.dtpTo.Value = Date
'        frmExpdet.adminexp
'        frmExpdet.Calculate_User_Expense
'        Unload frmExpdet
'        Debug.Print strDate
        
    End If
Next


Call SHOWDATA2

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical

End Sub

Private Sub cmdExcelList_Click()
Call ExporttoExcelFromListview(CommonDialog1, lstDetails)
End Sub


Private Sub cmdGo_Click()
On Error GoTo EH

If chkHandEntries.Value = vbChecked Then
    If cmbType = "O" Then
        If cmbCP.Text = "" Then
            MsgBox "C/P should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
        If cmbStrike.Text = "" Then
            MsgBox "Strike should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
    End If
    If gblnPortfolioLastBackup = True Then
        SHOWDATA2_Last_Backup
    Else
        SHOWDATA2
    End If
ElseIf chkHandEntries.Value = vbUnchecked Then

    If cmbType = "O" Then
        If cmbCP.Text = "" Then
            MsgBox "C/P should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
        If cmbStrike.Text = "" Then
            MsgBox "Strike should not be left blank!!!", vbCritical
            lstDetails.ListItems.Clear
            Exit Sub
        End If
    
    End If
    If gblnPortfolioLastBackup = True Then
        Call Show_Data_Last_backup
    Else
        SHOWDATA1
    End If
End If


If cmbType.Text = "All" Then
    If gblnPortfolioLastBackup = True Then
        Call SHOWDATA_All_Last_Backup
    Else
        Call SHOWDATA_All
    End If
End If


Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Private Sub SetList()
lstDetails.ColumnHeaders.Add , , "Units", 1400
lstDetails.ColumnHeaders.Add , , "Traded", 1400
If cmbType.Text = "O" Then
    lstDetails.ColumnHeaders.Add , , "Strike", 1000
    lstDetails.ColumnHeaders.Add , , "C/P", 1000
Else
    lstDetails.ColumnHeaders.Add , , "Strike", 0
    lstDetails.ColumnHeaders.Add , , "C/P", 0
End If
lstDetails.ColumnHeaders.Add , , "Timestamp", 3000
lstDetails.ColumnHeaders.Add , , "Trade ID", 1400
lstDetails.ColumnHeaders.Add , , "Buy/Sell", 1100
If txtUserNameOrCode.Text = "UC" Then
    lstDetails.ColumnHeaders.Add , , "User Code", 1400
ElseIf txtUserNameOrCode.Text = "UN" Then
    lstDetails.ColumnHeaders.Add , , "User Name", 1400
End If
lstDetails.ColumnHeaders.Add , , "SrNo", 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo EH
If Shift = vbCtrlMask And KeyCode = vbKeyA Then
    cmbType.Text = "All"
    cmbCP.Text = "C/P"
    cmbStrike.Text = "All"
    cmbUserName.Text = "All"
    cmbBuySell = "BuySell"
    Call cmdGo_Click
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description
End Sub

Private Sub Form_Load()
'Modify Date : 2/07/2010

On Error GoTo EH
'Call/Put

cmbCP.AddItem "C/P"
cmbCP.AddItem "C"
cmbCP.AddItem "P"

'Option/Future
'Description: Added BuySell in cmbBuySell
cmbBuySell.AddItem "BuySell"
cmbBuySell.AddItem "Buy"
cmbBuySell.AddItem "Sell"
cmbBuySell.ListIndex = 0

chkDateWise.Value = vbUnchecked
dtpTradeDate.Value = Now

If strPubTrailTrack = "UC" Then
    txtUserNameOrCode.Text = "UC"
    lblUserCode.Caption = "User Code"
ElseIf strPubTrailTrack = "UN" Then
    txtUserNameOrCode.Text = "UN"
    lblUserCode.Caption = "User Name"
End If
cmbStrike.Clear

cmdDeleteHandEntries.Enabled = False

Call SetList


Call FillUser
'Fill Strike
If gblnPortfolioLastBackup = True Then
    txtExpiry.Text = frmPortfolioShowLastBackup.txtExpDt.Text
    txtScript.Text = Trim$(Left(frmPortfolioShowLastBackup.tbsPortfolio.SelectedItem, Len(frmPortfolioShowLastBackup.tbsPortfolio.SelectedItem) - 7))
    txtTradeDate.Text = frmPortfolioShowLastBackup.txtDate.Text
    If intRate = 2 Then
        RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and Format( EXPDT,'MM/YYYY')=Format('" & CDate(txtExpiry.Text) & "','MM/YYYY') and Strike<>0", gblConLastBackup, adOpenForwardOnly
    Else
        RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and Cdate(EXPDT)=Cdate('" & CDate(txtExpiry.Text) & "') and Strike<>0", gblConLastBackup, adOpenForwardOnly
    End If
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackertEMP Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", gblConLastBackup, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    If frmPortfolioShowLastBackup.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmPortfolioShowLastBackup.lstDetails1.SelectedItem
        txtCP.Text = frmPortfolioShowLastBackup.lstDetails1.SelectedItem.SubItems(1)
        cmbType.AddItem "O" 'OPTION
    End If
    cmbType.AddItem "F" 'FUTURE
    cmbType.AddItem "C" 'EQUITY
End If

If blnPubIsPortfolioOpen = True Then
    txtExpiry.Text = frmPortfolio.txtExpDt.Text
    
    Call isWeeklyScript(frmPortfolio.tbsPortfolio.SelectedItem, Weeklyscripts)
    
'    If InStr(1, Weeklyscripts, Split(frmPortfolio.tbsPortfolio.SelectedItem, " ")(0)) Then
'      bWeeklyPortfolio = True
'    Else
'      bWeeklyPortfolio = False
'    End If
    
    'If InStr(1, frmPortfolio.tbsPortfolio.SelectedItem, "BANKNIFTY") > 0 Then
    If (InStr(1, frmPortfolio.tbsPortfolio.SelectedItem, "BANKNIFTY") > 0 Or bWeeklyPortfolio = True) Then
        txtScript.Text = Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 10))
    Else
        txtScript.Text = Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 7))
    End If
    txtTradeDate.Text = frmPortfolio.txtDate.Text
    If intRate = 2 Then
        RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and Format( EXPDT,'MM/YYYY')=Format('" & CDate(txtExpiry.Text) & "','MM/YYYY') and Strike<>0", con, adOpenForwardOnly
    Else
        RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and Cdate(EXPDT)=Cdate('" & CDate(txtExpiry.Text) & "') and Strike<>0", con, adOpenForwardOnly
    End If
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackertEMP Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    If frmPortfolio.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmPortfolio.lstDetails1.SelectedItem
        txtCP.Text = frmPortfolio.lstDetails1.SelectedItem.SubItems(1)
        cmbType.AddItem "O" 'OPTION
    End If
    cmbType.AddItem "F" 'FUTURE
    cmbType.AddItem "C" 'EQUITY
End If


If blnPubIsUserPortfolioOpen = True Then
    txtExpiry.Text = frmPortfolio_UserCode.txtExpDt.Text
    txtScript.Text = Trim$(Left(frmPortfolio_UserCode.SSTab2.Caption, Len(frmPortfolio_UserCode.SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7))
    txtTradeDate.Text = frmPortfolio_UserCode.txtDate.Text
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackerTemp Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    If frmPortfolio_UserCode.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmPortfolio_UserCode.lstDetails1.SelectedItem
        txtCP.Text = frmPortfolio_UserCode.lstDetails1.SelectedItem.SubItems(1)
        
        cmbStrike.Text = txtStrike.Text
        cmbCP.Text = txtCP.Text
        cmbType.AddItem "O" 'OPTION
        cmbType.AddItem "F" 'FUTURE
        cmbType.AddItem "C" 'EQUITY
        
        cmbType.Text = "O"
    Else
        cmbType.AddItem "F" 'FUTURE
        cmbType.AddItem "C" 'EQUITY
        
        cmbType.Text = "F"
    End If
    cmbUserName.Text = userinfo.SELUSERCD
    
    cmbUserName.Locked = True
End If

If blnPubUserPortfolioNameWiseOpen = True Then
    txtExpiry.Text = frmPortfolio_UserName.txtExpDt.Text
    txtScript.Text = Trim$(Left(frmPortfolio_UserName.SSTab2.Caption, Len(frmPortfolio_UserName.SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7))
    txtTradeDate.Text = frmPortfolio_UserName.txtDate.Text
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackertEMP Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    If frmPortfolio_UserName.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmPortfolio_UserName.lstDetails1.SelectedItem
        txtCP.Text = frmPortfolio_UserName.lstDetails1.SelectedItem.SubItems(1)
        cmbStrike.Text = txtStrike.Text
        cmbCP.Text = txtCP.Text
        cmbType.AddItem "O" 'OPTION
        cmbType.AddItem "F" 'FUTURE
        cmbType.AddItem "C" 'EQUITY
        
        cmbType.Text = "O"
    Else
        cmbType.AddItem "F" 'FUTURE
        cmbType.AddItem "C" 'EQUITY
        
        cmbType.Text = "F"
    End If
    
    cmbUserName.Text = userinfo.SELUSERCD
    
    cmbUserName.Locked = True
End If


If blnPubIsLiveBhavcopyOpen = True Then
    txtExpiry.Text = frmLiveBhavcopy.txtExpDt.Text
    txtScript.Text = Trim$(Left(frmLiveBhavcopy.SSTab2.Caption, Len(frmLiveBhavcopy.SSTab2.Caption) - 7))
    txtTradeDate.Text = frmLiveBhavcopy.txtDate.Text
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackertEMP Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    If frmLiveBhavcopy.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmLiveBhavcopy.lstDetails1.SelectedItem
        txtCP.Text = frmLiveBhavcopy.lstDetails1.SelectedItem.SubItems(1)
        cmbType.AddItem "O" 'OPTION
    End If
    cmbType.AddItem "F" 'FUTURE
    cmbType.AddItem "C" 'EQUITY
End If
'Added by AAP on 09/11/2012
'-------------------------------------------------------------------------------------------------
If blnPubIsLiveBhavcopyWithStrategyOpen = True Then
    txtExpiry.Text = frmLiveBhavcopyWithStrategy.txtExpDt.Text
    txtScript.Text = Trim$(Left(frmLiveBhavcopyWithStrategy.SSTab2.Caption, Len(frmLiveBhavcopyWithStrategy.SSTab2.Caption) - 7))
    txtTradeDate.Text = frmLiveBhavcopyWithStrategy.txtDate.Text
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackertEMP Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    If frmLiveBhavcopyWithStrategy.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmLiveBhavcopyWithStrategy.lstDetails1.SelectedItem
        txtCP.Text = frmLiveBhavcopyWithStrategy.lstDetails1.SelectedItem.SubItems(1)
        cmbType.AddItem "O" 'OPTION
    End If
    cmbType.AddItem "F" 'FUTURE
    cmbType.AddItem "C" 'EQUITY
End If
'-------------------------------------------------------------------------------------------------
If blnPubIsLiveBhavcopyOpenBuySellIV = True Then
    txtExpiry.Text = frmLiveBhavcopyWithBuySell_IV.txtExpDt.Text
    txtScript.Text = Trim$(Left(frmLiveBhavcopyWithBuySell_IV.SSTab2.Caption, Len(frmLiveBhavcopyWithBuySell_IV.SSTab2.Caption) - 7))
    txtTradeDate.Text = frmLiveBhavcopyWithBuySell_IV.txtDate.Text
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTracker Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    cmbStrike.AddItem "All"
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open "SELECT DISTINCT(Strike) FROM DummyTrackertEMP Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
    Do While Not RS.EOF
        cmbStrike.AddItem Trim(RS(0))
        RS.MoveNext
    Loop
    RS.Close
    If frmLiveBhavcopyWithBuySell_IV.lstDetails1.ListItems.count > 0 Then
        txtStrike.Text = frmLiveBhavcopyWithBuySell_IV.lstDetails1.SelectedItem
        txtCP.Text = frmLiveBhavcopyWithBuySell_IV.lstDetails1.SelectedItem.SubItems(1)
        cmbType.AddItem "O" 'OPTION
    End If
    cmbType.AddItem "F" 'FUTURE
    cmbType.AddItem "C" 'EQUITY
End If

If gblnPortfolioLastBackup = True Then
    If frmTradeTrail.optOption.Value = True Then
        cmbType.Text = "O"
        If txtStrike.Text <> "" And txtCP.Text <> "" Then
            cmbStrike.Text = txtStrike.Text
            cmbCP.Text = txtCP.Text
        End If
    ElseIf frmTradeTrail.optFuture.Value = True Then
        cmbType.Text = "F"
    Else
        cmbType.Text = "C"
    End If
End If

If blnPubIsPortfolioOpen = True Then
    If frmTradeTrail.optOption.Value = True Then
        cmbType.Text = "O"
        If txtStrike.Text <> "" And txtCP.Text <> "" Then
            cmbStrike.Text = txtStrike.Text
            cmbCP.Text = txtCP.Text
        End If
    ElseIf frmTradeTrail.optFuture.Value = True Then
        cmbType.Text = "F"
    Else
        cmbType.Text = "C"
    End If
End If

If strPubIsNewPortfolio = "Y" Then
    If frmTradeTrail.optOption.Value = True Then
        cmbType.Text = "O"
        If txtStrike.Text <> "" And txtCP.Text <> "" Then
            cmbStrike.Text = txtStrike.Text
            cmbCP.Text = txtCP.Text
        End If
    ElseIf frmTradeTrail.optFuture.Value = True Then
        cmbType.Text = "F"
    Else
        cmbType.Text = "C"
    End If
End If


If blnPubIsLiveBhavcopyOpen = True Then
    If frmTradeTrail.optOption.Value = True Then
        cmbType.Text = "O"
        If txtStrike.Text <> "" And txtCP.Text <> "" Then
            cmbStrike.Text = txtStrike.Text
            cmbCP.Text = txtCP.Text
        End If
    ElseIf frmTradeTrail.optFuture.Value = True Then
        cmbType.Text = "F"
    Else
        cmbType.Text = "C"
    End If
End If

'Added by AAP on 09/11/2012
'-------------------------------------------------------------------------------------------------
If blnPubIsLiveBhavcopyWithStrategyOpen = True Then
    If frmTradeTrail.optOption.Value = True Then
        cmbType.Text = "O"
        If txtStrike.Text <> "" And txtCP.Text <> "" Then
            cmbStrike.Text = txtStrike.Text
            cmbCP.Text = txtCP.Text
        End If
    ElseIf frmTradeTrail.optFuture.Value = True Then
        cmbType.Text = "F"
    Else
        cmbType.Text = "C"
    End If
End If
'-------------------------------------------------------------------------------------------------

If blnPubIsLiveBhavcopyOpenBuySellIV = True Then
    If frmTradeTrail.optOption.Value = True Then
        cmbType.Text = "O"
        If txtStrike.Text <> "" And txtCP.Text <> "" Then
            cmbStrike.Text = txtStrike.Text
            cmbCP.Text = txtCP.Text
        End If
    ElseIf frmTradeTrail.optFuture.Value = True Then
        cmbType.Text = "F"
    Else
        cmbType.Text = "C"
    End If
End If

cmbType.AddItem "All"
Call cmbUserName_Click
Unload frmTradeTrail




SHOWDATA

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Public Sub FillUser()
'Added By: Pramisha

Dim strFill As String
Dim rsFill As New ADODB.Recordset
Dim intUserCount1 As Integer
If txtUserNameOrCode.Text = "UC" Then
    strFill = "Select Distinct USERCD From User_detl Where User_Type='User' ORDER BY USERCD"
Else
    strFill = "Select Distinct USER_Name From User_detl Where User_Type='User' ORDER BY User_name"
End If
If gblnPortfolioLastBackup = True Then
    rsFill.Open strFill, gblConLastBackup, adOpenStatic, adLockReadOnly
Else
    rsFill.Open strFill, con, adOpenStatic, adLockReadOnly
End If
If rsFill.EOF = False Then
    cmbUserName.Clear
    intUserCount1 = 0
 
    While Not rsFill.EOF

        If txtUserNameOrCode.Text = "UC" Then
            cmbUserName.AddItem IIf(IsNull(rsFill!USERCD) = True, "", rsFill!USERCD) & "=" & RetrieveUserName(IIf(IsNull(rsFill!USERCD) = True, "", rsFill!USERCD))
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            cmbUserName.AddItem IIf(IsNull(rsFill!User_Name) = True, "", rsFill!User_Name)
        End If
        intUserCount1 = intUserCount1 + 1
        rsFill.MoveNext
    Wend


        cmbUserName.AddItem "All", 0
        cmbUserName.ListIndex = 0

End If
rsFill.Close
End Sub

Public Sub SHOWDATA()
lstDetails.ListItems.Clear
'cmbStrike.AddItem frmPortfolio.lstDetails1.SelectedItem.Text
'cmbStrike.Text = frmPortfolio.lstDetails1.SelectedItem.Text
''cmbCP.AddItem frmpOrtfolio.lstDetails1.SelectedItem.SubItems(1)
'
'cmbCP.Text = frmPortfolio.lstDetails1.SelectedItem.SubItems(1)
If gblnPortfolioLastBackup = True Then
    Call Show_Data_Last_backup
Else
    Call SHOWDATA1
End If
End Sub

Public Sub SHOWDATA1UserCode()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell

lstDetails.ListItems.Clear

Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
Dim strExpiryDate As String
Dim strPrevExpiryDate As String
Dim cmd As ADODB.Command
Dim rsFuture As ADODB.Recordset
Dim strCloseOut As String
Dim rsCloseOut As ADODB.Recordset
Dim List As ListItem
Dim units As Currency
Dim TRADED As Currency

If blnIsCloseOut = True And cmbType.Text = "F" And chkDateWise.Value = vbUnchecked Then
'    If blnPubIsPortfolioOpen = True Then
'        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio.txtDate.Text), "DD/MM/YYYY") & "')"
'    ElseIf blnPubIsUserPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio_UserCode.SSTab2.Caption, Len(frmPortfolio_UserCode.SSTab2.Caption) - 7)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio_UserCode.txtDate.Text), "DD/MM/YYYY") & "')"
'    End If
    Set rsCloseOut = New ADODB.Recordset
    rsCloseOut.Open strCloseOut, con, adOpenKeyset, adLockOptimistic
    If rsCloseOut.EOF = False Then
        strPrevExpiryDate = ""
        While Not rsCloseOut.EOF
            strExpiryDate = rsCloseOut!ExpiryDate
            
            If strPrevExpiryDate <> "" Then
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = con
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOutInDateRange"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(3) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(4) = "Buy"
                            Else
                                List.SubItems(4) = "Sell"
                            End If
                            List.SubItems(5) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(3) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(4) = "Buy"
                            Else
                                List.SubItems(4) = "Sell"
                            End If
                            List.SubItems(5) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(3) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(4) = "Buy"
                        Else
                            List.SubItems(4) = "Sell"
                        End If
                        List.SubItems(5) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            Else
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = con
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOut"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(3) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(4) = "Buy"
                            Else
                                List.SubItems(4) = "Sell"
                            End If
                            List.SubItems(5) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(3) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(4) = "Buy"
                            Else
                                List.SubItems(4) = "Sell"
                            End If
                            List.SubItems(5) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(3) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(4) = "Buy"
                        Else
                            List.SubItems(4) = "Sell"
                        End If
                        List.SubItems(5) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            End If
            
            strPrevExpiryDate = rsCloseOut!ExpiryDate
            rsCloseOut.MoveNext
        Wend
    End If
    rsCloseOut.Close
    Set rsCloseOut = Nothing
    
    
    
    
    
    If strExpiryDate <> "" Then
        
        strQueryDT = "Select * From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDate(TradeDt)>CDate('" & Format(CDate(strExpiryDate), "DD/MM/YYYY") & "') And CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(3) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(4) = "Buy"
                Else
                List.SubItems(4) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(5) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
        
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
    Else
        strQueryDT = "Select * From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDate(TradeDt)>CDate('" & Format(CDate(strExpiryDate), "DD/MM/YYYY") & "') And CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(3) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(4) = "Buy"
                Else
                List.SubItems(4) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(5) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
    
    End If
    
Else
    strQueryDT = "Select * From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    
    strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    
    If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
        If cmbUserName.Text <> "" Then
            If cmbUserName.Text <> "All" Then
                strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                strQueryDTT = strQueryDTT & " and USERCD='" & mstrUserCode & "'"
            End If
        End If
    ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
        If cmbUserName.Text <> "" Then
            If cmbUserName.Text <> "All" Then
                strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                strQueryDTT = strQueryDTT & " and Field1='" & mstrUserCode & "'"
            End If
        End If
    End If
    
    If cmbType.Text = "O" Then
        strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
        strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
    ElseIf cmbType.Text = "F" Then
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        strQueryDTT = strQueryDTT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
    Else
        strQueryDT = strQueryDT & " AND CASHTYPE='EQ'"
        strQueryDTT = strQueryDTT & " AND CASHTYPE='EQ'"
    End If
    If cmbBuySell.Text = "BuySell" Then
        strQueryDT = strQueryDT & " And Intype IN('1','2')"
        strQueryDTT = strQueryDTT & " And Intype IN('1','2')"
    ElseIf cmbBuySell.Text = "Buy" Then
        strQueryDT = strQueryDT & " And Intype='1'"
        strQueryDTT = strQueryDTT & " And Intype='1'"
    ElseIf cmbBuySell.Text = "Sell" Then
        strQueryDT = strQueryDT & " And Intype='2'"
        strQueryDTT = strQueryDTT & " And Intype='2'"
    End If
    
    
    If chkDateWise.Value = vbChecked Then
        strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        strQueryDTT = strQueryDTT & " and Format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
    End If
    
    RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(3) = RS!Tradeid
            If RS!InType = "1" Then
            List.SubItems(4) = "Buy"
            Else
            List.SubItems(4) = "Sell"
            End If
            'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(5) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open strQueryDTT, con, adOpenKeyset, adLockPessimistic
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(3) = RS!Tradeid
            If RS!InType = "1" Then
                List.SubItems(4) = "Buy"
            Else
                List.SubItems(4) = "Sell"
            End If
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(5) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
    RS.Close
    
    Set List = lstDetails.ListItems.Add(, , "Total")
    List.SubItems(1) = "Average"
    List.ForeColor = vbBlue
    List.ListSubItems(1).ForeColor = vbBlue
    
    Set List = lstDetails.ListItems.Add(, , units)
    If Val(units) = 0 Then
        List.SubItems(1) = Val(TRADED)
    Else
       List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
    End If
    List.ForeColor = vbBlue
    List.ListSubItems(1).ForeColor = vbBlue

End If
End Sub

Public Sub SHOWDATA1()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell

lstDetails.ListItems.Clear


Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
Dim strExpiryDate As String
Dim strPrevExpiryDate As String
Dim cmd As ADODB.Command
Dim rsFuture As ADODB.Recordset
Dim strCloseOut As String
Dim rsCloseOut As ADODB.Recordset
Dim List As ListItem
Dim units As Currency
Dim TRADED As Currency




If blnIsCloseOut = True And cmbType.Text = "F" And chkDateWise.Value = vbUnchecked And intRate <> 2 Then
    lstDetails.ColumnHeaders(3).Width = 0
    lstDetails.ColumnHeaders(4).Width = 0
        
    If blnPubIsPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsUserPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio_UserCode.SSTab2.Caption, Len(frmPortfolio_UserCode.SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio_UserCode.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsLiveBhavcopyOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmLiveBhavcopy.SSTab2.Caption, Len(frmLiveBhavcopy.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmLiveBhavcopy.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsLiveBhavcopyWithStrategyOpen = True Then 'Added by AAP on 09/11/2012
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmLiveBhavcopyWithStrategy.SSTab2.Caption, Len(frmLiveBhavcopyWithStrategy.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmLiveBhavcopyWithStrategy.txtDate.Text), "DD/MM/YYYY") & "')"
    End If
    Set rsCloseOut = New ADODB.Recordset
    rsCloseOut.Open strCloseOut, con, adOpenKeyset, adLockOptimistic
    If rsCloseOut.EOF = False Then
        strPrevExpiryDate = ""
        While Not rsCloseOut.EOF
            strExpiryDate = rsCloseOut!ExpiryDate
            
            If strPrevExpiryDate <> "" Then
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = con
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOutInDateRange"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            Else
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = con
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOut"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            End If
            
            strPrevExpiryDate = rsCloseOut!ExpiryDate
            rsCloseOut.MoveNext
        Wend
    End If
    rsCloseOut.Close
    Set rsCloseOut = Nothing
    
    
    
    
    
    If strExpiryDate <> "" Then
        
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDate(TradeDt)>CDate('" & Format(CDate(strExpiryDate), "DD/MM/YYYY") & "') And CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        strQueryDT = strQueryDT & " Order By Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
        
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
    Else
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        strQueryDT = strQueryDT & " Order By  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        
        RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
    
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
    End If
    
Else
    If intRate = 2 Then
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        
        strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY')  and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"

    Else
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        
        strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    End If
    If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
        If cmbUserName.Text <> "" Then
            If cmbUserName.Text <> "All" Then
                strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                strQueryDTT = strQueryDTT & " and USERCD='" & mstrUserCode & "'"
            End If
        End If
    ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
        If cmbUserName.Text <> "" Then
            If cmbUserName.Text <> "All" Then
                strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                strQueryDTT = strQueryDTT & " and Field1='" & mstrUserCode & "'"
            End If
        End If
    End If
    
    If cmbType.Text = "O" Then
    lstDetails.ColumnHeaders(3).Width = 1000
    lstDetails.ColumnHeaders(4).Width = 1000
        If cmbStrike.Text = "All" Then
   
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & "  AND CP='" & cmbCP.Text & "'"
            End If
        Else
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
            End If
        End If
    ElseIf cmbType.Text = "F" Then
        lstDetails.ColumnHeaders(3).Width = 0
        lstDetails.ColumnHeaders(4).Width = 0
        strQueryDT = strQueryDT & " AND left(CASHTYPE,2)='FU' "
        strQueryDTT = strQueryDTT & " AND left(CASHTYPE,2)='FU' "
    Else
        lstDetails.ColumnHeaders(3).Width = 0
        lstDetails.ColumnHeaders(4).Width = 0
        strQueryDT = strQueryDT & " AND CASHTYPE='EQ'"
        strQueryDTT = strQueryDTT & " AND CASHTYPE='EQ'"
    End If
    If cmbBuySell.Text = "BuySell" Then
        strQueryDT = strQueryDT & " And Intype IN('1','2')"
        strQueryDTT = strQueryDTT & " And Intype IN('1','2')"
    ElseIf cmbBuySell.Text = "Buy" Then
        strQueryDT = strQueryDT & " And Intype='1'"
        strQueryDTT = strQueryDTT & " And Intype='1'"
    ElseIf cmbBuySell.Text = "Sell" Then
        strQueryDT = strQueryDT & " And Intype='2'"
        strQueryDTT = strQueryDTT & " And Intype='2'"
    End If
    
    
    If chkDateWise.Value = vbChecked Then
        strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        strQueryDTT = strQueryDTT & " and Format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
    End If

    
    strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

     
    
    RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!Strike
            List.SubItems(3) = RS!CP
            List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(5) = RS!Tradeid
            If RS!InType = "1" Then
            List.SubItems(6) = "Buy"
            Else
            List.SubItems(6) = "Sell"
            End If
            'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(7) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open strQueryDTT, con, adOpenKeyset, adLockPessimistic
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(3) = RS!Tradeid
            If RS!InType = "1" Then
                List.SubItems(4) = "Buy"
            Else
                List.SubItems(4) = "Sell"
            End If
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(5) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
    RS.Close
    
    Set List = lstDetails.ListItems.Add(, , "Total")
    List.SubItems(1) = "Average"
    List.ForeColor = vbBlue
    List.ListSubItems(1).ForeColor = vbBlue
    
    Set List = lstDetails.ListItems.Add(, , units)
    If Val(units) = 0 Then
        List.SubItems(1) = Val(TRADED)
    Else
        If intRate = 2 Then
            List.SubItems(1) = Round(Val(TRADED) / Val(units), 4)
        Else
            List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
    End If
    List.ForeColor = vbBlue
    List.ListSubItems(1).ForeColor = vbBlue

End If
End Sub

Public Sub Show_Data_Last_backup()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell
lstDetails.ListItems.Clear

Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
Dim strExpiryDate As String
Dim strPrevExpiryDate As String
Dim cmd As ADODB.Command
Dim rsFuture As ADODB.Recordset
Dim strCloseOut As String
Dim rsCloseOut As ADODB.Recordset
Dim List As ListItem
Dim units As Currency
Dim TRADED As Currency

If blnIsCloseOut = True And cmbType.Text = "F" And chkDateWise.Value = vbUnchecked And intRate <> 2 Then
    lstDetails.ColumnHeaders(3).Width = 0
    lstDetails.ColumnHeaders(4).Width = 0
        
    strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolioShowLastBackup.SSTab2.Caption, Len(frmPortfolioShowLastBackup.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolioShowLastBackup.txtDate.Text), "DD/MM/YYYY") & "')"

    Set rsCloseOut = New ADODB.Recordset
    rsCloseOut.Open strCloseOut, gblConLastBackup, adOpenKeyset, adLockOptimistic
    If rsCloseOut.EOF = False Then
        strPrevExpiryDate = ""
        While Not rsCloseOut.EOF
            strExpiryDate = rsCloseOut!ExpiryDate
            
            If strPrevExpiryDate <> "" Then
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = gblConLastBackup
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOutInDateRange"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            Else
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = gblConLastBackup
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOut"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            End If
            
            strPrevExpiryDate = rsCloseOut!ExpiryDate
            rsCloseOut.MoveNext
        Wend
    End If
    rsCloseOut.Close
    Set rsCloseOut = Nothing
    
    
    
    
    
    If strExpiryDate <> "" Then
        
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDate(TradeDt)>CDate('" & Format(CDate(strExpiryDate), "DD/MM/YYYY") & "') And CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        strQueryDT = strQueryDT & " Order By Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        RS.Open strQueryDT, gblConLastBackup, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
        
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
    Else
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        strQueryDT = strQueryDT & " Order By  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        
        RS.Open strQueryDT, gblConLastBackup, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
    
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
    End If
    
Else
    If intRate = 2 Then
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        
        strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY')  and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"

    Else
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        
        strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                     "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    End If
    If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
        If cmbUserName.Text <> "" Then
            If cmbUserName.Text <> "All" Then
                strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                strQueryDTT = strQueryDTT & " and USERCD='" & mstrUserCode & "'"
            End If
        End If
    ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
        If cmbUserName.Text <> "" Then
            If cmbUserName.Text <> "All" Then
                strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                strQueryDTT = strQueryDTT & " and Field1='" & mstrUserCode & "'"
            End If
        End If
    End If
    
    If cmbType.Text = "O" Then
    lstDetails.ColumnHeaders(3).Width = 1000
    lstDetails.ColumnHeaders(4).Width = 1000
        If cmbStrike.Text = "All" Then
   
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & "  AND CP='" & cmbCP.Text & "'"
            End If
        Else
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
            End If
        End If
    ElseIf cmbType.Text = "F" Then
        lstDetails.ColumnHeaders(3).Width = 0
        lstDetails.ColumnHeaders(4).Width = 0
        strQueryDT = strQueryDT & " AND left(CASHTYPE,2)='FU' "
        strQueryDTT = strQueryDTT & " AND left(CASHTYPE,2)='FU' "
    Else
        lstDetails.ColumnHeaders(3).Width = 0
        lstDetails.ColumnHeaders(4).Width = 0
        strQueryDT = strQueryDT & " AND CASHTYPE='EQ'"
        strQueryDTT = strQueryDTT & " AND CASHTYPE='EQ'"
    End If
    If cmbBuySell.Text = "BuySell" Then
        strQueryDT = strQueryDT & " And Intype IN('1','2')"
        strQueryDTT = strQueryDTT & " And Intype IN('1','2')"
    ElseIf cmbBuySell.Text = "Buy" Then
        strQueryDT = strQueryDT & " And Intype='1'"
        strQueryDTT = strQueryDTT & " And Intype='1'"
    ElseIf cmbBuySell.Text = "Sell" Then
        strQueryDT = strQueryDT & " And Intype='2'"
        strQueryDTT = strQueryDTT & " And Intype='2'"
    End If
    
    
    If chkDateWise.Value = vbChecked Then
        strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        strQueryDTT = strQueryDTT & " and Format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
    End If

    
    strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

     
    
    RS.Open strQueryDT, gblConLastBackup, adOpenKeyset, adLockPessimistic
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!Strike
            List.SubItems(3) = RS!CP
            List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(5) = RS!Tradeid
            If RS!InType = "1" Then
            List.SubItems(6) = "Buy"
            Else
            List.SubItems(6) = "Sell"
            End If
            'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(7) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
    RS.Close
    
    RS.Open strQueryDTT, gblConLastBackup, adOpenKeyset, adLockPessimistic
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(3) = RS!Tradeid
            If RS!InType = "1" Then
                List.SubItems(4) = "Buy"
            Else
                List.SubItems(4) = "Sell"
            End If
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(5) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
    RS.Close
    
    Set List = lstDetails.ListItems.Add(, , "Total")
    List.SubItems(1) = "Average"
    List.ForeColor = vbBlue
    List.ListSubItems(1).ForeColor = vbBlue
    
    Set List = lstDetails.ListItems.Add(, , units)
    If Val(units) = 0 Then
        List.SubItems(1) = Val(TRADED)
    Else
        If intRate = 2 Then
            List.SubItems(1) = Round(Val(TRADED) / Val(units), 4)
        Else
            List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
    End If
    List.ForeColor = vbBlue
    List.ListSubItems(1).ForeColor = vbBlue

End If
End Sub





Public Sub SHOWDATA_All()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell

lstDetails.ListItems.Clear


Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
Dim strExpiryDate As String
Dim strPrevExpiryDate As String
Dim cmd As ADODB.Command
Dim rsFuture As ADODB.Recordset
Dim strCloseOut As String
Dim rsCloseOut As ADODB.Recordset
Dim List As ListItem
Dim units As Currency
Dim TRADED As Currency


'For Option
lstDetails.ColumnHeaders(3).Width = 1000
lstDetails.ColumnHeaders(4).Width = 1000

strQueryDT = " Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp " & _
           " From DummyTracker Where SCRIPT='" & txtScript.Text & "' AND CDate(expdt)=CDate('" & _
           Format(CDate(txtExpiry.Text), "DD/MM/YYYY") & "') "

If chkDateWise.Value = vbChecked Then
    strQueryDT = strQueryDT & " and CDATE(TradeDt)=Cdate('" & Format(dtpTradeDate.Value, "DD/MM/YYYY") & "')"
Else
    strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(CDate(txtTradeDate.Text), "DD/MM/YYYY") & "')"
End If

strQueryDT = strQueryDT & " And Left(Cashtype,2)='OP' "
If cmbStrike.Text <> "All" Then
    strQueryDT = strQueryDT & " And Strike=" & Val(cmbStrike.Text) & " "
End If

If cmbCP.Text <> "C/P" Then
    strQueryDT = strQueryDT & " And CP='" & cmbCP.Text & "' "
End If

If cmbType.Text = "Buy" Then
    strQueryDT = strQueryDT & " InType=1 "
ElseIf cmbType.Text = "Sell" Then
    strQueryDT = strQueryDT & " InType=2 "
End If

If cmbUserName.Text <> "All" Then
    strQueryDT = strQueryDT & " And UserCD='" & mstrUserCode & "'"
End If
If chkHandEntries.Value = vbChecked Then
    strQueryDT = strQueryDT & " And TradeID='0' "
End If
strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

If chkHandEntries.Value = vbUnchecked Then
    Set List = lstDetails.ListItems.Add(, , "Option")
    List.ForeColor = vbRed
End If
RS.Open strQueryDT, con, adOpenStatic, adLockReadOnly
If RS.EOF = False Then
    
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!Strike
        List.SubItems(3) = RS!CP
        List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(5) = RS!Tradeid
        If RS!InType = "1" Then
            List.SubItems(6) = "Buy"
        Else
            List.SubItems(6) = "Sell"
        End If
        'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(7) = RS!Field1
        End If
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
End If
RS.Close

'For Stock
strQueryDT = " Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp " & _
           " From DummyTracker Where SCRIPT='" & txtScript.Text & "' AND CDate(expdt)=CDate('" & _
           Format(CDate(txtExpiry.Text), "DD/MM/YYYY") & "') "

If chkDateWise.Value = vbChecked Then
    strQueryDT = strQueryDT & " and CDATE(TradeDt)=Cdate('" & Format(dtpTradeDate.Value, "DD/MM/YYYY") & "')"
Else
    strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(CDate(txtTradeDate.Text), "DD/MM/YYYY") & "')"
End If

strQueryDT = strQueryDT & " And Cashtype ='EQ' "


If cmbType.Text = "Buy" Then
    strQueryDT = strQueryDT & " InType=1 "
ElseIf cmbType.Text = "Sell" Then
    strQueryDT = strQueryDT & " InType=2 "
End If

If cmbUserName.Text <> "All" Then
    strQueryDT = strQueryDT & " And UserCD='" & mstrUserCode & "'"
End If
If chkHandEntries.Value = vbChecked Then
    strQueryDT = strQueryDT & " And TradeID='0' "
End If

strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

If chkHandEntries.Value = vbUnchecked Then
    Set List = lstDetails.ListItems.Add(, , "Cash")
    List.ForeColor = vbRed
End If
RS.Open strQueryDT, con, adOpenStatic, adLockReadOnly
If RS.EOF = False Then
    
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!Strike
        List.SubItems(3) = RS!CP
        List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(5) = RS!Tradeid
        If RS!InType = "1" Then
            List.SubItems(6) = "Buy"
        Else
            List.SubItems(6) = "Sell"
        End If
        'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(7) = RS!Field1
        End If
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
End If
RS.Close

'For Future
If blnIsCloseOut = True And chkDateWise.Value = vbUnchecked And intRate <> 2 Then
    If chkHandEntries.Value = vbUnchecked Then
        Set List = lstDetails.ListItems.Add(, , "Future")
        List.ForeColor = vbRed
    End If
    If blnPubIsPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsUserPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio_UserCode.SSTab2.Caption, Len(frmPortfolio_UserCode.SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio_UserCode.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsLiveBhavcopyOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmLiveBhavcopy.SSTab2.Caption, Len(frmLiveBhavcopy.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmLiveBhavcopyWithStrategy.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsLiveBhavcopyWithStrategyOpen = True Then  'Added by AAP on 09/11/2012
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmLiveBhavcopyWithStrategy.SSTab2.Caption, Len(frmLiveBhavcopyWithStrategy.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmLiveBhavcopyWithStrategy.txtDate.Text), "DD/MM/YYYY") & "')"
    End If
    Set rsCloseOut = New ADODB.Recordset
    rsCloseOut.Open strCloseOut, con, adOpenKeyset, adLockOptimistic
    If rsCloseOut.EOF = False Then
        strPrevExpiryDate = ""
        While Not rsCloseOut.EOF
            strExpiryDate = rsCloseOut!ExpiryDate
            
            If strPrevExpiryDate <> "" Then
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = con
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOutInDateRange"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            Else
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = con
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOut"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            End If
            
            strPrevExpiryDate = rsCloseOut!ExpiryDate
            rsCloseOut.MoveNext
        Wend
    End If
    rsCloseOut.Close
    Set rsCloseOut = Nothing
    
    
    
    
    
    If strExpiryDate <> "" Then
        
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDate(TradeDt)>CDate('" & Format(CDate(strExpiryDate), "DD/MM/YYYY") & "') And CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        If chkHandEntries.Value = vbChecked Then
            strQueryDT = strQueryDT & " And TradeID='0' "
        End If

        strQueryDT = strQueryDT & " Order By Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
        
'        Set List = lstDetails.ListItems.Add(, , "Total")
'        List.SubItems(1) = "Average"
'        List.ForeColor = vbBlue
'        List.ListSubItems(1).ForeColor = vbBlue
'
'        Set List = lstDetails.ListItems.Add(, , units)
'        If Val(units) = 0 Then
'            List.SubItems(1) = Val(TRADED)
'        Else
'           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
'        End If
'        List.ForeColor = vbBlue
'        List.ListSubItems(1).ForeColor = vbBlue
        
    Else
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        If chkHandEntries.Value = vbChecked Then
            strQueryDT = strQueryDT & " And TradeID='0' "
        End If

        
        strQueryDT = strQueryDT & " Order By  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        
        RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
    
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
    End If
Else
    strQueryDT = " Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp " & _
           " From DummyTracker Where SCRIPT='" & txtScript.Text & "' AND CDate(expdt)=CDate('" & _
           Format(CDate(txtExpiry.Text), "DD/MM/YYYY") & "') "

    If chkDateWise.Value = vbChecked Then
        strQueryDT = strQueryDT & " and CDATE(TradeDt)=Cdate('" & Format(dtpTradeDate.Value, "DD/MM/YYYY") & "')"
    Else
        strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(CDate(txtTradeDate.Text), "DD/MM/YYYY") & "')"
    End If
    
    strQueryDT = strQueryDT & " And Left( Cashtype,2) ='FU' "
    
    
    If cmbType.Text = "Buy" Then
        strQueryDT = strQueryDT & " InType=1 "
    ElseIf cmbType.Text = "Sell" Then
        strQueryDT = strQueryDT & " InType=2 "
    End If
    
    If cmbUserName.Text <> "All" Then
        strQueryDT = strQueryDT & " And UserCD='" & mstrUserCode & "'"
    End If
    If chkHandEntries.Value = vbChecked Then
        strQueryDT = strQueryDT & " And TradeID='0' "
    End If

    strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
    
    If chkHandEntries.Value = vbUnchecked Then
        Set List = lstDetails.ListItems.Add(, , "Future")
        List.ForeColor = vbRed
    End If
    RS.Open strQueryDT, con, adOpenStatic, adLockReadOnly
    If RS.EOF = False Then
        
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!Strike
            List.SubItems(3) = RS!CP
            List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(5) = RS!Tradeid
            If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
            Else
                List.SubItems(6) = "Sell"
            End If
            'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(7) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
    End If
    RS.Close
End If


End Sub

Public Sub SHOWDATA_All_Last_Backup()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell

lstDetails.ListItems.Clear


Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
Dim strExpiryDate As String
Dim strPrevExpiryDate As String
Dim cmd As ADODB.Command
Dim rsFuture As ADODB.Recordset
Dim strCloseOut As String
Dim rsCloseOut As ADODB.Recordset
Dim List As ListItem
Dim units As Currency
Dim TRADED As Currency


'For Option
lstDetails.ColumnHeaders(3).Width = 1000
lstDetails.ColumnHeaders(4).Width = 1000

strQueryDT = " Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp " & _
           " From DummyTracker Where SCRIPT='" & txtScript.Text & "' AND CDate(expdt)=CDate('" & _
           Format(CDate(txtExpiry.Text), "DD/MM/YYYY") & "') "

If chkDateWise.Value = vbChecked Then
    strQueryDT = strQueryDT & " and CDATE(TradeDt)=Cdate('" & Format(dtpTradeDate.Value, "DD/MM/YYYY") & "')"
Else
    strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(CDate(txtTradeDate.Text), "DD/MM/YYYY") & "')"
End If

strQueryDT = strQueryDT & " And Left(Cashtype,2)='OP' "
If cmbStrike.Text <> "All" Then
    strQueryDT = strQueryDT & " And Strike=" & Val(cmbStrike.Text) & " "
End If

If cmbCP.Text <> "C/P" Then
    strQueryDT = strQueryDT & " And CP='" & cmbCP.Text & "' "
End If

If cmbType.Text = "Buy" Then
    strQueryDT = strQueryDT & " InType=1 "
ElseIf cmbType.Text = "Sell" Then
    strQueryDT = strQueryDT & " InType=2 "
End If

If cmbUserName.Text <> "All" Then
    strQueryDT = strQueryDT & " And UserCD='" & mstrUserCode & "'"
End If
If chkHandEntries.Value = vbChecked Then
    strQueryDT = strQueryDT & " And TradeID='0' "
End If
strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

If chkHandEntries.Value = vbUnchecked Then
    Set List = lstDetails.ListItems.Add(, , "Option")
    List.ForeColor = vbRed
End If
RS.Open strQueryDT, gblConLastBackup, adOpenStatic, adLockReadOnly
If RS.EOF = False Then
    
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!Strike
        List.SubItems(3) = RS!CP
        List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(5) = RS!Tradeid
        If RS!InType = "1" Then
            List.SubItems(6) = "Buy"
        Else
            List.SubItems(6) = "Sell"
        End If
        'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(7) = RS!Field1
        End If
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
End If
RS.Close

'For Stock
strQueryDT = " Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp " & _
           " From DummyTracker Where SCRIPT='" & txtScript.Text & "' AND CDate(expdt)=CDate('" & _
           Format(CDate(txtExpiry.Text), "DD/MM/YYYY") & "') "

If chkDateWise.Value = vbChecked Then
    strQueryDT = strQueryDT & " and CDATE(TradeDt)=Cdate('" & Format(dtpTradeDate.Value, "DD/MM/YYYY") & "')"
Else
    strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(CDate(txtTradeDate.Text), "DD/MM/YYYY") & "')"
End If

strQueryDT = strQueryDT & " And Cashtype ='EQ' "


If cmbType.Text = "Buy" Then
    strQueryDT = strQueryDT & " InType=1 "
ElseIf cmbType.Text = "Sell" Then
    strQueryDT = strQueryDT & " InType=2 "
End If

If cmbUserName.Text <> "All" Then
    strQueryDT = strQueryDT & " And UserCD='" & mstrUserCode & "'"
End If
If chkHandEntries.Value = vbChecked Then
    strQueryDT = strQueryDT & " And TradeID='0' "
End If

strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

If chkHandEntries.Value = vbUnchecked Then
    Set List = lstDetails.ListItems.Add(, , "Cash")
    List.ForeColor = vbRed
End If
RS.Open strQueryDT, gblConLastBackup, adOpenStatic, adLockReadOnly
If RS.EOF = False Then
    
    Do Until RS.EOF
        Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!Strike
        List.SubItems(3) = RS!CP
        List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(5) = RS!Tradeid
        If RS!InType = "1" Then
            List.SubItems(6) = "Buy"
        Else
            List.SubItems(6) = "Sell"
        End If
        'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(7) = RS!Field1
        End If
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
        RS.MoveNext
    Loop
End If
RS.Close

'For Future
If blnIsCloseOut = True And chkDateWise.Value = vbUnchecked And intRate <> 2 Then
    If chkHandEntries.Value = vbUnchecked Then
        Set List = lstDetails.ListItems.Add(, , "Future")
        List.ForeColor = vbRed
    End If
    If blnPubIsPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsUserPortfolioOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmPortfolio_UserCode.SSTab2.Caption, Len(frmPortfolio_UserCode.SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmPortfolio_UserCode.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsLiveBhavcopyOpen = True Then
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmLiveBhavcopy.SSTab2.Caption, Len(frmLiveBhavcopy.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmLiveBhavcopy.txtDate.Text), "DD/MM/YYYY") & "')"
    ElseIf blnPubIsLiveBhavcopyWithStrategyOpen = True Then   'Added by AAP on 09/11/2012
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(frmLiveBhavcopyWithStrategy.SSTab2.Caption, Len(frmLiveBhavcopyWithStrategy.SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(frmLiveBhavcopyWithStrategy.txtDate.Text), "DD/MM/YYYY") & "')"
    End If
    Set rsCloseOut = New ADODB.Recordset
    rsCloseOut.Open strCloseOut, gblConLastBackup, adOpenKeyset, adLockOptimistic
    If rsCloseOut.EOF = False Then
        strPrevExpiryDate = ""
        While Not rsCloseOut.EOF
            strExpiryDate = rsCloseOut!ExpiryDate
            
            If strPrevExpiryDate <> "" Then
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = gblConLastBackup
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOutInDateRange"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            Else
                Set cmd = New ADODB.Command
                cmd.ActiveConnection = gblConLastBackup
                cmd.CommandType = adCmdStoredProc
                If cmbUserName.Text = "All" Then
                    cmd.CommandText = "QryFuturesForCloseOut"
                Else
                    cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                End If
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpiry.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, txtScript.Text)
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                If cmbUserName.Text <> "All" Then
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, mstrUserCode)
                End If
                Set rsFuture = New ADODB.Recordset
                Set rsFuture = cmd.Execute
                If IsNull(rsFuture!OPTIONPQTY) = False Then
                    If cmbBuySell.Text = "Buy" Then
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    ElseIf cmbBuySell.Text = "Sell" Then
                        If Val(rsFuture!OPTIONPQTY) <= 0 Then
                            Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))
                            
                            List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                            List.SubItems(2) = 0
                            List.SubItems(3) = ""
                            List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                            List.SubItems(5) = "CO" ' RS!tradeid
                            If Val(rsFuture!OPTIONPQTY) > 0 Then
                                List.SubItems(6) = "Buy"
                            Else
                                List.SubItems(6) = "Sell"
                            End If
                            List.SubItems(7) = cmbUserName.Text
                            
                            units = Val(units) + Val(rsFuture!OPTIONPQTY)
                            TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                            
                            List.ForeColor = vbRed
                            List.ListSubItems(1).ForeColor = vbRed
                            List.ListSubItems(2).ForeColor = vbRed
                            List.ListSubItems(3).ForeColor = vbRed
                            List.ListSubItems(4).ForeColor = vbRed
                            List.ListSubItems(5).ForeColor = vbRed
                            List.ListSubItems(6).ForeColor = vbRed
                            List.ListSubItems(7).ForeColor = vbRed

                        End If
                    Else
                        Set List = lstDetails.ListItems.Add(, , Val(rsFuture!OPTIONPQTY))

                        List.SubItems(1) = rsCloseOut!LastRate ' RS!TRADED
                        List.SubItems(2) = 0
                        List.SubItems(3) = ""
                        List.SubItems(4) = strExpiryDate & " " & rsCloseOut!SaveTime ' RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                        List.SubItems(5) = "CO" ' RS!tradeid
                        If Val(rsFuture!OPTIONPQTY) > 0 Then
                            List.SubItems(6) = "Buy"
                        Else
                            List.SubItems(6) = "Sell"
                        End If
                        List.SubItems(7) = cmbUserName.Text
                        
                        units = Val(units) + Val(rsFuture!OPTIONPQTY)
                        TRADED = Val(TRADED) + (Val(rsFuture!OPTIONPQTY) * rsCloseOut!LastRate)
                        
                        List.ForeColor = vbRed
                        List.ListSubItems(1).ForeColor = vbRed
                        List.ListSubItems(2).ForeColor = vbRed
                        List.ListSubItems(3).ForeColor = vbRed
                        List.ListSubItems(4).ForeColor = vbRed
                        List.ListSubItems(5).ForeColor = vbRed
                        List.ListSubItems(6).ForeColor = vbRed
                        List.ListSubItems(7).ForeColor = vbRed
                    End If
                End If
                rsFuture.Close
                Set rsFuture = Nothing
                Set cmd.ActiveConnection = Nothing
                Set cmd = Nothing
            End If
            
            strPrevExpiryDate = rsCloseOut!ExpiryDate
            rsCloseOut.MoveNext
        Wend
    End If
    rsCloseOut.Close
    Set rsCloseOut = Nothing
    
    
    
    
    
    If strExpiryDate <> "" Then
        
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDate(TradeDt)>CDate('" & Format(CDate(strExpiryDate), "DD/MM/YYYY") & "') And CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        If chkHandEntries.Value = vbChecked Then
            strQueryDT = strQueryDT & " And TradeID='0' "
        End If

        strQueryDT = strQueryDT & " Order By Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        RS.Open strQueryDT, gblConLastBackup, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
        
'        Set List = lstDetails.ListItems.Add(, , "Total")
'        List.SubItems(1) = "Average"
'        List.ForeColor = vbBlue
'        List.ListSubItems(1).ForeColor = vbBlue
'
'        Set List = lstDetails.ListItems.Add(, , units)
'        If Val(units) = 0 Then
'            List.SubItems(1) = Val(TRADED)
'        Else
'           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
'        End If
'        List.ForeColor = vbBlue
'        List.ListSubItems(1).ForeColor = vbBlue
        
    Else
        strQueryDT = "Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') " '
        If chkDateWise.Value = vbChecked Then
            strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
        Else
            strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
        End If
        If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
                End If
            End If
        ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
            If cmbUserName.Text <> "" Then
                If cmbUserName.Text <> "All" Then
                    strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
                End If
            End If
        End If
        
        
        strQueryDT = strQueryDT & " AND CASHTYPE IN ('FUTIDX','FUTSTK')"
        
        If cmbBuySell.Text = "BuySell" Then
            strQueryDT = strQueryDT & " And Intype IN('1','2')"
        ElseIf cmbBuySell.Text = "Buy" Then
            strQueryDT = strQueryDT & " And Intype='1'"
        ElseIf cmbBuySell.Text = "Sell" Then
            strQueryDT = strQueryDT & " And Intype='2'"
        End If
        
        If chkHandEntries.Value = vbChecked Then
            strQueryDT = strQueryDT & " And TradeID='0' "
        End If

        
        strQueryDT = strQueryDT & " Order By  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
        
        RS.Open strQueryDT, gblConLastBackup, adOpenKeyset, adLockPessimistic
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
                List.SubItems(1) = RS!TRADED
                List.SubItems(2) = 0
                List.SubItems(3) = ""
                List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
                List.SubItems(5) = RS!Tradeid
                If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
                Else
                List.SubItems(6) = "Sell"
                End If
                'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
                If txtUserNameOrCode.Text = "UC" Then
                    List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
                ElseIf txtUserNameOrCode.Text = "UN" Then
                    List.SubItems(7) = RS!Field1
                End If
                List.Tag = RS!Tradeid
                units = Val(units) + Val(RS!units)
                TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
        RS.Close
    
        Set List = lstDetails.ListItems.Add(, , "Total")
        List.SubItems(1) = "Average"
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
        
        Set List = lstDetails.ListItems.Add(, , units)
        If Val(units) = 0 Then
            List.SubItems(1) = Val(TRADED)
        Else
           List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
        End If
        List.ForeColor = vbBlue
        List.ListSubItems(1).ForeColor = vbBlue
    End If
Else
    strQueryDT = " Select *, Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp " & _
           " From DummyTracker Where SCRIPT='" & txtScript.Text & "' AND CDate(expdt)=CDate('" & _
           Format(CDate(txtExpiry.Text), "DD/MM/YYYY") & "') "

    If chkDateWise.Value = vbChecked Then
        strQueryDT = strQueryDT & " and CDATE(TradeDt)=Cdate('" & Format(dtpTradeDate.Value, "DD/MM/YYYY") & "')"
    Else
        strQueryDT = strQueryDT & " and CDATE(TradeDt)<=Cdate('" & Format(CDate(txtTradeDate.Text), "DD/MM/YYYY") & "')"
    End If
    
    strQueryDT = strQueryDT & " And Left( Cashtype,2) ='FU' "
    
    
    If cmbType.Text = "Buy" Then
        strQueryDT = strQueryDT & " InType=1 "
    ElseIf cmbType.Text = "Sell" Then
        strQueryDT = strQueryDT & " InType=2 "
    End If
    
    If cmbUserName.Text <> "All" Then
        strQueryDT = strQueryDT & " And UserCD='" & mstrUserCode & "'"
    End If
    If chkHandEntries.Value = vbChecked Then
        strQueryDT = strQueryDT & " And TradeID='0' "
    End If

    strQueryDT = strQueryDT & " Order by  Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"
    
    If chkHandEntries.Value = vbUnchecked Then
        Set List = lstDetails.ListItems.Add(, , "Future")
        List.ForeColor = vbRed
    End If
    RS.Open strQueryDT, gblConLastBackup, adOpenStatic, adLockReadOnly
    If RS.EOF = False Then
        
        Do Until RS.EOF
            Set List = lstDetails.ListItems.Add(, , RS!units)
            List.SubItems(1) = RS!TRADED
            List.SubItems(2) = RS!Strike
            List.SubItems(3) = RS!CP
            List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
            List.SubItems(5) = RS!Tradeid
            If RS!InType = "1" Then
                List.SubItems(6) = "Buy"
            Else
                List.SubItems(6) = "Sell"
            End If
            'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
            If txtUserNameOrCode.Text = "UC" Then
                List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
            ElseIf txtUserNameOrCode.Text = "UN" Then
                List.SubItems(7) = RS!Field1
            End If
            List.Tag = RS!Tradeid
            units = Val(units) + Val(RS!units)
            TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
            RS.MoveNext
        Loop
    End If
    RS.Close
End If


End Sub














Public Sub SHOWDATA2()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell
lstDetails.ListItems.Clear

Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
'strQueryDT = "Select * From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
'             "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "') and TradeID='0'"
'
'strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
'             "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "') and TradeID='0'"
If intRate = 2 Then
    strQueryDT = "Select *,Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    
    strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY')  and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"

Else
    strQueryDT = "Select *,Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    
    strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
End If
If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
    If cmbUserName.Text <> "" Then
        If cmbUserName.Text <> "All" Then
            strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
            strQueryDTT = strQueryDTT & " and USERCD='" & mstrUserCode & "'"
        End If
    End If
ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
    If cmbUserName.Text <> "" Then
        If cmbUserName.Text <> "All" Then
            strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
            strQueryDTT = strQueryDTT & " and Field1='" & mstrUserCode & "'"
        End If
    End If
End If

If cmbType.Text = "O" Then
    lstDetails.ColumnHeaders(3).Width = 1000
    lstDetails.ColumnHeaders(4).Width = 1000
        If cmbStrike.Text = "All" Then
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & "  AND CP='" & cmbCP.Text & "'"
            End If
        Else
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
            End If
        End If
ElseIf cmbType.Text = "F" Then
    lstDetails.ColumnHeaders(3).Width = 0
    lstDetails.ColumnHeaders(4).Width = 0
    
    strQueryDT = strQueryDT & " AND Left(CASHTYPE,2)='FU' "
    strQueryDTT = strQueryDTT & " AND Left(CASHTYPE,2)='FU' "
Else
    lstDetails.ColumnHeaders(3).Width = 0
    lstDetails.ColumnHeaders(4).Width = 0
    
    strQueryDT = strQueryDT & " AND CASHTYPE='EQ'"
    strQueryDTT = strQueryDTT & " AND CASHTYPE='EQ'"
End If
If cmbBuySell.Text = "BuySell" Then
    strQueryDT = strQueryDT & " And Intype IN('1','2')"
    strQueryDTT = strQueryDTT & " And Intype IN('1','2')"
ElseIf cmbBuySell.Text = "Buy" Then
    strQueryDT = strQueryDT & " And Intype='1'"
    strQueryDTT = strQueryDTT & " And Intype='1'"
ElseIf cmbBuySell.Text = "Sell" Then
    strQueryDT = strQueryDT & " And Intype='2'"
    strQueryDTT = strQueryDTT & " And Intype='2'"
End If


If chkDateWise.Value = vbChecked Then
    strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
    strQueryDTT = strQueryDTT & " and Format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
End If

strQueryDT = strQueryDT & " And TradeID='0'"
strQueryDTT = strQueryDTT & " And TradeID='0'"

'If cmbType.Text = "O" Then
'    strQueryDT = strQueryDT & " Order by Strike,CP"
'End If
strQueryDT = strQueryDT & " Order By Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

RS.Open strQueryDT, con, adOpenKeyset, adLockPessimistic
Do Until RS.EOF
    Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!Strike
        List.SubItems(3) = RS!CP
        List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(5) = RS!Tradeid
        
       
        If RS!InType = "1" Then
        List.SubItems(6) = "Buy"
        Else
        List.SubItems(6) = "Sell"
        End If
        'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(7) = RS!Field1
        End If
        List.SubItems(8) = RS!SRNO
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
    RS.MoveNext
Loop
RS.Close

RS.Open strQueryDTT, con, adOpenKeyset, adLockPessimistic
Do Until RS.EOF
    Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(3) = RS!Tradeid
        If RS!InType = "1" Then
            List.SubItems(4) = "Buy"
        Else
            List.SubItems(4) = "Sell"
        End If
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(5) = RS!Field1
        End If
        List.SubItems(6) = RS!SRNO
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
    RS.MoveNext
Loop
RS.Close


'    Set List = lstDetails.ListItems.Add(, , "Total")
'    List.SubItems(1) = "Average"
'
'    List.ForeColor = vbBlue
'    List.ListSubItems(1).ForeColor = vbBlue
'
'    Set List = lstDetails.ListItems.Add(, , units)
'If Val(units) = 0 Then
'    List.SubItems(1) = Val(TRADED)
'Else
'   List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
'End If
'List.ForeColor = vbBlue
'List.ListSubItems(1).ForeColor = vbBlue

End Sub



Public Sub SHOWDATA2_Last_Backup()
'Added By: Pramisha
'Date: 18/02/2010
'Description: Code for All in UserName/UserCode andm BuySell
lstDetails.ListItems.Clear

Dim strQueryDT As String 'Query Strring for DummyTracker
Dim strQueryDTT As String 'Query Strring for DummyTrackerTemp
'strQueryDT = "Select * From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
'             "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "') and TradeID='0'"
'
'strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
'             "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "') and TradeID='0'"
If intRate = 2 Then
    strQueryDT = "Select *,Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    
    strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND Format( EXPDT,'MM/YYYY')=Format('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "','MM/YYYY')  and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"

Else
    strQueryDT = "Select *,Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) As TradeTimeStamp From DummyTracker Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
    
    strQueryDTT = "Select * From DummyTrackerTemp Where SCRIPT='" & Trim$(txtScript.Text) & _
                 "' AND CDate(expdt)=CDate('" & Format(txtExpiry.Text, "dd/MM/yyyy") & "') and CDATE(TradeDt)<=Cdate('" & Format(txtTradeDate.Text, "dd/MM/yyyy") & "')"
End If
If txtUserNameOrCode.Text = "UC" Then 'If UserCodeWise
    If cmbUserName.Text <> "" Then
        If cmbUserName.Text <> "All" Then
            strQueryDT = strQueryDT & " and USERCD='" & mstrUserCode & "'"
            strQueryDTT = strQueryDTT & " and USERCD='" & mstrUserCode & "'"
        End If
    End If
ElseIf txtUserNameOrCode.Text = "UN" Then 'If UserNameWise
    If cmbUserName.Text <> "" Then
        If cmbUserName.Text <> "All" Then
            strQueryDT = strQueryDT & " and Field1='" & mstrUserCode & "'"
            strQueryDTT = strQueryDTT & " and Field1='" & mstrUserCode & "'"
        End If
    End If
End If

If cmbType.Text = "O" Then
    lstDetails.ColumnHeaders(3).Width = 1000
    lstDetails.ColumnHeaders(4).Width = 1000
        If cmbStrike.Text = "All" Then
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & "  AND CP='" & cmbCP.Text & "'"
            End If
        Else
            If cmbCP.Text = "C/P" Then
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP IN('C','P')"
            Else
                strQueryDT = strQueryDT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
                strQueryDTT = strQueryDTT & " AND STRIKE=" & Val(cmbStrike.Text) & " AND CP='" & cmbCP.Text & "'"
            End If
        End If
ElseIf cmbType.Text = "F" Then
    lstDetails.ColumnHeaders(3).Width = 0
    lstDetails.ColumnHeaders(4).Width = 0
    
    strQueryDT = strQueryDT & " AND Left(CASHTYPE,2)='FU' "
    strQueryDTT = strQueryDTT & " AND Left(CASHTYPE,2)='FU' "
Else
    lstDetails.ColumnHeaders(3).Width = 0
    lstDetails.ColumnHeaders(4).Width = 0
    
    strQueryDT = strQueryDT & " AND CASHTYPE='EQ'"
    strQueryDTT = strQueryDTT & " AND CASHTYPE='EQ'"
End If
If cmbBuySell.Text = "BuySell" Then
    strQueryDT = strQueryDT & " And Intype IN('1','2')"
    strQueryDTT = strQueryDTT & " And Intype IN('1','2')"
ElseIf cmbBuySell.Text = "Buy" Then
    strQueryDT = strQueryDT & " And Intype='1'"
    strQueryDTT = strQueryDTT & " And Intype='1'"
ElseIf cmbBuySell.Text = "Sell" Then
    strQueryDT = strQueryDT & " And Intype='2'"
    strQueryDTT = strQueryDTT & " And Intype='2'"
End If


If chkDateWise.Value = vbChecked Then
    strQueryDT = strQueryDT & " and format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
    strQueryDTT = strQueryDTT & " and Format(cdate(TradeDT),'DD/MM/YYYY')='" & CDate(Format(dtpTradeDate.Value, "DD/MM/YYYY")) & "'"
End If

strQueryDT = strQueryDT & " And TradeID='0'"
strQueryDTT = strQueryDTT & " And TradeID='0'"

'If cmbType.Text = "O" Then
'    strQueryDT = strQueryDT & " Order by Strike,CP"
'End If
strQueryDT = strQueryDT & " Order By Cdate( Cstr(TradeDT) + ' ' + IIf ( IsNull (Field5)=True, Format('09:00:00','hh:mm:ss') , Field5)) Desc"

RS.Open strQueryDT, gblConLastBackup, adOpenKeyset, adLockPessimistic
Do Until RS.EOF
    Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!Strike
        List.SubItems(3) = RS!CP
        List.SubItems(4) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(5) = RS!Tradeid
        
       
        If RS!InType = "1" Then
        List.SubItems(6) = "Buy"
        Else
        List.SubItems(6) = "Sell"
        End If
        'List.SubItems(5) = RS!USERCD ' Left(RS!USERCD, Len(RS!USERCD) - 6)
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(7) = RS!USERCD & "=" & RetrieveUserName(RS!USERCD)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(7) = RS!Field1
        End If
        List.SubItems(8) = RS!SRNO
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
    RS.MoveNext
Loop
RS.Close

RS.Open strQueryDTT, gblConLastBackup, adOpenKeyset, adLockPessimistic
Do Until RS.EOF
    Set List = lstDetails.ListItems.Add(, , RS!units)
        List.SubItems(1) = RS!TRADED
        List.SubItems(2) = RS!TRADEDT & " " & IIf(IsNull(RS!Field5) = True, "", RS!Field5)
        List.SubItems(3) = RS!Tradeid
        If RS!InType = "1" Then
            List.SubItems(4) = "Buy"
        Else
            List.SubItems(4) = "Sell"
        End If
        If txtUserNameOrCode.Text = "UC" Then
            List.SubItems(5) = RS!USERCD 'Left(RS!USERCD, Len(RS!USERCD) - 6)
        ElseIf txtUserNameOrCode.Text = "UN" Then
            List.SubItems(5) = RS!Field1
        End If
        List.SubItems(6) = RS!SRNO
        List.Tag = RS!Tradeid
        units = Val(units) + Val(RS!units)
        TRADED = Val(TRADED) + (Val(RS!units) * Val(RS!TRADED))
    RS.MoveNext
Loop
RS.Close


'    Set List = lstDetails.ListItems.Add(, , "Total")
'    List.SubItems(1) = "Average"
'
'    List.ForeColor = vbBlue
'    List.ListSubItems(1).ForeColor = vbBlue
'
'    Set List = lstDetails.ListItems.Add(, , units)
'If Val(units) = 0 Then
'    List.SubItems(1) = Val(TRADED)
'Else
'   List.SubItems(1) = Round(Val(TRADED) / Val(units), 2)
'End If
'List.ForeColor = vbBlue
'List.ListSubItems(1).ForeColor = vbBlue

End Sub




'Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
''If blnPubIsPortfolioOpen = True Then
''    frmPortfolio.txtRate.SetFocus
''End If
'End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo EH
'blnIsHandEntires = True

'Call SetTabs
If blnPubIsPortfolioOpen = True Then
    Call frmPortfolio.ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call frmPortfolio.FillStrike
    Call frmPortfolio.CalculateSummary
    
End If

If blnPubIsLiveBhavcopyOpen = True Then
    Call frmLiveBhavcopy.ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call frmLiveBhavcopy.FillStrike
    Call frmLiveBhavcopy.CalculateSummary
End If

'Added by AAP on 09/11/2012
'-------------------------------------------------------------------------------------------------
If blnPubIsLiveBhavcopyWithStrategyOpen = True Then
    Call frmLiveBhavcopyWithStrategy.ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call frmLiveBhavcopyWithStrategy.FillStrike
    Call frmLiveBhavcopyWithStrategy.CalculateSummary
End If
'-------------------------------------------------------------------------------------------------

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Public Sub FillStrike()
Dim RS As ADODB.Recordset
Set RS = New ADODB.Recordset
Dim lvItem As ListItem
Dim intUnits As Integer

If cmbStrike.Text = "All" Then
    If blnPubIsPortfolioOpen = True Then
        For intUnits = 1 To frmPortfolio.lstDetails1.ListItems.count
            txtExpiry.Text = frmPortfolio.txtExpDt.Text
            txtScript.Text = Trim$(Left(frmPortfolio.tbsPortfolio.SelectedItem, Len(frmPortfolio.tbsPortfolio.SelectedItem) - 7))
            txtTradeDate.Text = frmPortfolio.txtDate.Text
            RS.Open "SELECT DISTINCT(Strike),CP FROM DummyTracker Where Script='" & txtScript.Text & "' and CDATE(ExpDt)=CDATE('" & txtExpiry.Text & "') and Strike<>0", con, adOpenForwardOnly
            If RS.EOF = False Then
                While Not RS.EOF
                    lstDetails.ListItems(intUnits).SubItems(2) = RS!Strike 'frmPortfolio.lstDetails1.ListItems(intUnits)
                    lstDetails.ListItems(intUnits).SubItems(3) = RS!CP 'frmPortfolio.lstDetails1.ListItems(intUnits).SubItems(1)
                    RS.MoveNext
                Wend
            End If
        Next
    End If
End If
End Sub
