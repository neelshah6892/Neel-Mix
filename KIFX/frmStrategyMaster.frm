VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmStrategyMaster 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Strategy Master"
   ClientHeight    =   4800
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9885
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmStrategyMaster.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4800
   ScaleWidth      =   9885
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame fraStrategyView 
      Caption         =   "Strategy View"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   3420
      Left            =   60
      TabIndex        =   9
      Top             =   960
      Width           =   9765
      Begin VB.TextBox txtSearchBySName 
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
         Left            =   6930
         MaxLength       =   25
         TabIndex        =   14
         Top             =   2970
         Width           =   2700
      End
      Begin MSComctlLib.ListView lvStrategyView 
         Height          =   2670
         Left            =   60
         TabIndex        =   10
         Top             =   270
         Width           =   9585
         _ExtentX        =   16907
         _ExtentY        =   4710
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
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
         Caption         =   "Search by Strategy Name"
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
         Index           =   1
         Left            =   4425
         TabIndex        =   15
         Top             =   3030
         Width           =   2685
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "* Double Click to Modify"
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
         Index           =   4
         Left            =   90
         TabIndex        =   11
         Top             =   2985
         Width           =   2580
      End
   End
   Begin VB.Frame fraStrategyDetails 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1005
      Left            =   60
      TabIndex        =   6
      Top             =   -45
      Width           =   9765
      Begin VB.TextBox txtStrategyDescription 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   720
         Left            =   6120
         MaxLength       =   250
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   12
         Top             =   180
         Width           =   3525
      End
      Begin VB.TextBox txtStrategySymbol 
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
         Left            =   1935
         MaxLength       =   10
         TabIndex        =   1
         Top             =   555
         Width           =   1785
      End
      Begin VB.TextBox txtStrategyName 
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
         Left            =   1935
         MaxLength       =   25
         TabIndex        =   0
         Top             =   180
         Width           =   2925
      End
      Begin VB.Label Label2 
         Caption         =   "Description"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   4950
         TabIndex        =   13
         Top             =   210
         Width           =   1320
      End
      Begin VB.Label Label3 
         Caption         =   "Strategy Symbol"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   120
         TabIndex        =   8
         Top             =   570
         Width           =   2040
      End
      Begin VB.Label Label1 
         Caption         =   "Strategy Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   0
         Left            =   120
         TabIndex        =   7
         Top             =   210
         Width           =   1650
      End
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "&New"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   5610
      TabIndex        =   2
      Top             =   4410
      Width           =   1005
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
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
      Height          =   315
      Left            =   6675
      TabIndex        =   3
      Top             =   4410
      Width           =   1005
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   7740
      TabIndex        =   4
      Top             =   4410
      Width           =   1005
   End
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "C&lose"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   8805
      TabIndex        =   5
      Top             =   4410
      Width           =   1005
   End
End
Attribute VB_Name = "frmStrategyMaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Added by AAP on 26-10-2012
'Added to save Strategy Details

Dim lngStrategyID As Long
Dim mstrStrategyName As String
Dim mstrStrategySymbol As String
Private Sub cmdCancel_Click()
Call ClearControl
Call DisableControl
End Sub

Private Sub cmdClose_Click()
Unload Me
End Sub

Private Sub cmdDelete_Click()
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim intCount As Integer

If MsgBox("Are you sure to Delete the Selected Strategy? Press Ok to continue....", vbQuestion + vbOKCancel + vbDefaultButton2) = vbCancel Then
    Exit Sub
End If
strQ = "Delete From  MstStrategies Where StrategyID=" & Val(lvStrategyView.ListItems(lvStrategyView.SelectedItem.Index).SubItems(1))
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
Set rsQ = Nothing

Call FillList
End Sub

Private Sub cmdNew_Click()
Call EnableControl
Call ClearControl
txtStrategyName.SetFocus
End Sub
Private Sub EnableControl()
fraStrategyDetails.Enabled = True
fraStrategyView.Enabled = False
cmdNew.Enabled = False
cmdSave.Enabled = True
cmdCancel.Enabled = True

End Sub

Private Sub DisableControl()
fraStrategyDetails.Enabled = False
fraStrategyView.Enabled = True
cmdNew.Enabled = True
cmdSave.Enabled = False
cmdCancel.Enabled = False

End Sub
Private Sub ClearControl()
txtStrategyDescription.Text = ""
txtStrategyName.Text = ""
txtStrategySymbol.Text = ""
cmdSave.Caption = "&Save"
End Sub


Private Sub cmdSave_Click()
On Error GoTo EH
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim intCount As Integer
intCount = 0

'Validation
If txtStrategyName.Text = "" Then
    MsgBox "Strategy Name can not be left blank!!!", vbCritical
    txtStrategyName.SetFocus
    Exit Sub
End If


If txtStrategySymbol.Text = "" Then
    MsgBox "Strategy Symbol can not be left blank!!!", vbCritical
    txtStrategySymbol.SetFocus
    Exit Sub
End If

