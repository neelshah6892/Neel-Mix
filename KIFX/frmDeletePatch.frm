VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Tool"
   ClientHeight    =   585
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2955
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmDeletePatch.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   585
   ScaleWidth      =   2955
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   1425
      TabIndex        =   1
      Top             =   135
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Process"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   90
      TabIndex        =   0
      Top             =   135
      Width           =   1200
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim rsq As ADODB.Recordset
Dim con As ADODB.Connection
Private Sub Command1_Click()
Set con = New Connection
'Set rsq = New ADODB.Recordset

con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;" _
                        & "Data Source=" & App.Path & "\Delta.mdb;" _
                        & "Jet OLEDB:Database Password=talk53055682delta01;"

con.Open
con.Execute "Alter Table RepFullSheetM Drop Column Field1"
con.Execute "Alter Table RepFullSheetM Add Column Field1 Text"
MsgBox "Process Completed Successfully!!!"
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

