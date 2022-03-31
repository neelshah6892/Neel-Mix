VERSION 5.00
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmSelectedPortfolioReport 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Portfolio Report"
   ClientHeight    =   5370
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4485
   Icon            =   "frmSelectedPortfolioReport.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5370
   ScaleWidth      =   4485
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   135
      Top             =   5145
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "Close"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   3165
      TabIndex        =   9
      Top             =   4875
      Width           =   1155
   End
   Begin VB.CommandButton cmdPrint 
      Caption         =   "Print"
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
      Height          =   420
      Left            =   1965
      TabIndex        =   8
      Top             =   4875
      Width           =   1155
   End
   Begin VB.Frame Frame3 
      Caption         =   "Expiry Date Selection"
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
      Height          =   1860
      Left            =   165
      TabIndex        =   12
      Top             =   2955
      Width           =   4185
      Begin VB.Frame fraDateRange 
         Height          =   675
         Left            =   105
         TabIndex        =   13
         Top             =   1065
         Width           =   4005
         Begin VB.ComboBox cboExpiryDate 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   1470
            Style           =   2  'Dropdown List
            TabIndex        =   7
            Top             =   210
            Width           =   2445
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Expiry Date"
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
            Left            =   135
            TabIndex        =   14
            Top             =   210
            Width           =   1260
         End
      End
      Begin VB.OptionButton optSelectDateRange 
         Caption         =   "Select Expiry Date"
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
         Left            =   120
         TabIndex        =   6
         Top             =   720
         Width           =   2700
      End
      Begin VB.OptionButton optShowAll 
         Caption         =   "Show All"
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
         Left            =   135
         TabIndex        =   5
         Top             =   345
         Width           =   2700
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "User Code Selection"
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
      Height          =   1740
      Left            =   150
      TabIndex        =   11
      Top             =   1170
      Width           =   4215
      Begin VB.Frame fraUserCode 
         Height          =   585
         Left            =   105
         TabIndex        =   15
         Top             =   1065
         Width           =   4050
         Begin VB.ComboBox cboUserCode 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   1320
            Style           =   2  'Dropdown List
            TabIndex        =   4
            Top             =   165
            Width           =   2640
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "User Code"
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
            Left            =   75
            TabIndex        =   16
            Top             =   180
            Width           =   1110
         End
      End
      Begin VB.OptionButton optSelectedUserCode 
         Caption         =   "Selected User Code"
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
         Left            =   150
         TabIndex        =   3
         Top             =   705
         Width           =   2430
      End
      Begin VB.OptionButton optAllUserCode 
         Caption         =   "All User Code"
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
         Left            =   150
         TabIndex        =   2
         Top             =   330
         Width           =   2700
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1035
      Left            =   120
      TabIndex        =   10
      Top             =   45
      Width           =   4260
      Begin VB.OptionButton optSelectedPortfolio 
         Caption         =   "Selected Portfolio"
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
         Left            =   195
         TabIndex        =   1
         Top             =   585
         Width           =   2430
      End
      Begin VB.OptionButton optAllPortfolio 
         Caption         =   "All Portfolio"
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
         Left            =   195
         TabIndex        =   0
         Top             =   210
         Width           =   1725
      End
   End
End
Attribute VB_Name = "frmSelectedPortfolioReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClose_Click()
Unload Me
End Sub

Private Sub cmdPrint_Click()
Dim strSelectionFormula As String

CrystalReport1.Reset
'CrystalReport1.CONNECT = "Dsn=" & strPubCurrentDSNName
'CrystalReport1.DataFiles(0) = App.Path & "\Delta.mdb"
CrystalReport1.ReportSource = crptReport

CrystalReport1.ReportFileName = App.Path & "\DeltaSoftRm Reports\rptAllPortFolio.rpt"


If optSelectedPortfolio.Value = True Then
    'CrystalReport1.ReplaceSelectionFormula ("{VwrptAccount.ReceiptDate} >= Date('" & Format(DTPFromDate.Value, "MM/DD/YYYY") & "') and {VwrptAccount.ReceiptDate} <= Date('" & Format(DTPToDate.Value, "MM/DD/YYYY") & "') and {VwrptAccount.BookTypeID} = " & lngBookType & " and {VwrptAccount.PrefixBookNo}' ")
    strSelectionFormula = "{RepSummarySheet.Description}='" & Left(frmPortfolio.SSTab2.Caption, Len(frmPortfolio.SSTab2.Caption) - 1) & "'"
End If