If cmdSave.Caption = "&Save" Then
    'Duplicate Checking
    strQ = "Select * From  MstStrategies Where StrategyName='" & txtStrategyName.Text & "' "
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
    If rsQ.EOF = False Then
        MsgBox "Entered Strategy is already present!!!", vbCritical
        Exit Sub
    End If
    rsQ.Close
    Set rsQ = Nothing
    
    If MsgBox("Are you sure to Save the Strategy Details? Press Ok to continue....", vbQuestion + vbOKCancel + vbDefaultButton2) = vbCancel Then
        Exit Sub
    End If
    'Save Strategy Details
    strQ = "Select * From MstStrategies "
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    rsQ.AddNew
'    intCount = intCount + 1
    rsQ!StrategyID = GETCODEWOC("MstStrategies", "StrategyID")
    rsQ!StrategyName = txtStrategyName.Text
    rsQ!StrategyDescription = txtStrategyDescription.Text
    rsQ!StrategySymbol = txtStrategySymbol.Text
    rsQ!CreateDate = Format(Date, "DD/MM/YYYY")
    rsQ.Update
    rsQ.Close
    Set rsQ = Nothing
ElseIf cmdSave.Caption = "&Modify" Then
    If mstrStrategyName <> txtStrategyName.Text Or mstrStrategySymbol <> txtStrategySymbol.Text Then
        strQ = "Select * From  MstStrategies Where StrategyName='" & txtStrategyName.Text & "' and StrategySymbol='" & txtStrategySymbol.Text & "'"
        Set rsQ = New ADODB.Recordset
        rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
        If rsQ.EOF = False Then
            MsgBox "Entered Strategy Details are already present!!!", vbCritical
            txtStrategyName.SetFocus
            Exit Sub
           
        End If
        rsQ.Close
        Set rsQ = Nothing
    End If
    If MsgBox("Are you sure to Update the Strategy Details? Press Ok to continue....", vbQuestion + vbOKCancel + vbDefaultButton2) = vbCancel Then
        Exit Sub
    End If
    
    'Update Strategy Details
    strQ = "Select * From MstStrategies Where StrategyID=" & lngStrategyID
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    If rsQ.EOF = False Then
        rsQ!StrategyName = txtStrategyName.Text
        rsQ!StrategyDescription = txtStrategyDescription.Text
        rsQ!StrategySymbol = txtStrategySymbol.Text
        rsQ!CreateDate = Format(Date, "DD/MM/YYYY")
        rsQ!Field1 = "M"
        rsQ.Update
        rsQ.Close
        Set rsQ = Nothing
    End If
End If

Call ClearControl
Call FillList
Call DisableControl
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Private Sub Form_Load()
Call SetList
Call FillList
Call ClearControl
Call DisableControl
End Sub
Private Sub SetList()
'Set List
lvStrategyView.ColumnHeaders.Add , , "Sr.", lvStrategyView.Width * (1.2 / 10) '0
lvStrategyView.ColumnHeaders.Add , , "Strategy ID", 0 '500                       '1
lvStrategyView.ColumnHeaders.Add , , "Strategy Name", lvStrategyView.Width * (4 / 10) '2
lvStrategyView.ColumnHeaders.Add , , "Strategy Description", lvStrategyView.Width * (4 / 10) '3
lvStrategyView.ColumnHeaders.Add , , "Startegy Symbol", lvStrategyView.Width * (4 / 10)  '4

End Sub

Private Sub FillList()
'Fills lvStrategyView
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim lstItem As ListItem
Dim intSr As Integer
lvStrategyView.ListItems.Clear
If txtSearchBySName = "" Then
    strQ = "Select * From MstStrategies order by StrategyID asc"
Else
    strQ = "Select * From MstStrategies where StrategyName='" & txtSearchBySName.Text & "' order by StrategyID asc"
End If
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        intSr = intSr + 1
        Set lstItem = lvStrategyView.ListItems.Add(, , intSr)
        lstItem.SubItems(1) = rsQ!StrategyID
        lstItem.SubItems(2) = rsQ!StrategyName
        lstItem.SubItems(3) = rsQ!StrategyDescription
        lstItem.SubItems(4) = rsQ!StrategySymbol
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing
End Sub

Private Sub lvStrategyView_DblClick()
On Error GoTo EH
If lvStrategyView.ListItems.count <> 0 Then
    Call EnableControl
    cmdSave.Caption = "&Modify"
    lngStrategyID = Val(lvStrategyView.SelectedItem.SubItems(1))
    txtStrategyName.Text = lvStrategyView.SelectedItem.SubItems(2)
    txtStrategyDescription.Text = lvStrategyView.SelectedItem.SubItems(3)
    txtStrategySymbol.Text = lvStrategyView.SelectedItem.SubItems(4)
    mstrStrategyName = lvStrategyView.SelectedItem.SubItems(2)
    mstrStrategySymbol = lvStrategyView.SelectedItem.SubItems(4)
    txtStrategyName.SetFocus
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub


Private Sub lvStrategyView_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    Call lvStrategyView_DblClick
End If
End Sub


Private Sub Text1_Change()

End Sub


Private Sub txtSearchBySName_Change()
Call FillList
End Sub


