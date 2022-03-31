VERSION 5.00
Begin VB.Form TCRSetting 
   Caption         =   "TCR"
   ClientHeight    =   1320
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3390
   LinkTopic       =   "Form2"
   ScaleHeight     =   1320
   ScaleWidth      =   3390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&OK"
      Height          =   375
      Left            =   1665
      TabIndex        =   2
      Top             =   390
      Width           =   1365
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  'Right Justify
      Height          =   315
      Left            =   825
      TabIndex        =   1
      Text            =   "1"
      Top             =   420
      Width           =   420
   End
   Begin VB.Label Label1 
      Caption         =   "TCR"
      Height          =   255
      Left            =   195
      TabIndex        =   0
      Top             =   465
      Width           =   1200
   End
End
Attribute VB_Name = "TCRSetting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
