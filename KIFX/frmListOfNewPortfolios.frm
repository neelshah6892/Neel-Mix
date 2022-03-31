VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmListOfNewPortfolios 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "List of New Portfolios"
   ClientHeight    =   4845
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3900
   Icon            =   "frmListOfNewPortfolios.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   3900
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3615
      Top             =   4440
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "&Ok"
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
      Left            =   2715
      TabIndex        =   0
      Top             =   4035
      Width           =   1080
   End
   Begin MSComctlLib.ListView lvPortfolios 
      Height          =   3900
      Left            =   75
      TabIndex        =   1
      Top             =   90
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   6879
      View            =   3
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
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "See Portfolio Log for more details"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   90
      TabIndex        =   4
      Top             =   4560
      Width           =   3300
   End
   Begin VB.Label lblInterval 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   270
      Left            =   1110
      TabIndex        =   3
      Top             =   4035
      Width           =   1515
   End
   Begin VB.Label lblMessage 
      Caption         =   "Closing in"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   300
      Left            =   105
      TabIndex        =   2
      Top             =   4035
      Width           =   930
   End
End
Attribute VB_Name = "frmListOfNewPortfolios"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intInterval As Integer
Dim intMax As Integer
Private Sub cmdOk_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call SetList
intInterval = 0
If Val(strPubWarningInterval) <> 0 Then
    intMax = Val(strPubWarningInterval)
Else
    intMax = 10
End If
Timer1.Enabled = False
End Sub

Public Sub SetList()
lvPortfolios.ColumnHeaders.Add , , "Sr", 400
lvPortfolios.ColumnHeaders.Add , , "Portfolio", 3000
End Sub

Public Sub FillList(strSrNo As String, strPortfolio As String)
Dim lvItem As ListItem
Set lvItem = lvPortfolios.ListItems.Add(, , strSrNo)
lvItem.SubItems(1) = strPortfolio
End Sub

Private Sub Timer1_Timer()
intInterval = intInterval + 1
lblInterval.Caption = str(intMax - intInterval) & " seconds...."
If intInterval >= intMax Then
    Unload Me
End If
End Sub
