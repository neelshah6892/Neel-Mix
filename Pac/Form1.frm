VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public MyObj As New clsMain
Private Sub Form_Load()
blnResult = MyObj.StartCapture(Me.hwnd, "192.168.1.55", "C:\DLL\udp.txt", "talk_middleware_solutions_talk_delta_paccapdll_22_06_2010", "233.1.2.5", "28190", "27934", "28446")

End Sub