If optSelectedUserCode.Value = True Then
    If cboUserCode.Text <> "" Then
        If cboUserCode.Text = "ADMIN" Then
            If strSelectionFormula <> "" Then
                strSelectionFormula = strSelectionFormula & " and  Isnull({RepSummarySheet.UserCD}) "
            Else
                strSelectionFormula = " Isnull({RepSummarySheet.UserCD}) "
            End If
        Else
            If strSelectionFormula <> "" Then
                strSelectionFormula = strSelectionFormula & " and  {RepSummarySheet.UserCD}='" & cboUserCode.Text & "'"
            Else
                strSelectionFormula = " {RepSummarySheet.UserCD}='" & cboUserCode.Text & "'"
            End If
        End If
    End If
End If

If optSelectDateRange.Value = True Then
    If cboExpiryDate.Text <> "" Then
        If strSelectionFormula <> "" Then
            strSelectionFormula = strSelectionFormula & " and   {RepFullSheetM.ExpDt}='" & cboExpiryDate.Text & "'"
        Else
            strSelectionFormula = " {RepFullSheetM.ExpDt}='" & cboExpiryDate.Text & "'" ' and  Cdate({RepFullSheetM.ExpDt})<=#" & Format(dtpTo.Value, "dd/MM/yyyy") & "#"
        End If
    End If
End If


'    CrystalReport1.Formulas(1) = ""
'    CrystalReport1.Formulas(1) = "PartyID='" & Trim$(txtPartyID.Text) & "'"
'    CrystalReport1.Formulas(2) = ""
'    CrystalReport1.Formulas(2) = "PartyName='" & Trim$(txtPartyName.Text) & "'"
'    CrystalReport1.Formulas(3) = ""
'    CrystalReport1.Formulas(3) = "LoanAmount='" & Trim$(txtLoanAmount.Text) & "'"
'    CrystalReport1.Formulas(4) = ""
'    CrystalReport1.Formulas(4) = "InstallmentAmount='" & Trim$(txtInstallmentAmount.Text) & "'"
'    CrystalReport1.Formulas(5) = ""
'    CrystalReport1.Formulas(5) = "LoanDate='" & Trim$(txtLoanDate.Text) & "'"
'    CrystalReport1.Formulas(6) = ""
'    CrystalReport1.Formulas(6) = "RemainingAmount='" & Trim$(txtRemainingAmount.Text) & "'"
'    CrystalReport1.Formulas(7) = ""
'    CrystalReport1.Formulas(7) = "TotalFine='" & Trim$(txtTotalFine.Text) & "'"
'    rptSelePort.Database.Tables.Item(1).SetLogOnInfo strPubCurrentDSNName, App.Path & "\Delta.mdb", "", "delta"
'    rptSelePort.Database.Verify

If strSelectionFormula <> "" Then
    CrystalReport1.ReplaceSelectionFormula (strSelectionFormula)
End If
'CrystalReport1.RetrieveLogonInfo
CrystalReport1.WindowState = crptMaximized
CrystalReport1.PrintReport
CrystalReport1.PageZoom (100)
End Sub

Private Sub Form_Load()
optAllPortfolio.Value = True
optAllUserCode.Value = True
optShowAll.Value = True
fraUserCode.Enabled = False
fraDateRange.Enabled = False
Call FillExpiryDate
Call FillUserCode
End Sub
Public Sub FillUserCode()
Dim strQ As String
Dim rsQ As New ADODB.Recordset
Dim strUserCD As String
strQ = "Select distinct(userCD) from User_detl "
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = False Then
    cboUserCode.AddItem "ADMIN"
    While Not rsQ.EOF
        strUserCD = IIf(IsNull(rsQ!USERCD) = True, "", rsQ!USERCD)
        If Trim$(strUserCD) <> "" Then
            cboUserCode.AddItem strUserCD
        End If
        rsQ.MoveNext
    Wend
End If
rsQ.Close
End Sub

Public Sub FillExpiryDate()
Dim strQ As String
Dim rsQ As New ADODB.Recordset
Dim strUserCD As String
strQ = "Select distinct(ExpDt) from RepFullSheetM "
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = False Then
    While Not rsQ.EOF
        strUserCD = IIf(IsNull(rsQ!ExpDt) = True, "", rsQ!ExpDt)
        If Trim$(ExpDt) <> "" Then
            cboExpiryDate.AddItem strUserCD
        End If
        rsQ.MoveNext
    Wend
End If
rsQ.Close
End Sub

Private Sub optAllUserCode_Click()
fraUserCode.Enabled = False
End Sub

Private Sub optSelectDateRange_Click()
fraDateRange.Enabled = True
End Sub

Private Sub optSelectedUserCode_Click()
fraUserCode.Enabled = True
End Sub

Private Sub optShowAll_Click()
fraDateRange.Enabled = False
End Sub
