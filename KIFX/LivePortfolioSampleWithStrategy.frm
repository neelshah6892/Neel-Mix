VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmLivePortfolioSampleWithStrategy 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Live Portfolio Sample With Strategy"
   ClientHeight    =   9240
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   15270
   Icon            =   "LivePortfolioSampleWithStrategy.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9240
   ScaleWidth      =   15270
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   10215
      Left            =   120
      TabIndex        =   6
      Top             =   0
      Width           =   18240
      Begin VB.Frame Frame3 
         Caption         =   "Stock / Futures"
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
         Height          =   1575
         Left            =   7920
         TabIndex        =   99
         Top             =   8145
         Width           =   7200
         Begin VB.TextBox txtPStock 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   1020
            TabIndex        =   111
            TabStop         =   0   'False
            Top             =   435
            Width           =   1530
         End
         Begin VB.TextBox txtPFutu 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   1020
            TabIndex        =   110
            TabStop         =   0   'False
            Top             =   795
            Width           =   1530
         End
         Begin VB.TextBox txtPAvg 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   1020
            TabIndex        =   109
            TabStop         =   0   'False
            Top             =   1155
            Width           =   1530
         End
         Begin VB.TextBox txtTFutu 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   2550
            TabIndex        =   108
            TabStop         =   0   'False
            Top             =   795
            Width           =   1530
         End
         Begin VB.TextBox txtTStock 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   2550
            TabIndex        =   107
            TabStop         =   0   'False
            Top             =   435
            Width           =   1530
         End
         Begin VB.TextBox txtTAvg 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   2550
            TabIndex        =   106
            TabStop         =   0   'False
            Top             =   1155
            Width           =   1530
         End
         Begin VB.TextBox txtNStock 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4080
            TabIndex        =   105
            TabStop         =   0   'False
            Top             =   435
            Width           =   1530
         End
         Begin VB.TextBox txtNFutu 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4080
            TabIndex        =   104
            TabStop         =   0   'False
            Top             =   795
            Width           =   1530
         End
         Begin VB.TextBox txtNAvg 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4080
            TabIndex        =   103
            TabStop         =   0   'False
            Top             =   1155
            Width           =   1530
         End
         Begin VB.TextBox txtTradeFutu 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   5610
            TabIndex        =   102
            TabStop         =   0   'False
            Top             =   795
            Width           =   1530
         End
         Begin VB.TextBox txtTradeStock 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   5610
            TabIndex        =   101
            TabStop         =   0   'False
            Top             =   435
            Width           =   1530
         End
         Begin VB.TextBox txtNTrade 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   5610
            TabIndex        =   100
            TabStop         =   0   'False
            Top             =   1155
            Width           =   1530
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Prev Balance"
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
            Index           =   1
            Left            =   1095
            TabIndex        =   118
            Top             =   210
            Width           =   1425
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Todays"
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
            Left            =   2895
            TabIndex        =   117
            Top             =   180
            Width           =   780
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Net"
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
            Left            =   4680
            TabIndex        =   116
            Top             =   210
            Width           =   375
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Trade"
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
            Left            =   6045
            TabIndex        =   115
            Top             =   210
            Width           =   615
         End
         Begin VB.Label Label24 
            Caption         =   "Stock"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   90
            TabIndex        =   114
            Top             =   435
            Width           =   855
         End
         Begin VB.Label Label23 
            Caption         =   "Futures"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   75
            TabIndex        =   113
            Top             =   780
            Width           =   855
         End
         Begin VB.Label Label29 
            Caption         =   "Average"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   60
            TabIndex        =   112
            Top             =   1155
            Width           =   975
         End
      End
      Begin VB.Frame Frame4 
         Height          =   1545
         Left            =   90
         TabIndex        =   76
         Top             =   8175
         Width           =   7800
         Begin VB.TextBox txtCUnits 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   6270
            TabIndex        =   91
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtGammaC 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4785
            TabIndex        =   90
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtVegaC 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   3300
            TabIndex        =   89
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtThetaC 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   1815
            TabIndex        =   88
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtDetalP 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   330
            TabIndex        =   87
            TabStop         =   0   'False
            Top             =   750
            Width           =   1485
         End
         Begin VB.TextBox txtDetalC 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   330
            TabIndex        =   86
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Delta 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   330
            TabIndex        =   85
            TabStop         =   0   'False
            Top             =   1125
            Width           =   1485
         End
         Begin VB.TextBox txtThetaP 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   1815
            TabIndex        =   84
            TabStop         =   0   'False
            Top             =   750
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Theta 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   1815
            TabIndex        =   83
            TabStop         =   0   'False
            Top             =   1140
            Width           =   1485
         End
         Begin VB.TextBox txtVegaP 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   3300
            TabIndex        =   82
            TabStop         =   0   'False
            Top             =   750
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Vega 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   3300
            TabIndex        =   81
            TabStop         =   0   'False
            Top             =   1140
            Width           =   1485
         End
         Begin VB.TextBox txtGammaP 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4785
            TabIndex        =   80
            TabStop         =   0   'False
            Top             =   750
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Gamma 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4785
            TabIndex        =   79
            TabStop         =   0   'False
            Top             =   1140
            Width           =   1485
         End
         Begin VB.TextBox txtPUnits 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   6270
            TabIndex        =   78
            TabStop         =   0   'False
            Top             =   750
            Width           =   1485
         End
         Begin VB.TextBox txtTUnits 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   6270
            TabIndex        =   77
            TabStop         =   0   'False
            Top             =   1125
            Width           =   1485
         End
         Begin VB.Label Label21 
            Alignment       =   2  'Center
            Caption         =   "T"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   60
            TabIndex        =   98
            Top             =   1110
            Width           =   255
         End
         Begin VB.Label Label20 
            Alignment       =   2  'Center
            Caption         =   "P"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   60
            TabIndex        =   97
            Top             =   750
            Width           =   255
         End
         Begin VB.Label Label19 
            Alignment       =   2  'Center
            Caption         =   "C"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   60
            TabIndex        =   96
            Top             =   390
            Width           =   255
         End
         Begin VB.Label Label18 
            Caption         =   "Gamma"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   5190
            TabIndex        =   95
            Top             =   135
            Width           =   855
         End
         Begin VB.Label Label17 
            Caption         =   "Vega"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3840
            TabIndex        =   94
            Top             =   135
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Theta"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   2340
            TabIndex        =   93
            Top             =   135
            Width           =   735
         End
         Begin VB.Label Label15 
            Caption         =   "Delta"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   0
            Left            =   690
            TabIndex        =   92
            Top             =   135
            Width           =   735
         End
      End
      Begin VB.Frame Frame1 
         Height          =   7185
         Left            =   75
         TabIndex        =   8
         Top             =   960
         Width           =   15000
         Begin VB.TextBox txtInShares 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
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
            Left            =   3000
            Locked          =   -1  'True
            TabIndex        =   60
            TabStop         =   0   'False
            Top             =   6660
            Width           =   1575
         End
         Begin VB.TextBox txtTotal_DelVal 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
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
            Left            =   5175
            Locked          =   -1  'True
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1590
         End
         Begin VB.TextBox txtTotal_ThetaVal 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
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
            Left            =   6720
            Locked          =   -1  'True
            TabIndex        =   58
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1665
         End
         Begin VB.TextBox txtTotal_VGVal 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
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
            Left            =   8370
            Locked          =   -1  'True
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1665
         End
         Begin VB.TextBox txtTotal_GMVal 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
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
            Left            =   10035
            Locked          =   -1  'True
            TabIndex        =   56
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1665
         End
         Begin VB.TextBox txtDays 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   720
            TabIndex        =   55
            Top             =   210
            Width           =   615
         End
         Begin VB.TextBox txtCall 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   3870
            TabIndex        =   54
            Top             =   195
            Width           =   945
         End
         Begin VB.TextBox txtPut 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   5265
            TabIndex        =   53
            Top             =   195
            Width           =   945
         End
         Begin VB.TextBox txtDate 
            Alignment       =   2  'Center
            BackColor       =   &H00C0FFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   7200
            Locked          =   -1  'True
            TabIndex        =   52
            TabStop         =   0   'False
            Top             =   210
            Width           =   1410
         End
         Begin VB.TextBox txtExpDt 
            Alignment       =   2  'Center
            BackColor       =   &H00C0FFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   9345
            Locked          =   -1  'True
            TabIndex        =   51
            TabStop         =   0   'False
            Top             =   210
            Width           =   1410
         End
         Begin VB.TextBox txtRate 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   2010
            TabIndex        =   50
            Top             =   210
            Width           =   1335
         End
         Begin VB.Frame Frame5 
            Caption         =   "Accounting And P/L"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   6480
            Left            =   11835
            TabIndex        =   13
            Top             =   600
            Width           =   3090
            Begin VB.TextBox txtExposure 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
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
               Left            =   1395
               TabIndex        =   30
               TabStop         =   0   'False
               Top             =   6075
               Width           =   1650
            End
            Begin VB.TextBox txtNetBalance 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
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
               Left            =   1395
               TabIndex        =   29
               TabStop         =   0   'False
               Top             =   5700
               Width           =   1650
            End
            Begin VB.TextBox txtTotal 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   28
               TabStop         =   0   'False
               Top             =   5325
               Width           =   1650
            End
            Begin VB.TextBox txtTExpense 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   27
               TabStop         =   0   'False
               Top             =   4935
               Width           =   1650
            End
            Begin VB.TextBox txtPrvBalance 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   26
               TabStop         =   0   'False
               Top             =   4560
               Width           =   1650
            End
            Begin VB.TextBox txtCashTotal 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   25
               TabStop         =   0   'False
               Top             =   4005
               Width           =   1650
            End
            Begin VB.TextBox txtEquity 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   24
               TabStop         =   0   'False
               Top             =   3615
               Width           =   1650
            End
            Begin VB.TextBox txtExp_Margin 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   23
               TabStop         =   0   'False
               Top             =   3240
               Width           =   1650
            End
            Begin VB.TextBox txtIntMargin 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   22
               TabStop         =   0   'False
               Top             =   2850
               Width           =   1650
            End
            Begin VB.TextBox txtBalance 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   21
               TabStop         =   0   'False
               Top             =   2205
               Width           =   1650
            End
            Begin VB.TextBox txtOU 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   20
               TabStop         =   0   'False
               Top             =   1821
               Width           =   1650
            End
            Begin VB.TextBox txtFSU 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   19
               TabStop         =   0   'False
               Top             =   1439
               Width           =   1650
            End
            Begin VB.TextBox txtOR 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   18
               TabStop         =   0   'False
               Top             =   1057
               Width           =   1650
            End
            Begin VB.TextBox txtFSR 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   17
               TabStop         =   0   'False
               Top             =   675
               Width           =   1650
            End
            Begin VB.TextBox txtPremium 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   1395
               TabIndex        =   16
               TabStop         =   0   'False
               Top             =   300
               Width           =   1650
            End
            Begin VB.TextBox txtCarryForword 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1410
               Locked          =   -1  'True
               TabIndex        =   15
               TabStop         =   0   'False
               Top             =   1965
               Width           =   1650
            End
            Begin VB.TextBox txtBRFRBL 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   390
               Left            =   1395
               Locked          =   -1  'True
               TabIndex        =   14
               TabStop         =   0   'False
               ToolTipText     =   "Brought Forword Balance"
               Top             =   2340
               Width           =   1665
            End
            Begin VB.Label Label67 
               AutoSize        =   -1  'True
               Caption         =   "Expense"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   -1  'True
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   75
               TabIndex        =   49
               Top             =   4365
               Width           =   825
            End
            Begin VB.Label Label66 
               AutoSize        =   -1  'True
               Caption         =   "Cash Flow"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   -1  'True
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   75
               TabIndex        =   48
               Top             =   2640
               Width           =   975
            End
            Begin VB.Label Label50 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Premium"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   47
               Top             =   315
               Width           =   870
            End
            Begin VB.Label Label49 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Balance"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   46
               Top             =   2220
               Width           =   765
            End
            Begin VB.Label Label48 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Option (U)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   45
               Top             =   1860
               Width           =   1005
            End
            Begin VB.Label Label47 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Fut/ Stk(U)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   44
               Top             =   1485
               Width           =   1125
            End
            Begin VB.Label Label46 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Option (R)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   43
               Top             =   1095
               Width           =   990
            End
            Begin VB.Label Label45 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Fut/ Stk (R)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   42
               Top             =   750
               Width           =   1170
            End
            Begin VB.Label Label44 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Int. Margin"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   41
               Top             =   2880
               Width           =   1065
            End
            Begin VB.Label Label43 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Net Balance"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   40
               Top             =   5655
               Width           =   1155
            End
            Begin VB.Label Label40 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Total"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   39
               Top             =   5295
               Width           =   495
            End
            Begin VB.Label Label39 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Todays"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   38
               Top             =   4950
               Width           =   705
            End
            Begin VB.Label Label38 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Prev Balance"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   37
               Top             =   4590
               Width           =   1275
            End
            Begin VB.Label Label37 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Total"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   36
               Top             =   4005
               Width           =   495
            End
            Begin VB.Label Label31 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Equity"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   75
               TabIndex        =   35
               Top             =   3630
               Width           =   615
            End
            Begin VB.Label Label30 
               Caption         =   "Exposure Margin"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   75
               TabIndex        =   34
               Top             =   3165
               Width           =   1365
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label28 
               BackStyle       =   0  'Transparent
               Caption         =   "Exposure (In Cr)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   75
               TabIndex        =   33
               Top             =   5925
               Width           =   1260
            End
            Begin VB.Label Label22 
               Caption         =   "Carry Forward"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   90
               TabIndex        =   32
               Top             =   1890
               Width           =   1005
            End
            Begin VB.Label Label32 
               Caption         =   "Br.Fr.Bl."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   90
               TabIndex        =   31
               Top             =   2400
               Width           =   885
            End
         End
         Begin VB.CommandButton cmdExcelList 
            Height          =   375
            Left            =   11325
            Picture         =   "LivePortfolioSampleWithStrategy.frx":000C
            Style           =   1  'Graphical
            TabIndex        =   12
            ToolTipText     =   "Export to Excel"
            Top             =   150
            Width           =   405
         End
         Begin VB.CommandButton cmdCalculator 
            Height          =   375
            Left            =   10890
            Picture         =   "LivePortfolioSampleWithStrategy.frx":0394
            Style           =   1  'Graphical
            TabIndex        =   11
            ToolTipText     =   "Calculator..."
            Top             =   150
            Width           =   405
         End
         Begin VB.ComboBox cmbUserName 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   12900
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   10
            Top             =   150
            Width           =   2025
         End
         Begin VB.TextBox txtTempDays 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   0
            TabIndex        =   9
            Top             =   0
            Width           =   615
         End
         Begin MSComctlLib.ListView lstDetails1 
            Height          =   5835
            Left            =   45
            TabIndex        =   61
            Top             =   555
            Width           =   11715
            _ExtentX        =   20664
            _ExtentY        =   10292
            View            =   3
            Arrange         =   2
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   0   'False
            AllowReorder    =   -1  'True
            FullRowSelect   =   -1  'True
            GridLines       =   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   15466235
            BorderStyle     =   1
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   21
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Strikes"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "C/P"
               Object.Width           =   706
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "Unit"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   3
               Text            =   "Traded"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   4
               Text            =   "Last"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   5
               Text            =   "New Last"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   6
               Text            =   "lv"
               Object.Width           =   882
            EndProperty
            BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   7
               Text            =   "Delta"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   8
               Text            =   "Del Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   9
               Text            =   "Theta"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   10
               Text            =   "Theta Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   11
               Text            =   "Vega"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   12
               Text            =   "Vg Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   13
               Text            =   "Gamma"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(15) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   14
               Text            =   "Gm Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(16) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   15
               Text            =   "Rho"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(17) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   16
               Text            =   "Rho Val."
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(18) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   17
               Text            =   "Token"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(19) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   18
               Text            =   "Live IV"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(20) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   19
               Text            =   "ExpiryDate"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(21) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   20
               Text            =   "Days"
               Object.Width           =   2540
            EndProperty
         End
         Begin VB.Label Label8 
            Caption         =   "To Be DELTA NEUTRAL"
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
            Left            =   2385
            TabIndex        =   75
            Top             =   6435
            Width           =   2295
         End
         Begin VB.Label Label9 
            Caption         =   "In Shares"
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
            Left            =   2010
            TabIndex        =   74
            Top             =   6735
            Width           =   1215
         End
         Begin VB.Label Label10 
            Caption         =   "Total"
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
            Left            =   4635
            TabIndex        =   73
            Top             =   6735
            Width           =   735
         End
         Begin VB.Label Label11 
            Caption         =   "Del  Val"
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
            Left            =   5490
            TabIndex        =   72
            Top             =   6435
            Width           =   855
         End
         Begin VB.Label Label12 
            Caption         =   "Theta Val"
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
            Left            =   7035
            TabIndex        =   71
            Top             =   6435
            Width           =   1095
         End
         Begin VB.Label Label13 
            Caption         =   "Vg. Val"
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
            Left            =   8820
            TabIndex        =   70
            Top             =   6435
            Width           =   930
         End
         Begin VB.Label Label14 
            Caption         =   "Gm. Val"
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
            Left            =   10380
            TabIndex        =   69
            Top             =   6435
            Width           =   1095
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Days"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   105
            TabIndex        =   68
            Top             =   210
            Width           =   480
         End
         Begin VB.Label Label2 
            Caption         =   "Rate"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1455
            TabIndex        =   67
            Top             =   210
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "(C)"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3495
            TabIndex        =   66
            Top             =   210
            Width           =   375
         End
         Begin VB.Label Label4 
            Caption         =   "(P)"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   4920
            TabIndex        =   65
            Top             =   210
            Width           =   375
         End
         Begin VB.Label Label5 
            Caption         =   "Today"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   6525
            TabIndex        =   64
            Top             =   210
            Width           =   690
         End
         Begin VB.Label Label6 
            Caption         =   "Expire "
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   8700
            TabIndex        =   63
            Top             =   210
            Width           =   690
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "User Code"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   11880
            TabIndex        =   62
            Top             =   180
            Width           =   990
         End
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
         Left            =   14655
         Picture         =   "LivePortfolioSampleWithStrategy.frx":08AC
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Close"
         Top             =   60
         Width           =   390
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   9735
         Left            =   0
         TabIndex        =   119
         Top             =   120
         Width           =   15180
         _ExtentX        =   26776
         _ExtentY        =   17171
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   12
         TabHeight       =   1411
         TabMaxWidth     =   2117
         OLEDropMode     =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Tab 0"
         TabPicture(0)   =   "LivePortfolioSampleWithStrategy.frx":09A6
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "CommonDialog1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "txtTotal_RhoVal"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "txtLotSize"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).ControlCount=   3
         Begin VB.TextBox txtLotSize 
            Height          =   330
            Left            =   1845
            TabIndex        =   122
            Top             =   405
            Width           =   810
         End
         Begin VB.TextBox txtTotal_RhoVal 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFF00&
            Height          =   360
            Left            =   0
            Locked          =   -1  'True
            TabIndex        =   120
            TabStop         =   0   'False
            Top             =   450
            Width           =   1620
         End
         Begin MSComDlg.CommonDialog CommonDialog1 
            Left            =   1635
            Top             =   705
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
      End
   End
   Begin VB.Frame fraCurrency 
      BorderStyle     =   0  'None
      Height          =   510
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8055
      Begin VB.TextBox txtDomesticIntRate 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   315
         Left            =   1905
         TabIndex        =   2
         TabStop         =   0   'False
         Top             =   150
         Width           =   1125
      End
      Begin VB.TextBox txtForeignIntRate 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   315
         Left            =   4785
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   150
         Width           =   1125
      End
      Begin VB.Label lblCurrencyScript 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "* Currency"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   270
         Left            =   5940
         TabIndex        =   5
         Top             =   165
         Width           =   1305
      End
      Begin VB.Label lblDomesticIntRate 
         AutoSize        =   -1  'True
         Caption         =   "Domestic Interest"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   60
         TabIndex        =   4
         Top             =   165
         Width           =   1770
      End
      Begin VB.Label lblForeignIntRate 
         AutoSize        =   -1  'True
         Caption         =   "Foreign Interest"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   3135
         TabIndex        =   3
         Top             =   180
         Width           =   1605
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   60
      Top             =   105
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Label Label73 
      Caption         =   "Bhavcopy File"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   630
      Index           =   1
      Left            =   1545
      TabIndex        =   121
      Top             =   75
      Width           =   1065
   End
End
Attribute VB_Name = "frmLivePortfolioSampleWithStrategy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




'Party Code,Symbol,Inst. Type,Expiry Date,Stk. Price,Opt. Type,Open Qty,Sell Qty,Sell Rate,Sell Amt,,,,,,

Dim DRS As New ADODB.Recordset
Dim RS As New ADODB.Recordset

Dim rsD As New ADODB.Recordset
Dim rs2 As New ADODB.Recordset
Dim rs3 As New ADODB.Recordset
Dim rs1 As New ADODB.Recordset
Dim RST As New ADODB.Recordset
Dim RST1 As New ADODB.Recordset
Dim RST2 As New ADODB.Recordset
Dim SYMBOL As String
Dim DRST As New ADODB.Recordset
Dim Symbolname As String
Dim DRST1 As New ADODB.Recordset
Dim EINTRATE As Double
Dim days As Integer
Dim MkPrice
Dim EFlag As Integer
Dim intMsg As Integer

'Variables For Resolution
'=====================
Dim MyForm As FRMSIZE
Dim DesignX As Integer
Dim DesignY As Integer

Dim strScript As String

Dim blnIsLoading As Boolean
Dim dblInterestRate As Double

Dim dblPreviousDomesticIntRate As Double
Dim dblPreviousForeignIntRate As Double
Dim curLotSize As Currency

Dim intExpense As Integer 'Change Here 8/9/2011
Public strSelectedStrategy As String  'Added by AAP on 26/11/2012
Public mintStrategyID As Integer      'Added by AAP on 26/11/2012
Public Sub FormatTextBoxValues_4_Portfolio()
'Accounting & P/L
txtBalance.Text = FormatValue(txtBalance)
txtPremium.Text = FormatValue(txtPremium)
txtFSR.Text = FormatValue(txtFSR)
txtOR.Text = FormatValue(txtOR)
txtFSU.Text = FormatValue(txtFSU)
txtOU.Text = FormatValue(txtOU)

'Cash Flow
txtIntMargin.Text = FormatValue(txtIntMargin)
txtExp_Margin.Text = FormatValue(txtExp_Margin)
txtEquity.Text = FormatValue(txtEquity)
txtCashTotal.Text = FormatValue(txtCashTotal)

'Expense
txtPrvBalance.Text = FormatValue(txtPrvBalance)
txtTExpense.Text = FormatValue(txtTExpense)
txtTotal.Text = FormatValue(txtTotal)
txtNetBalance.Text = FormatValue(txtNetBalance)
End Sub
Public Sub FillCalculation()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim rsQ2 As ADODB.Recordset
Dim cmd2 As ADODB.Command
Dim curStrike As Currency
Dim strCP As String
Dim intStrike As Integer

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)
txtOU.Text = "0"
txtFSU.Text = "0"
txtBalance.Text = "0"
txtInShares.Text = "0"
txtTotal_DelVal.Text = "0"
txtTotal_ThetaVal.Text = "0"
txtTotal_VGVal.Text = "0"
txtTotal_GMVal.Text = "0"
strCall = txtCall.Text
strPut = txtPut.Text

For intStrike = 1 To lstDetails1.ListItems.count
    curStrike = Val(lstDetails1.ListItems(intStrike))
    strCP = lstDetails1.ListItems(intStrike).SubItems(1)
    
    'CALL
    If strCP = "C" Then
        If blnIsM2M = True Then
            strCall = lstDetails1.ListItems(intStrike).SubItems(18)
            If Val(strCall) = 0 Then 'Added on 30/08/2011
                strCall = lstDetails1.ListItems(intStrike).SubItems(6)
            End If
        Else
            strCall = lstDetails1.ListItems(intStrike).SubItems(6)
        End If
        
        If dblInterestRate = 2 Then
            If dblT <= 0 And curRate > curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = curRate - curStrike
                lstDetails1.ListItems(intStrike).SubItems(7) = 100 / 100
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate < curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = 0
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate = curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = 50 / 100
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            Else
                lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(7) = Format(CalculateDeltaCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(9) = Format(-CalculateThetaCallCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(11) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            End If
        Else
            If dblT <= 0 And curRate > curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = curRate - curStrike
                lstDetails1.ListItems(intStrike).SubItems(7) = 100
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate < curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = 0
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate = curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = 50
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            Else
                lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatLastVal)
                lstDetails1.ListItems(intStrike).SubItems(7) = Format(CalculateDeltaCall(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatDelta)
                lstDetails1.ListItems(intStrike).SubItems(9) = Format(-CalculateThetaCall(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatTheta)
                lstDetails1.ListItems(intStrike).SubItems(11) = Format(CalculateVega(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatVega)
                lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateGamma(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatGamma)
            End If
        End If
    End If
    
    
    'PUT
    If strCP = "P" Then
        If blnIsM2M = True Then
            strPut = lstDetails1.ListItems(intStrike).SubItems(18)
            If Val(strPut) = 0 Then 'Added on 30/08/2011
                strPut = lstDetails1.ListItems(intStrike).SubItems(6)
            End If
        Else
            strPut = lstDetails1.ListItems(intStrike).SubItems(6)
        End If
        If dblInterestRate = 2 Then
            If dblT <= 0 And curRate > curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = 0
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate < curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = curStrike - curRate
                lstDetails1.ListItems(intStrike).SubItems(7) = -100 / 100
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate = curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = -50 / 100
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            Else
                lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(7) = Format(CalculateDeltaPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(9) = Format(-CalculateThetaPutCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(11) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
                lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            End If
        Else
            If dblT <= 0 And curRate > curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = 0
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate < curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = curStrike - curRate
                lstDetails1.ListItems(intStrike).SubItems(7) = -100
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            ElseIf dblT <= 0 And curRate = curStrike Then
                lstDetails1.ListItems(intStrike).SubItems(4) = 0
                lstDetails1.ListItems(intStrike).SubItems(7) = -50
                lstDetails1.ListItems(intStrike).SubItems(9) = 0
                lstDetails1.ListItems(intStrike).SubItems(11) = 0
                lstDetails1.ListItems(intStrike).SubItems(13) = 0
            Else
                lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatLastVal)
                lstDetails1.ListItems(intStrike).SubItems(7) = Format(CalculateDeltaPut(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatDelta)
                lstDetails1.ListItems(intStrike).SubItems(9) = Format(-CalculateThetaPut(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatTheta)
                lstDetails1.ListItems(intStrike).SubItems(11) = Format(CalculateVega(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatVega)
                lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateGamma(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatGamma)
            End If
        End If
    End If
    
    If dblInterestRate = 2 Then
        lstDetails1.ListItems(intStrike).SubItems(8) = -(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (Val(lstDetails1.ListItems(intStrike).SubItems(7))))
        lstDetails1.ListItems(intStrike).SubItems(10) = Val(lstDetails1.ListItems(intStrike).SubItems(2)) * -(Val(lstDetails1.ListItems(intStrike).SubItems(9))) * curLotSize
        lstDetails1.ListItems(intStrike).SubItems(12) = Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(11)) * gdblCurVegaMultFactor 'Updated By SSP 02/05/2012
        lstDetails1.ListItems(intStrike).SubItems(14) = Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13))
        
        txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(8))
        txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
    Else
        lstDetails1.ListItems(intStrike).SubItems(8) = -(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (Val(lstDetails1.ListItems(intStrike).SubItems(7)) / 100))
        lstDetails1.ListItems(intStrike).SubItems(10) = Val(lstDetails1.ListItems(intStrike).SubItems(2)) * -(Val(lstDetails1.ListItems(intStrike).SubItems(9)))
        lstDetails1.ListItems(intStrike).SubItems(12) = Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(11))
        lstDetails1.ListItems(intStrike).SubItems(14) = Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13))
        
        txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(8))
        txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
    End If
    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
Next

If dblInterestRate = 2 Then
    txtTotal_DelVal.Text = Round(Val(txtTotal_DelVal.Text), 4)
    txtTotal_ThetaVal.Text = Round(Val(txtTotal_ThetaVal.Text), 4)
    txtTotal_VGVal.Text = Round(Val(txtTotal_VGVal.Text), 4)
    txtTotal_GMVal.Text = Round(Val(txtTotal_GMVal.Text), 4)
Else
    txtTotal_DelVal.Text = Round(Val(txtTotal_DelVal.Text), 2)
    txtTotal_ThetaVal.Text = Round(Val(txtTotal_ThetaVal.Text), 2)
    txtTotal_VGVal.Text = Round(Val(txtTotal_VGVal.Text), 2)
    txtTotal_GMVal.Text = Round(Val(txtTotal_GMVal.Text), 2)
End If

txtFSU.Text = Round((Val(txtNAvg.Text) * (Val(txtNTrade.Text) - Val(txtRate.Text))), 4)
If dblInterestRate = 2 Then
    txtInShares.Text = Round(Val(txtTotal_DelVal.Text), 4) - Val(txtNAvg.Text)
    txtFSU.Text = Round(-Val(txtFSU.Text) * curLotSize, 4)
    txtOU.Text = Round(Val(txtOU.Text) * curLotSize, 4)
    txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text), 4)
Else
    txtInShares.Text = Round(Val(txtTotal_DelVal.Text), 0) - Val(txtNAvg.Text)
    txtFSU.Text = Round(-Val(txtFSU.Text))
    txtOU.Text = Round(Val(txtOU.Text))
    txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text))
End If


End Sub
Public Sub Calculation()
'New Code is included for optimiz~n
'04/12/2009

On Error GoTo ErrHand

lstDetails1.ListItems.Clear

Dim strQ As String

Dim rsQ As ADODB.Recordset
Dim rsOR As ADODB.Recordset

Dim cmd As ADODB.Command
Dim lvItem As ListItem
Dim lngColor As Long

Dim FUTURESA As Currency
Dim FUTURESD As Currency
Dim FUTUREQTYS As Currency

Dim FUTURESQTYA As Currency
Dim FUTURESQTYD As Currency

Dim STOCKSA As Currency
Dim STOCKSD As Currency
Dim STOCKQTYS As Currency
Dim STOCKS As Currency

Dim STOCKSQTYA As Currency
Dim STOCKSQTYD As Currency

Dim dblFUTURES As Currency
Dim dblSTOCKS As Currency

Dim cur1 As Currency
Dim cur2 As Currency
Dim cur3 As Currency

Dim curOptionVal As Currency
Dim curOptionQty As Currency

Dim rsStock As ADODB.Recordset
Dim rsFuture As ADODB.Recordset
ReDim strArrPreviousExpiry(20) As String
ReDim curArrPreviousExpiryUnits(20) As Currency
ReDim curArrPreviousExpiryRate(20) As Currency

txtOR.Text = "0"
txtNTrade.Text = "0"
txtTradeFutu.Text = "0"
txtFSR.Text = "0"
txtTFutu.Text = "0"
txtPFutu.Text = "0"
txtTradeStock.Text = "0"
txtTStock.Text = "0"
txtPStock.Text = "0"
txtBRFRBL.Text = "0"
txtCarryForword.Text = "0"

Set rsQ = New ADODB.Recordset
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc


'This Procedure is used to fill all strikes present in the ssytem
'This Procedure is also used to calculate Option Realized
If userinfo.SELUSERCD = "" Then
    If dblInterestRate = 2 Then
       'cmd.CommandText = "QryOrderedUnitsTradedSummaryCurrency"  'Commented by AAP on 26/11/2012
        'Added by AAP on 26/11/2012
        '-------------------------------------------------------------------------------------------------
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryCurrencyStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryCurrencyWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryOrderedUnitsTradedSummaryCurrency"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        '-------------------------------------------------------------------------------------------------
    Else
'        cmd.CommandText = "QryOrderedUnitsTradedSummary" 'Commented by AAP on 26/11/2012
        'Added by AAP on 26/11/2012
        '-------------------------------------------------------------------------------------------------
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryOrderedUnitsTradedSummary"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
'-------------------------------------------------------------------------------------------------
    End If
Else
    If strIsUserCodeOrUserName = "Name" Then
        If dblInterestRate = 2 Then
'            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserNameCurrency"
            'Added by AAP on 26/11/2012
            '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserNameCurrencyStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserNameCurrencyWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserNameCurrency"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            End If
            '---------------------------------------------------------------------------------------
        Else
'            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserName"
            'Added by AAP on 26/11/2012
            '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserNameStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserNameWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserName"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            End If
            '---------------------------------------------------------------------------------------
        End If
'        cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'        cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'        cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
'        cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
    Else
        If dblInterestRate = 2 Then
'            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeCurrency"
             'Added by AAP on 26/11/2012
            '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeCurrencyStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeCurrencyWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeCurrency"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            End If
            '-------------------------------------------------------------------------------------------------
        Else
'            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
             'Added by AAP on 26/11/2012
            '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
                cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            End If
            '-------------------------------------------------------------------------------------------------
        End If
'        cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'        cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'        cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
'        cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
    End If
End If

lngColor = &H2E4E30

rsQ.CursorLocation = adUseClient
rsQ.CursorType = adOpenKeyset
rsQ.LockType = adLockOptimistic
Set rsQ = cmd.Execute
If rsQ.EOF = False Then
    While Not rsQ.EOF
        If rsQ!Strike <> 0 Then
        
            If rsQ!CP = "C" Then
                lngColor = lngColor1
            ElseIf rsQ!CP = "P" Then
                lngColor = lngColor2
            End If
            
            Set lvItem = lstDetails1.ListItems.Add(, , rsQ!Strike)
            
            lvItem.ForeColor = lngColor
            lvItem.Bold = True
            
            lvItem.SubItems(1) = rsQ!CP
            
            lvItem.ListSubItems(1).ForeColor = lngColor
            lvItem.ListSubItems(1).Bold = True
            
            If dblInterestRate = 2 Then
                Call CurrencyCalculation(lvItem, rsQ!Strike, rsQ!CP, lngColor)
            Else
                Call GreeksCalculation(lvItem, rsQ!Strike, rsQ!CP, lngColor)
            End If
            
            If rsQ!OPTIONQTY = 0 Then
                lvItem.SubItems(2) = 0
                lvItem.SubItems(3) = 0
            Else
                curOptionQty = Val(rsQ!OPTIONQTY)
                curOptionVal = Val(rsQ!OPTIONVAL)
                
                lvItem.SubItems(2) = Val(lvItem.SubItems(2)) + curOptionQty
                
                If dblInterestRate = 2 Then
                    lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, "0.0000") ' Round(curOptionVal / curOptionQty, 2)
                    lvItem.SubItems(8) = -(Val(lvItem.SubItems(2)) * (Val(lvItem.SubItems(7))))
                    lvItem.SubItems(16) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(15)) * curLotSize
                    lvItem.SubItems(10) = Val(lvItem.SubItems(2)) * (-Val(lvItem.SubItems(9))) * curLotSize
                    lvItem.SubItems(12) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(11)) * gdblCurVegaMultFactor 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
                    lvItem.SubItems(14) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(13)) '* curLotSize
                Else
                    lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, strPubFormatTraded) ' Round(curOptionVal / curOptionQty, 2)
                    lvItem.SubItems(8) = -(Val(lvItem.SubItems(2)) * (Val(lvItem.SubItems(7)) / 100))
                    lvItem.SubItems(10) = Val(lvItem.SubItems(2)) * (-Val(lvItem.SubItems(9)))
                    lvItem.SubItems(12) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(11))
                    lvItem.SubItems(14) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(13))
                End If
                             
            End If
            
            If Val(lvItem.SubItems(2)) < 0 Then
                lvItem.ListSubItems(2).ForeColor = lngColor4
            Else
                lvItem.ListSubItems(2).ForeColor = lngColor3
            End If
        
            If Val(lvItem.SubItems(3)) < 0 Then
                lvItem.ListSubItems(3).ForeColor = lngColor4
            Else
                lvItem.ListSubItems(3).ForeColor = lngColor3
            End If
        End If
        
        'Calculating Option Realized
        If rsQ!CP = "" Or IsNull(rsQ!CP) Or rsQ!CP = "1" Then
        Else
            If Val(rsQ!OPTIONQTY) <> 0 Then
            Else
                txtOR.Text = Val(txtOR.Text) + Val(rsQ!OPTIONVAL)
                FUTUREQTYS = Val(rsQ!OPTIONQTY)
            End If
        End If
        
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing
Set cmd = Nothing

If gstrSortByCallPut = "Y" Then 'Added By SSP 7/11/2011
    lstDetails1.SortKey = 1
    lstDetails1.Sorted = True
Else
    lstDetails1.Sorted = False
End If


''
'''Calculate Future
''Set cmd = New ADODB.Command
''FUTURESA = 0
''FUTURESD = 0
''FUTURESQTYA = 0
''FUTURESQTYD = 0
''cmd.ActiveConnection = con
''cmd.CommandType = adCmdStoredProc
''cmd.CommandText = "QryFuture"
''If userinfo.SELUSERCD = "" Then
''    cmd.CommandText = "QryFuture"
''    cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
''    cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
''    cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
''Else
''    If strIsUserCodeOrUserName = "Name" Then
''        cmd.CommandText = "QryFutureUserNameWise"
''        cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
''        cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
''        cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
''        cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
''    Else
''        cmd.CommandText = "QryFutureUserCodeWise"
''        cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
''        cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
''        cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
''        cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
''    End If
''End If
''
''Set rsFuture = New ADODB.Recordset
''Set rsFuture = cmd.Execute
''If rsFuture.EOF = False Then
''    Do Until rsFuture.EOF
''        If Trim$(rsFuture!CP) = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
''            If IsNull(rsFuture!OPTIONVALP) = False Then
''                If Format(CDate(rsFuture!TRADEDT), "DD/MM/YYYY") = Format(txtDate.Text, "DD/MM/YYYY") Then
''                    'For Todays Future
''                    FUTURESA = FUTURESA + Val(rsFuture!OPTIONVALP)
''                    FUTURESQTYA = FUTURESQTYA + Val(rsFuture!OPTIONPQTY)
''                    txtTFutu.Text = Val(txtTFutu.Text) + Val(rsFuture!OPTIONPQTY)
''                Else
''                    'For Previous Future
''                    FUTURESD = FUTURESD + Val(rsFuture!OPTIONVALP)
''                    FUTURESQTYD = FUTURESQTYD + Val(rsFuture!OPTIONPQTY)
''                    txtPFutu.Text = Val(txtPFutu.Text) + Val(rsFuture!OPTIONPQTY)
''                End If
''            End If
''        End If
''        rsFuture.MoveNext
''    Loop
''End If
''rsFuture.Close
''Set rsFuture = Nothing
''Set cmd.ActiveConnection = Nothing
''Set cmd = Nothing
''
''FUTURES = 0
''FUTUREQTYS = 0
''FUTURES = FUTURESA + FUTURESD
''FUTURES = FUTURESA + FUTURESD
''FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)
''If FUTUREQTYS <> 0 Then
''    'Trade Future
''    txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 2)
''End If
'''Net Future
''txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)

'Calculate Future
If dblInterestRate = 2 Then
    Set cmd = New ADODB.Command
    FUTURESA = 0
    FUTURESD = 0
    FUTURESQTYA = 0
    FUTURESQTYD = 0
    cmd.ActiveConnection = con
    cmd.CommandType = adCmdStoredProc
    If userinfo.SELUSERCD = "" Then
'        cmd.CommandText = "QryFutureCurrency"
'        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
'        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
         'Added by AAP on 26/11/2012
        '-------------------------------------------------------------------------------------------------
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryFutureCurrencyStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then
            cmd.CommandText = "QryFutureCurrencyWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryFutureCurrency"
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        End If
                '-------------------------------------------------------------------------------------------------
    Else
        If strIsUserCodeOrUserName = "Name" Then
'            cmd.CommandText = "QryFutureUserNameWiseCurrency"
'            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryFutureUserNameWiseCurrencyStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryFutureUserNameWiseCurrencyWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryFutureUserNameWiseCurrency"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            End If
        Else
'            cmd.CommandText = "QryFutureUserCodeWiseCurrency"
'            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            'Added by AAP on 26/11/2012
            '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryFutureUserCodeWiseCurrencyStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryFutureUserCodeWiseCurrencyWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryFutureUserCodeWiseCurrency"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            End If
                    '-------------------------------------------------------------------------------------------------
        End If
    End If
    Set rsFuture = New ADODB.Recordset
    Set rsFuture = cmd.Execute
    If rsFuture.EOF = False Then
        Do Until rsFuture.EOF
'            If Trim$(rsFuture!CP) = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
                If IsNull(rsFuture!OPTIONVALP) = False Then
                    If Format(CDate(rsFuture!TRADEDT), "DD/MM/YYYY") = Format(txtDate.Text, "DD/MM/YYYY") Then
                        'For Todays Future
                        FUTURESA = FUTURESA + Val(rsFuture!OPTIONVALP)
                        FUTURESQTYA = FUTURESQTYA + Val(rsFuture!OPTIONPQTY)
                        txtTFutu.Text = Val(txtTFutu.Text) + Val(rsFuture!OPTIONPQTY)
                    Else
                        'For Previous Future
                        FUTURESD = FUTURESD + Val(rsFuture!OPTIONVALP)
                        FUTURESQTYD = FUTURESQTYD + Val(rsFuture!OPTIONPQTY)
                        txtPFutu.Text = Val(txtPFutu.Text) + Val(rsFuture!OPTIONPQTY)
                    End If
                End If
'            End If
            rsFuture.MoveNext
        Loop
    End If
    rsFuture.Close
    Set rsFuture = Nothing
    Set cmd.ActiveConnection = Nothing
    Set cmd = Nothing
    
    FUTURES = 0
    FUTUREQTYS = 0
    FUTURES = FUTURESA + FUTURESD
    FUTURES = FUTURESA + FUTURESD
    FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)
    If FUTUREQTYS <> 0 Then
        'Trade Future
        txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 2)
    End If
    'Net Future
    txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)

Else
    If blnIsCloseOut = True Then
        
        FUTURESA = 0
        FUTURESD = 0
        FUTURESQTYA = 0
        FUTURESQTYD = 0
        
        intCount = 0
        strCloseOut = "Select * From MstCloseOut Where Portfolio='" & Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)) & "' And CDate(ExpiryDate)<CDate('" & Format(CDate(txtDate.Text), "DD/MM/YYYY") & "')"
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
                    
                    If userinfo.SELUSERCD = "" Then
'                        cmd.CommandText = "QryFuturesForCloseOutInDateRange"
'                        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
'                        cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
'                        cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                          'Added by AAP on 26/11/2012
                        '-------------------------------------------------------------------------------------------------
                         If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesForCloseOutInDateRangeStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then
                            cmd.CommandText = "QryFuturesForCloseOutInDateRangeWithNoneStrategy"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        Else
                            cmd.CommandText = "QryFuturesForCloseOutInDateRange"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        End If
                        '-------------------------------------------------------------------------------------------------
                    Else
'                        cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
'                        cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'                        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'                        cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
'                        cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                         'Added by AAP on 26/11/2012
                        '-------------------------------------------------------------------------------------------------
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRangeStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRangeWithNoneStrategy"
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        Else
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        End If
                        '-------------------------------------------------------------------------------------------------
                    End If
                    
                    
                    Set rsFuture = New ADODB.Recordset
                    Set rsFuture = cmd.Execute
                    If IsNull(rsFuture!OPTIONPQTY) = False Then
                        strArrPreviousExpiry(intCount) = strExpiryDate
                        curArrPreviousExpiryUnits(intCount) = Val(rsFuture!OPTIONPQTY)
                        curArrPreviousExpiryRate(intCount) = rsCloseOut!LastRate
                        intCount = intCount + 1
                    End If
                    rsFuture.Close
                    Set rsFuture = Nothing
                    Set cmd.ActiveConnection = Nothing
                    Set cmd = Nothing
                Else
                    Set cmd = New ADODB.Command
                    cmd.ActiveConnection = con
                    cmd.CommandType = adCmdStoredProc
                    If userinfo.SELUSERCD = "" Then
'                        cmd.CommandText = "QryFuturesForCloseOut"
'                        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
'                        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                         'Added by AAP on 26/11/2012
                        '-------------------------------------------------------------------------------------------------
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesForCloseOutStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then
                            cmd.CommandText = "QryFuturesForCloseOutWithNoneStrategy"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        Else
                            cmd.CommandText = "QryFuturesForCloseOut"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        End If
                        '-------------------------------------------------------------------------------------------------
                    Else
'                        cmd.CommandText = "QryFuturesUserCodeForCloseOut"
'                        cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'                        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'                        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                         'Added by AAP on 26/11/2012
                        '-------------------------------------------------------------------------------------------------
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutWithNoneStrategy"
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        Else
                            cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                        End If
                        
                        '-------------------------------------------------------------------------------------------------
                    End If
                    
                    
                    Set rsFuture = New ADODB.Recordset
                    Set rsFuture = cmd.Execute
                    If IsNull(rsFuture!OPTIONPQTY) = False Then
                        strArrPreviousExpiry(intCount) = strExpiryDate
                        curArrPreviousExpiryUnits(intCount) = Val(rsFuture!OPTIONPQTY)
                        curArrPreviousExpiryRate(intCount) = rsCloseOut!LastRate
                        intCount = intCount + 1
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
        
        If strExpiryDate <> "" And intCount <> 0 Then
            Set cmd = New ADODB.Command
            FUTURESA = 0
            FUTURESD = 0
            FUTURESQTYA = 0
            FUTURESQTYD = 0
            cmd.ActiveConnection = con
            cmd.CommandType = adCmdStoredProc
            If userinfo.SELUSERCD = "" Then
'                cmd.CommandText = "QryFutureInDateRange"
'                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                 'Added by AAP on 26/11/2012
                '-------------------------------------------------------------------------------------------------
                If mintStrategyID > 0 Then
                    cmd.CommandText = "QryFutureInDateRangeStrategywise"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                ElseIf mintStrategyID = -1 Then
                    cmd.CommandText = "QryFutureInDateRangeWithNoneStrategy"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                Else
                    cmd.CommandText = "QryFutureInDateRange"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                End If
                '-------------------------------------------------------------------------------------------------
            Else
'                cmd.CommandText = "QryFutureUserCodeInDateRange"
'                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                If mintStrategyID > 0 Then
                    cmd.CommandText = "QryFutureUserCodeInDateRangeStrategywise"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                    cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                ElseIf mintStrategyID = -1 Then
                    cmd.CommandText = "QryFutureUserCodeInDateRangeWithNoneStrategy"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                Else
                    cmd.CommandText = "QryFutureUserCodeInDateRange"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                End If
            End If
            Set rsFuture = New ADODB.Recordset
            Set rsFuture = cmd.Execute
            If rsFuture.EOF = False Then
                Do Until rsFuture.EOF
                    
                    If IsNull(rsFuture!OPTIONVALP) = False Then
                        If Format(CDate(rsFuture!TRADEDT), "DD/MM/YYYY") = Format(txtDate.Text, "DD/MM/YYYY") Then
                            'For Todays Future
                            FUTURESA = FUTURESA + Val(rsFuture!OPTIONVALP)
                            FUTURESQTYA = FUTURESQTYA + Val(rsFuture!OPTIONPQTY)
                            txtTFutu.Text = Val(txtTFutu.Text) + Val(rsFuture!OPTIONPQTY)
                        Else
                            'For Previous Future
                            FUTURESD = FUTURESD + Val(rsFuture!OPTIONVALP)
                            FUTURESQTYD = FUTURESQTYD + Val(rsFuture!OPTIONPQTY)
                            txtPFutu.Text = Val(txtPFutu.Text) + Val(rsFuture!OPTIONPQTY)
                        End If
                    End If
                    
                    rsFuture.MoveNext
                Loop
            End If
            rsFuture.Close
            Set rsFuture = Nothing
            Set cmd.ActiveConnection = Nothing
            Set cmd = Nothing
            
            FUTURES = 0
            FUTUREQTYS = 0
            For intIndex = 0 To intCount - 1
                txtPFutu.Text = Val(txtPFutu.Text) + Val(curArrPreviousExpiryUnits(intIndex))
                FUTURESD = FUTURESD + (Val(curArrPreviousExpiryUnits(intIndex)) * Val(curArrPreviousExpiryRate(intIndex)))
                FUTURESQTYD = FUTURESQTYD + Val(curArrPreviousExpiryUnits(intIndex))
            Next
            'FUTURES = FUTURESA + FUTURESD
            FUTURES = FUTURESA + FUTURESD
            
            FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)
            
            If FUTUREQTYS <> 0 Then
                'Trade Future
                txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 2)
            End If
        Else
            Set cmd = New ADODB.Command
            FUTURESA = 0
            FUTURESD = 0
            FUTURESQTYA = 0
            FUTURESQTYD = 0
            cmd.ActiveConnection = con
            cmd.CommandType = adCmdStoredProc
            If userinfo.SELUSERCD = "" Then
'                cmd.CommandText = "QryFuture"
'                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                 'Added by AAP on 26/11/2012
                '-------------------------------------------------------------------------------------------------
                If mintStrategyID > 0 Then
                    cmd.CommandText = "QryFutureStrategywise"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
                    cmd.CommandText = "QryFutureWithNoneStrategy"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                Else
                    cmd.CommandText = "QryFuture"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                End If
                '-------------------------------------------------------------------------------------------------
            Else
'                cmd.CommandText = "QryFutureUserCodeWise"
'                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                 'Added by AAP on 26/11/2012
                '-------------------------------------------------------------------------------------------------
                If mintStrategyID > 0 Then
                    cmd.CommandText = "QryFutureUserCodeWiseStrategywise"
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
                    cmd.CommandText = "QryFutureUserCodeWiseWithNoneStrategy"
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                Else
                    cmd.CommandText = "QryFutureUserCodeWise"
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                End If
                '-------------------------------------------------------------------------------------------------
            End If
            Set rsFuture = New ADODB.Recordset
            Set rsFuture = cmd.Execute
            If rsFuture.EOF = False Then
                Do Until rsFuture.EOF
'                    If Trim$(rsFuture!CP) = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
                        If IsNull(rsFuture!OPTIONVALP) = False Then
                            If Format(CDate(rsFuture!TRADEDT), "DD/MM/YYYY") = Format(txtDate.Text, "DD/MM/YYYY") Then
                                'For Todays Future
                                FUTURESA = FUTURESA + Val(rsFuture!OPTIONVALP)
                                FUTURESQTYA = FUTURESQTYA + Val(rsFuture!OPTIONPQTY)
                                txtTFutu.Text = Val(txtTFutu.Text) + Val(rsFuture!OPTIONPQTY)
                            Else
                                'For Previous Future
                                FUTURESD = FUTURESD + Val(rsFuture!OPTIONVALP)
                                FUTURESQTYD = FUTURESQTYD + Val(rsFuture!OPTIONPQTY)
                                txtPFutu.Text = Val(txtPFutu.Text) + Val(rsFuture!OPTIONPQTY)
                            End If
                        End If
'                    End If
                    rsFuture.MoveNext
                Loop
            End If
            rsFuture.Close
            Set rsFuture = Nothing
            Set cmd.ActiveConnection = Nothing
            Set cmd = Nothing
            
            FUTURES = 0
            FUTUREQTYS = 0
            FUTURES = FUTURESA + FUTURESD
            FUTURES = FUTURESA + FUTURESD
            FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)
            If FUTUREQTYS <> 0 Then
                'Trade Future
                txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 2)
            End If
        End If
        
        
        'Net Future
        txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)
    Else
        Set cmd = New ADODB.Command
        FUTURESA = 0
        FUTURESD = 0
        FUTURESQTYA = 0
        FUTURESQTYD = 0
        cmd.ActiveConnection = con
        cmd.CommandType = adCmdStoredProc
        If userinfo.SELUSERCD = "" Then
'            cmd.CommandText = "QryFuture"
'            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
'            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
             'Added by AAP on 26/11/2012
            '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryFutureStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
                cmd.CommandText = "QryFutureWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            Else
                cmd.CommandText = "QryFuture"
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            End If
            '-------------------------------------------------------------------------------------------------
        Else
'            cmd.CommandText = "QryFutureUserCodeWise"
'            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(Trim$(userinfo.SELUSERCD)) - 8))
'            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
             'Added by AAP on 26/11/2012
             '-------------------------------------------------------------------------------------------------
            If mintStrategyID > 0 Then
                cmd.CommandText = "QryFutureUserCodeWiseStrategywise"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
            ElseIf mintStrategyID = -1 Then
                cmd.CommandText = "QryFutureUserCodeWiseWithNoneStrategy"
                cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            Else
                  cmd.CommandText = "QryFutureUserCodeWise"
                  cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                  cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                  cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                  cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            End If
           '-------------------------------------------------------------------------------------------------
        End If
        Set rsFuture = New ADODB.Recordset
        Set rsFuture = cmd.Execute
        If rsFuture.EOF = False Then
            Do Until rsFuture.EOF
'                If Trim$(rsFuture!CP) = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
                    If IsNull(rsFuture!OPTIONVALP) = False Then
                        If Format(CDate(rsFuture!TRADEDT), "DD/MM/YYYY") = Format(txtDate.Text, "DD/MM/YYYY") Then
                            'For Todays Future
                            FUTURESA = FUTURESA + Val(rsFuture!OPTIONVALP)
                            FUTURESQTYA = FUTURESQTYA + Val(rsFuture!OPTIONPQTY)
                            txtTFutu.Text = Val(txtTFutu.Text) + Val(rsFuture!OPTIONPQTY)
                        Else
                            'For Previous Future
                            FUTURESD = FUTURESD + Val(rsFuture!OPTIONVALP)
                            FUTURESQTYD = FUTURESQTYD + Val(rsFuture!OPTIONPQTY)
                            txtPFutu.Text = Val(txtPFutu.Text) + Val(rsFuture!OPTIONPQTY)
                        End If
                    End If
'                End If
                rsFuture.MoveNext
            Loop
        End If
        rsFuture.Close
        Set rsFuture = Nothing
        Set cmd.ActiveConnection = Nothing
        Set cmd = Nothing
        
        FUTURES = 0
        FUTUREQTYS = 0
        FUTURES = FUTURESA + FUTURESD
        FUTURES = FUTURESA + FUTURESD
        FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)
        If FUTUREQTYS <> 0 Then
            'Trade Future
            txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 2)
        End If
        'Net Future
        txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)
    End If
End If


'Calculating Stock
Set cmd = New ADODB.Command
STOCKSA = 0
STOCKSD = 0
STOCKSQTYA = 0
STOCKSQTYD = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
cmd.CommandText = "QryStock"
If userinfo.SELUSERCD = "" Then
'    cmd.CommandText = "QryStock"
'    cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'    cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
'    cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
    'Added by AAP on 26/11/2012
    '-------------------------------------------------------------------------------------------------
    If mintStrategyID > 0 Then
        cmd.CommandText = "QryStockStrategywise"
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
    ElseIf mintStrategyID = -1 Then
        cmd.CommandText = "QryStockWithNoneStrategy"
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
    Else
        cmd.CommandText = "QryStock"
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
    End If
    '-------------------------------------------------------------------------------------------------
Else
    If strIsUserCodeOrUserName = "Name" Then
'        cmd.CommandText = "QryStockUserNameWise"
'        cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'        cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'        cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
'        cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
         'Added by AAP on 26/11/2012
        '-------------------------------------------------------------------------------------------------
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryStockUserNameWiseStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then
            cmd.CommandText = "QryStockUserNameWiseWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryStockUserNameWise"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        '-------------------------------------------------------------------------------------------------
    Else
'        cmd.CommandText = "QryStockUserCodeWise"
'        cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'        cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'        cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
'        cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
         'Added by AAP on 26/11/2012
        '-------------------------------------------------------------------------------------------------
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryStockUserCodeWiseStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then
            cmd.CommandText = "QryStockUserCodeWiseWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryStockUserCodeWise"
            cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        End If
        '-------------------------------------------------------------------------------------------------
    End If
End If

Set rsStock = New ADODB.Recordset
Set rsStock = cmd.Execute
If rsStock.EOF = False Then
    Do Until rsStock.EOF
        If Left(rsStock!Cashtype, 1) = "E" Then
'           If Trim$(rsStock!CP) = "" Or IsNull(rsStock!CP) Or rsStock!CP = "1" Then
                If IsNull(rsStock!STOCKQTY) = False Then
                    If Format(CDate(rsStock!TRADEDT), "DD/MM/YYYY") = Format(txtDate.Text, "DD/MM/YYYY") Then
                        'Todays Stock
                        STOCKSA = STOCKSA + Val(rsStock!Stock)
                        STOCKSQTYA = STOCKSQTYA + Val(rsStock!STOCKQTY)
                        txtTStock.Text = Val(txtTStock.Text) + Val(rsStock!STOCKQTY)
                    Else
                        'Previous Stock
                        STOCKSD = STOCKSD + Val(rsStock!Stock)
                        STOCKSQTYD = STOCKSQTYD + Val(rsStock!STOCKQTY)
                        txtPStock.Text = Val(txtPStock.Text) + Val(rsStock!STOCKQTY)
                    End If
                End If
'            End If
        End If
        rsStock.MoveNext
    Loop
End If
rsStock.Close
Set rsStock = Nothing
Set cmd.ActiveConnection = Nothing
Set cmd = Nothing

STOCKS = 0
STOCKQTYS = 0
STOCKS = STOCKSA + STOCKSD
STOCKQTYS = Val(txtTStock.Text) + Val(txtPStock.Text)
      
If STOCKSQTYA <> 0 Then
    'Equity
    txtEquity.Text = Round(STOCKSA)
End If
If STOCKQTYS <> 0 Then
    'Trade Stock
    txtTradeStock.Text = Round(STOCKS / STOCKQTYS, 2)
End If
'Net Stock
txtNStock.Text = Val(txtTStock.Text) + Val(txtPStock.Text)

dblFUTURES = FUTURESQTYA + FUTURESQTYD
dblSTOCKS = STOCKSQTYA + STOCKSQTYD
If dblFUTURES = 0 And dblSTOCKS = 0 Then
    'Future Stock Realized
    txtFSR.Text = Val(txtFSR.Text) + FUTURESA + STOCKSA + FUTURESD + STOCKSD
End If

cur1 = FUTURESA + STOCKSA + FUTURESD + STOCKSD
cur2 = FUTURESQTYA + STOCKSQTYA + FUTURESQTYD + STOCKSQTYD
If (FUTURESQTYA + STOCKSQTYA + FUTURESQTYD + STOCKSQTYD) <> 0 Then
    cur3 = cur1 / cur2
    'Net Trade
    If dblInterestRate = 2 Then
        txtNTrade.Text = Round(cur3, 4)
    Else
        txtNTrade.Text = Round(cur3, 2)
    End If
End If

If Val(txtNTrade.Text) = 0 Then
    'Future Stock Realized
    txtFSR.Text = FUTURESA + STOCKSA + FUTURESD + STOCKSD
End If


Exit Sub
ErrHand:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error-Calculation"
End Sub













Public Sub FillStrike()
Call Calculation
End Sub


Private Sub CurrencyCalculation(List As ListItem, curStrike As Double, strCP As String, lngColor1 As Long)

Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim rsQ2 As ADODB.Recordset
Dim cmd2 As ADODB.Command

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)

'If Val(txtRate.Text) <= 0 Then
'    txtRate.Text = GetRate(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
'End If
'
'If Val(txtCall.Text) <= 0 Then
'    txtCall.Text = GetCall(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
'End If
'
'If Val(txtPut.Text) <= 0 Then
'    txtPut.Text = GetPut(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
'End If

If strPubIsNewIVForCurrency = "1" Then
    Set rsQ2 = New ADODB.Recordset
    Set cmd2 = New ADODB.Command
    cmd2.ActiveConnection = con
    cmd2.CommandType = adCmdStoredProc
    cmd2.CommandText = "QryGetNewIV"
    cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
    cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
    cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8)))
    cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))

    rsQ2.CursorLocation = adUseClient
    rsQ2.CursorType = adOpenKeyset
    rsQ2.LockType = adLockOptimistic
    Set rsQ2 = cmd2.Execute
    If rsQ2.EOF = False Then
        If strCP = "C" Then
            strCall = rsQ2!NewIV
        ElseIf strCP = "P" Then
            strPut = rsQ2!NewIV
        End If
    Else
        If strCP = "C" Then
            strCall = Val(txtCall.Text)
        ElseIf strCP = "P" Then
            strPut = Val(txtPut.Text)
        End If
    End If
    rsQ2.Close
    Set rsQ2 = Nothing
    Set cmd2 = Nothing
Else
    strCall = txtCall.Text
    strPut = txtPut.Text
End If

'Added by PSM 12/12/2011
If blnIsMarketDynamicsOpen = True Then
    If strUpsideDownsideFlag = "U" Then
        If strCP = "C" Then
            strCall = Val(strCall) + (Val(strCall) * (Val(frmMarketDynamics_IV.txtUpsideVol.Text) / 100))
            strCall = Round(Val(strCall), 2)
        ElseIf strCP = "P" Then
            strPut = Val(strPut) + (Val(strPut) * (Val(frmMarketDynamics_IV.txtUpsideVol.Text) / 100))
            strPut = Round(Val(strPut), 2)
        End If
    ElseIf strUpsideDownsideFlag = "D" Then
        If strCP = "C" Then
            strCall = Val(strCall) - (Val(strCall) * (Val(frmMarketDynamics_IV.txtDownsideVol.Text) / 100))
            strCall = Round(Val(strCall), 2)
        ElseIf strCP = "P" Then
            strPut = Val(strPut) - (Val(strPut) * (Val(frmMarketDynamics_IV.txtDownsideVol.Text) / 100))
            strPut = Round(Val(strPut), 2)
        End If
    End If
End If

If strCP = "C" Then
    List.SubItems(2) = 0
    List.SubItems(3) = 0
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = curRate - curStrike
        List.SubItems(7) = 100 / 100
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
        List.SubItems(15) = 0
        List.SubItems(16) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = 0
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
        List.SubItems(15) = 0
        List.SubItems(16) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = 50 / 100
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
        List.SubItems(15) = 0
        List.SubItems(16) = 0
    Else
        List.SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(7) = Format(CalculateDeltaCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(8) = 0
        List.SubItems(9) = Format(-(CalculateThetaCallCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), "0.0000") 'Theta
        List.SubItems(10) = 0
        List.SubItems(11) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(12) = 0
        List.SubItems(13) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(14) = 0
        List.SubItems(15) = Format(CalculateRhoCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(16) = 0
    End If
    List.SubItems(6) = Val(strCall) 'lv
End If

If strCP = "P" Then
    List.SubItems(2) = 0
    List.SubItems(3) = 0
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = 0
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
        List.SubItems(15) = 0
        List.SubItems(16) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = curStrike - curRate
        List.SubItems(7) = -100 / 100
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
        List.SubItems(15) = 0
        List.SubItems(16) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = -50 / 100
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
        List.SubItems(15) = 0
        List.SubItems(16) = 0
    Else
        'List.SubItems(4) = SymArith(CalculateLastPut(Val(txtRate.Text), dblinterestrate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), 2)
        List.SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(7) = Format(CalculateDeltaPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(8) = 0
        List.SubItems(9) = Format(-(CalculateThetaPutCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), "0.0000")
        List.SubItems(10) = 0
        List.SubItems(11) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(12) = 0
        List.SubItems(13) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(14) = 0
        List.SubItems(15) = Format(CalculateRhoPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(16) = 0
    End If
    List.SubItems(6) = Val(strPut)
End If

'Filling Color
''List.ListSubItems(2).ForeColor = lngColor1
''List.ListSubItems(2).Bold = True
''List.ListSubItems(3).ForeColor = lngColor1
''List.ListSubItems(3).Bold = True
''List.ListSubItems(4).ForeColor = lngColor1
''List.ListSubItems(4).Bold = True
''List.ListSubItems(5).ForeColor = lngColor1
''List.ListSubItems(5).Bold = True
''List.ListSubItems(6).ForeColor = lngColor1
''List.ListSubItems(6).Bold = True
''List.ListSubItems(7).ForeColor = lngColor1
''List.ListSubItems(7).Bold = True
''List.ListSubItems(8).ForeColor = lngColor1
''List.ListSubItems(8).Bold = True
''List.ListSubItems(9).ForeColor = lngColor1
''List.ListSubItems(9).Bold = True
''List.ListSubItems(10).ForeColor = lngColor1
''List.ListSubItems(10).Bold = True
''List.ListSubItems(11).ForeColor = lngColor1
''List.ListSubItems(11).Bold = True
''List.ListSubItems(12).ForeColor = lngColor1
''List.ListSubItems(12).Bold = True
''List.ListSubItems(13).ForeColor = lngColor1
''List.ListSubItems(13).Bold = True
End Sub



Private Sub GreeksCalculation(List As ListItem, curStrike As Double, strCP As String, lngColor1 As Long)
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim rsQ2 As ADODB.Recordset
Dim cmd2 As ADODB.Command

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)

If Val(txtRate.Text) <= 0 Then
    txtRate.Text = GetRate(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
End If

If Val(txtCall.Text) <= 0 Then
    txtCall.Text = GetCall(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
End If

If Val(txtPut.Text) <= 0 Then
    txtPut.Text = GetPut(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
End If

If blnPubIsPortfolioOpen = True Then
    If strShowAlert = "1" Then
        Set rsQ2 = New ADODB.Recordset
        Set cmd2 = New ADODB.Command
        cmd2.ActiveConnection = con
        cmd2.CommandType = adCmdStoredProc
        cmd2.CommandText = "QryGetNewIVTemp"

        cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
        cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
        cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8)))
        cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))

        rsQ2.CursorLocation = adUseClient
        rsQ2.CursorType = adOpenKeyset
        rsQ2.LockType = adLockOptimistic
        Set rsQ2 = cmd2.Execute
        If rsQ2.EOF = False Then
            If strCP = "C" Then
                strCall = rsQ2!NewIV
            ElseIf strCP = "P" Then
                strPut = rsQ2!NewIV
            End If
        Else
            If strCP = "C" Then
                strCall = Val(txtCall.Text)
            ElseIf strCP = "P" Then
                strPut = Val(txtPut.Text)
            End If
        End If
        rsQ2.Close
        Set rsQ2 = Nothing
        Set cmd2 = Nothing
    Else
        If strPubIsNewIV = "1" Then
            Set rsQ2 = New ADODB.Recordset
            Set cmd2 = New ADODB.Command
            cmd2.ActiveConnection = con
            cmd2.CommandType = adCmdStoredProc
            cmd2.CommandText = "QryGetNewIV"

            cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
            cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
            cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8)))
            cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))

            rsQ2.CursorLocation = adUseClient
            rsQ2.CursorType = adOpenKeyset
            rsQ2.LockType = adLockOptimistic
            Set rsQ2 = cmd2.Execute
            If rsQ2.EOF = False Then
                If strCP = "C" Then
                    strCall = rsQ2!NewIV
                ElseIf strCP = "P" Then
                    strPut = rsQ2!NewIV
                End If
            Else
                If strCP = "C" Then
                    strCall = Val(txtCall.Text)
                ElseIf strCP = "P" Then
                    strPut = Val(txtPut.Text)
                End If
            End If
            rsQ2.Close
            Set rsQ2 = Nothing
            Set cmd2 = Nothing
        Else
            strCall = txtCall.Text
            strPut = txtPut.Text
        End If
    End If
Else
    If strPubIsNewIV = "1" Then
        Set rsQ2 = New ADODB.Recordset
        Set cmd2 = New ADODB.Command
        cmd2.ActiveConnection = con
        cmd2.CommandType = adCmdStoredProc
        cmd2.CommandText = "QryGetNewIV"

        cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
        cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
        cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8)))
        cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))

        rsQ2.CursorLocation = adUseClient
        rsQ2.CursorType = adOpenKeyset
        rsQ2.LockType = adLockOptimistic
        Set rsQ2 = cmd2.Execute
        If rsQ2.EOF = False Then
            If strCP = "C" Then
                strCall = rsQ2!NewIV
            ElseIf strCP = "P" Then
                strPut = rsQ2!NewIV
            End If
        Else
            If strCP = "C" Then
                strCall = Val(txtCall.Text)
            ElseIf strCP = "P" Then
                strPut = Val(txtPut.Text)
            End If
        End If
        rsQ2.Close
        Set rsQ2 = Nothing
        Set cmd2 = Nothing
    Else
        strCall = txtCall.Text
        strPut = txtPut.Text
    End If
End If

'Added by PSM 12/12/2011
If blnIsMarketDynamicsOpen = True Then
    If strUpsideDownsideFlag = "U" Then
        If strCP = "C" Then
            strCall = Val(strCall) + (Val(strCall) * (Val(frmMarketDynamics_IV.txtUpsideVol.Text) / 100))
            strCall = Round(Val(strCall), 2)
        ElseIf strCP = "P" Then
            strPut = Val(strPut) + (Val(strPut) * (Val(frmMarketDynamics_IV.txtUpsideVol.Text) / 100))
            strPut = Round(Val(strPut), 2)
        End If
    ElseIf strUpsideDownsideFlag = "D" Then
        If strCP = "C" Then
            strCall = Val(strCall) - (Val(strCall) * (Val(frmMarketDynamics_IV.txtDownsideVol.Text) / 100))
            strCall = Round(Val(strCall), 2)
        ElseIf strCP = "P" Then
            strPut = Val(strPut) - (Val(strPut) * (Val(frmMarketDynamics_IV.txtDownsideVol.Text) / 100))
            strPut = Round(Val(strPut), 2)
        End If
    End If
End If


If strCP = "C" Then
    
    List.SubItems(2) = 0
    List.SubItems(3) = 0
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = curRate - curStrike
        List.SubItems(7) = 100
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(13) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = 0
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = 50
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
    Else
        List.SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatLastVal)
        List.SubItems(7) = Format(CalculateDeltaCall(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatDelta)
        List.SubItems(8) = 0
        List.SubItems(9) = Format(-(CalculateThetaCall(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), strPubFormatTheta) 'Theta
        List.SubItems(10) = 0
        List.SubItems(11) = Format(CalculateVega(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatVega)
        List.SubItems(12) = 0
        List.SubItems(13) = Format(CalculateGamma(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatGamma)
        List.SubItems(14) = 0
    End If
    List.SubItems(6) = Val(strCall) 'lv
End If

If strCP = "P" Then
    List.SubItems(2) = 0
    List.SubItems(3) = 0
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = 0
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = curStrike - curRate
        List.SubItems(7) = -100
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(7) = -50
        List.SubItems(8) = 0
        List.SubItems(9) = 0
        List.SubItems(10) = 0
        List.SubItems(11) = 0
        List.SubItems(12) = 0
        List.SubItems(13) = 0
        List.SubItems(14) = 0
    Else
        List.SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatLastVal)
        List.SubItems(7) = Format(CalculateDeltaPut(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatDelta)
        List.SubItems(8) = 0
        List.SubItems(9) = Format(-(CalculateThetaPut(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), strPubFormatTheta)
        List.SubItems(10) = 0
        List.SubItems(11) = Format(CalculateVega(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatVega)
        List.SubItems(12) = 0
        List.SubItems(13) = Format(CalculateGamma(Val(txtRate.Text), dblInterestRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatGamma)
        List.SubItems(14) = 0
    End If
    List.SubItems(6) = Val(strPut)
End If

''Filling Color
'List.ListSubItems(3).ForeColor = lngColor1
'List.ListSubItems(3).Bold = True
'List.ListSubItems(4).ForeColor = lngColor1
'List.ListSubItems(4).Bold = True
'List.ListSubItems(5).ForeColor = lngColor1
'List.ListSubItems(5).Bold = True
'List.ListSubItems(6).ForeColor = lngColor1
'List.ListSubItems(6).Bold = True
'List.ListSubItems(7).ForeColor = lngColor1
'List.ListSubItems(7).Bold = True
'List.ListSubItems(8).ForeColor = lngColor1
'List.ListSubItems(8).Bold = True
'List.ListSubItems(9).ForeColor = lngColor1
'List.ListSubItems(9).Bold = True
'List.ListSubItems(10).ForeColor = lngColor1
'List.ListSubItems(10).Bold = True
'List.ListSubItems(11).ForeColor = lngColor1
'List.ListSubItems(11).Bold = True
'List.ListSubItems(12).ForeColor = lngColor1
'List.ListSubItems(12).Bold = True
'List.ListSubItems(13).ForeColor = lngColor1
'List.ListSubItems(13).Bold = True
''List.ListSubItems(14).ForeColor = lngColor1
''List.ListSubItems(14).Bold = True
End Sub







Private Sub cmbStrategy_Click()
''Added by AAP on 22/11/2012
Dim cmd As ADODB.Command
Dim intRec As Integer
Dim blnIsTraded As Boolean

Dim rsCMD As New ADODB.Recordset
If cmbUserName.Text <> "" Then

    intRec = 0
    userinfo.SELUSERCD = cmbUserName.Text
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = con
    cmd.CommandType = adCmdStoredProc
    cmd.CommandText = "QrySelectUsersScript"
    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))
    
    rsCMD.CursorType = adOpenKeyset
    rsCMD.LockType = adLockOptimistic
    Set rsCMD = cmd.Execute
    
    If rsCMD.EOF = False Then
        While Not rsCMD.EOF
            If rsCMD!Script = strScript Then
                intRec = intRec + 1
            End If
            rsCMD.MoveNext
        Wend
    End If
    If intRec = 0 Then
        
        MsgBox "No script present for the selected User Code!!!", vbCritical, "Error"
        userinfo.SELUSERCD = ""
        cmbUserName.ListIndex = -1
        SSTab2.Caption = strPubMyDesc
        Call ClearAll
        Call FillStrike
        Call CalculateSummary
        Exit Sub
    End If
    
    rsCMD.Close
    SSTab2.Caption = strPubMyDesc & "-" & userinfo.SELUSERCD
    Call ClearAll
    Call FillStrike
    Call CalculateSummary
    
    
End If
End Sub

Private Sub cmbUserName_Click()
Dim cmd As ADODB.Command
Dim intRec As Integer
Dim blnIsTraded As Boolean

Dim rsCMD As New ADODB.Recordset
If cmbUserName.Text <> "" Then

    intRec = 0
    userinfo.SELUSERCD = cmbUserName.Text
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = con
    cmd.CommandType = adCmdStoredProc
    cmd.CommandText = "QrySelectUsersScript"
    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))
    
    rsCMD.CursorType = adOpenKeyset
    rsCMD.LockType = adLockOptimistic
    Set rsCMD = cmd.Execute
    
    If rsCMD.EOF = False Then
        While Not rsCMD.EOF
            If rsCMD!Script = strScript Then
                intRec = intRec + 1
            End If
            rsCMD.MoveNext
        Wend
    End If
    If intRec = 0 Then
        
        MsgBox "No script present for the selected User Code!!!", vbCritical, "Error"
        userinfo.SELUSERCD = ""
        cmbUserName.ListIndex = -1
        SSTab2.Caption = strPubMyDesc
        Call ClearAll
        Call FillStrike
        Call CalculateSummary
        Exit Sub
    End If
    
    rsCMD.Close
    SSTab2.Caption = strPubMyDesc & "-" & userinfo.SELUSERCD
    Call ClearAll
    Call FillStrike
    Call CalculateSummary
    
    
End If
End Sub


Private Sub cmdCalculator_Click()
On Error Resume Next
Shell "calc.exe", vbNormalFocus
End Sub


Private Sub cmdClose_Click()
Unload Me
End Sub


'Private Sub cmdSave_Click()
'
'If blnIsFutureTempAdd = True Or blnIsOptionTempAdd = True Then
'    Call SaveHandEntries
'End If
'If mode = False Then
'    Call SaveNewPortfolio
'End If






'Modified By: Sachin Pachkude
'Modified Date: 26/05/2009
'Modified Date: 04/06/2009
''Description: Code for shortcut keys
'Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
'If (Shift And vbAltMask) And (KeyCode = vbKeyO) Then
'    Call MDIMain.LoadOption
'ElseIf (Shift And vbShiftMask) And (KeyCode = vbKeyF) Then
'    Call MDIMain.LoadFuture
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyE) Then
'    frmExpdet.Show vbModal
'ElseIf (Shift And vbShiftMask) And (KeyCode = vbKeyS) Then
'    Call MDIMain.LoadStrike
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyT) Then
'    Call MDIMain.LoadTraidTrail
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyN) Then
'    Call MDIMain.LoadSimulation
'End If
'End Sub

Public Sub MenusOnOpen()
'File Menus
'MDIMain.mnuFileNewPortfolio.Enabled = False
MDIMain.mnuFileOpenPortfolio.Enabled = False
MDIMain.mnuFileSavePortfolio.Enabled = True
MDIMain.mnuFileDeletePortfolio.Enabled = True
MDIMain.mnuUploadBhavcopyFile.Enabled = True
'If mode = False Then
'    MDIMain.mnuFileRestucturePortfolio.Enabled = False
'Else
'    MDIMain.mnuFileRestucturePortfolio.Enabled = False
'End If

MDIMain.mnuFileClose.Enabled = True
MDIMain.mnuSettingsCarryForward.Enabled = True
MDIMain.mnuViewMultiContract.Enabled = True
MDIMain.mnuViewUserPortfolioDetails.Enabled = True

MDIMain.mnuUpload.Enabled = True 'Whole Upload Menu
MDIMain.mnuUtility.Enabled = True 'Whole Utility Menu
MDIMain.mnuReports.Enabled = True 'Whole Report Menu
MDIMain.mnuMasters.Enabled = False 'Whole Master Menu

MDIMain.Toolbar1.Enabled = True
End Sub

Private Sub MenusOnLoad()
'File Menus
'MDIMain.mnuFileNewPortfolio.Enabled = False
MDIMain.mnuFileOpenPortfolio.Enabled = False
MDIMain.mnuFileSavePortfolio.Enabled = False
MDIMain.mnuFileDeletePortfolio.Enabled = False
MDIMain.mnuFileClose.Enabled = True

MDIMain.mnuViewMultiContract.Enabled = False
MDIMain.mnuViewUserPortfolioDetails.Enabled = False

MDIMain.mnuUpload.Enabled = False 'Whole Upload Menu
MDIMain.mnuUtility.Enabled = False 'Whole Utility Menu
MDIMain.mnuReports.Enabled = False 'Whole Report Menu
MDIMain.mnuMasters.Enabled = False 'Whole Master Menu
MDIMain.mnuView.Enabled = False
End Sub








Private Sub Form_Load()
'userinfo.SELUSERCD = ""
'Call FillCombo
If RS.State = 1 Then RS.Close
blnIsLoading = True
txtDate.Text = Format(Date, "dd-MMM-yyyy")
Call ClearAll
Call SetTabs(strPubMyDesc)
'Added by AAP on 26/11/2012
'-------------------------------------------------------------------------------------------------
strSelectedStrategy = frmLiveGraphAnalysisWithStrategy.cmbStrategy.Text
'frmLiveGraphAnalysisWithStrategy.cmbStrategy.Text = strSelectedStrategy
If strSelectedStrategy = "All" Then
    mintStrategyID = 0
ElseIf strSelectedStrategy = "None" Then
    mintStrategyID = -1
Else
    Dim strStrategyID As String
    Dim rsStrategyID As ADODB.Recordset
    
    Set rsStrategyID = New ADODB.Recordset
    strStrategyID = "Select StrategyID from MstStrategies where StrategyName='" & strSelectedStrategy & "'"
    rsStrategyID.Open strStrategyID, con, adOpenForwardOnly, adLockOptimistic
    
    If rsStrategyID.EOF = False Then
        mintStrategyID = rsStrategyID!StrategyID
    End If
End If
'-------------------------------------------------------------------------------------------------
Call FillDetails(strPubMyDesc)
Call FillStrike
Call CalculateSummary

End Sub

Public Sub FillStrategy()
'Added by AAP on 03/11/2012
Dim strStrategy As String
Dim rsStrategy As ADODB.Recordset
cmbStrategy.Clear
strStrategy = "Select StrategyName From MstStrategies order by StrategyName"
Set rsStrategy = New ADODB.Recordset
rsStrategy.Open strStrategy, con, adOpenStatic, adLockReadOnly

cmbStrategy.AddItem "All"
cmbStrategy.AddItem "None"
If rsStrategy.EOF = False Then
    While Not rsStrategy.EOF
        cmbStrategy.AddItem rsStrategy!StrategyName
        rsStrategy.MoveNext
    Wend
End If
rsStrategy.Close
Set rsStrategy = Nothing
cmbStrategy.ListIndex = 0
End Sub


Public Sub SetTabs(strPortfolio As String)
SSTab2.Tabs = 1
SSTab2.Caption = UCase(strPortfolio) & "-" & userinfo.SELUSERCD
End Sub

Public Sub FillDetails(strPortfolio As String)
Dim strQ As String
Dim rsQ As ADODB.Recordset
strQ = "Select * From RepFullSheetM Where My_strDesc='" & strPortfolio & "' and IsNull(UserCD)"  ''commented by AAP on 23/11/2012
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic

If rsQ.EOF = False Then
    Index = rsQ!Index
    SYMBOL = rsQ!Symbolname
    txtExpDt.Text = Format(CDate(rsQ!ExpDt), "dd-mmm-yyyy")
    txtDate.Text = Format(CDate(Date), "dd-mmm-yyyy")
    strScript = Trim$(Left(strPortfolio, Len(strPortfolio) - 7))
    txtRate.Text = rsQ!MkPrice
    
    dblPreviousRate = Val(txtRate.Text)
    txtDays.Text = DateDiff("D", CDate(txtDate.Text), CDate(txtExpDt.Text))
    
'    If blnPubIsPortfolioMgmtOpen = True Then
'        If Val(txtDays.Text) >= intPubNoOfDaysToBeReduced Then
'            txtDays.Text = Val(txtDays.Text) - intPubNoOfDaysToBeReduced
'            txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
'        End If
'    End If

    dblInterestRate = rsQ!intRate 'Updated By SSP 02/01/2013

    If blnShowSummaryPortfolioNewReq = True Then
        If gblnAutomaticDaysReduce = True Then
            If dblInterestRate = 2 Then
                If Val(txtDays.Text) >= gdblAutomaticDaysReduceCur Then 'Added By SSP 02/01/2013
                    txtDays.Text = Val(txtDays.Text) - gdblAutomaticDaysReduceCur
                    txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
                End If
            Else
                If Val(txtDays.Text) >= gdblAutomaticDaysReduce Then
                    txtDays.Text = Val(txtDays.Text) - gdblAutomaticDaysReduce
                    txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
                End If
            End If
        Else
            If Val(txtDays.Text) >= intPubNoOfDaysToBeReduced Then
                txtDays.Text = Val(txtDays.Text) - intPubNoOfDaysToBeReduced
                txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
            End If
        End If
    End If
    
    
    RateDiff = rsQ!RateDiff
    StAbovetxt = rsQ!StAbovetxt
    StBelowtxt = rsQ!StBelowtxt
'    dblinterestrate = rsQ!intRate
    
    txtCall.Text = rsQ!Call
    dblPreviousCall = Val(txtCall.Text)
    
    txtPut.Text = rsQ!Put
    dblPreviousPut = Val(txtPut.Text)
    
    txtDomesticIntRate.Text = "0"
    txtForeignIntRate.Text = "0"
    
    txtLotSize.Text = ""
    intExpense = 1 'Change Here 8/9/2011
    If dblInterestRate = 2 Then
        intExpense = 2 'Change Here 8/9/2011
        strLotSize = "Select * From Script_MST Where ScrName='" & Trim$(Left(strPortfolio, Len(strPortfolio) - 7)) & "'"
        Set rsLotSize = New ADODB.Recordset
        rsLotSize.Open strLotSize, con, adOpenStatic, adLockReadOnly
        If rsLotSize.EOF = False Then
            curLotSize = IIf(IsNull(rsLotSize!LotSize) = True, 1, rsLotSize!LotSize)
        Else
            curLotSize = 1
        End If
        rsLotSize.Close
        Set rsLotSize = Nothing
        
        txtLotSize.Text = curLotSize
        txtDomesticIntRate.Text = rsQ!mUp1Bal
        dblPreviousDomesticIntRate = rsQ!mUp1Bal
        txtForeignIntRate.Text = rsQ!mup2Bal
        dblPreviousForeignIntRate = rsQ!mup2Bal
    End If
    
'    MidStrike = rsQ!MidStrike
End If
rsQ.Close
Set rsQ = Nothing
End Sub

Private Sub txtCall_GotFocus()
txtCall.SelStart = 0
txtCall.SelLength = Len(txtCall.Text)
End Sub
Private Sub txtCall_KeyPress(KeyAscii As Integer)

KeyAscii = CHECKNUMDECI(txtCall, KeyAscii, 2)
If KeyAscii = 13 Then
    
    If Val(txtCall.Text) = 0 And Trim$(txtCall.Text) <> "" Then
        MsgBox "Call Volatility can not be a 0 value!!!" & vbCrLf & "Inserting last stored Call Volatility.", vbCritical, "Wrong Call Volatility"
        txtCall.Text = dblPreviousCall
        Exit Sub
    ElseIf Trim$(txtCall.Text) = "" Then
        MsgBox "Call Volatility can not be empty!!!" & vbCrLf & "Inserting last stored Call Volatility.", vbCritical, "Empty Call Volatility"
        txtCall.Text = dblPreviousCall
        Exit Sub
    End If

    Call ClearAll
'    Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
End If
End Sub

Private Sub txtCall_LostFocus()


If Val(txtCall.Text) = 0 And Trim$(txtCall.Text) <> "" Then
    MsgBox "Call Volatility can not be a 0 value!!!" & vbCrLf & "Inserting last stored Call Volatility.", vbCritical, "Wrong Call Volatility"
    txtCall.Text = dblPreviousCall
    Exit Sub
ElseIf Trim$(txtCall.Text) = "" Then
    MsgBox "Call Volatility can not be empty!!!" & vbCrLf & "Inserting last stored Call Volatility.", vbCritical, "Empty Call Volatility"
    txtCall.Text = dblPreviousCall
    Exit Sub
End If

  
Call ClearAll
'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary

End Sub

Private Sub txtDate_Change()
'txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
End Sub

Private Sub txtDate_GotFocus()
    NormalColor = txtDate.BackColor
    txtDate.SelStart = 0
    txtDate.SelLength = Len(txtDate.Text)
    'txtDate.BackColor = vbWindowBackground
End Sub

Private Sub txtDays_GotFocus()
txtDays.SelStart = 0
txtDays.SelLength = Len(txtDays.Text)
End Sub

Private Sub txtDays_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

    If Val(txtDays.Text) < 0 Then
        txtDays.Text = 0
    End If
    txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")

    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
    
End If
End Sub

Private Sub txtDays_LostFocus()
If Val(txtDays.Text) < 0 Then
    txtDays.Text = 0
End If
txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
If blnIsLoading = False Then
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
    
End If
End Sub


Private Sub txtExpDt_Change()
txtExpDt.Text = Format(CDate(txtExpDt.Text), "dd-MMM-yyyy")
End Sub

Private Sub txtExpDt_GotFocus()
    NormalColor = txtExpDt.BackColor
    txtExpDt.SelStart = 0
    txtExpDt.SelLength = Len(txtExpDt.Text)
'    txtExpDt.BackColor = vbWindowBackground
End Sub




Private Sub txtPut_GotFocus()
txtPut.SelStart = 0
txtPut.SelLength = Len(txtPut.Text)
End Sub

Private Sub txtput_KeyPress(KeyAscii As Integer)


KeyAscii = CHECKNUMDECI(txtPut, KeyAscii, 2)
If KeyAscii = 13 Then

    If Val(txtPut.Text) = 0 And Trim$(txtPut.Text) <> "" Then
        MsgBox "Put Volatility can not be a 0 value!!!" & vbCrLf & "Inserting last stored Put Volatility.", vbCritical, "Wrong Put Volatility"
        txtPut.Text = dblPreviousPut
        Exit Sub
    ElseIf Trim$(txtPut.Text) = "" Then
        MsgBox "Put Volatility can not be empty!!!" & vbCrLf & "Inserting last stored Put Volatility.", vbCritical, "Empty Put Volatility"
        txtPut.Text = dblPreviousPut
        Exit Sub
    End If
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
    
End If
End Sub

Private Sub txtPut_LostFocus()


If Val(txtPut.Text) = 0 And Trim$(txtPut.Text) <> "" Then
    MsgBox "Put Volatility can not be a 0 value!!!" & vbCrLf & "Inserting last stored Put Volatility.", vbCritical, "Wrong Put Volatility"
    txtPut.Text = dblPreviousPut
    Exit Sub
ElseIf Trim$(txtPut.Text) = "" Then
    MsgBox "Put Volatility can not be empty!!!" & vbCrLf & "Inserting last stored Put Volatility.", vbCritical, "Empty Put Volatility"
    txtPut.Text = dblPreviousPut
    Exit Sub
End If


Call ClearAll
'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary
End Sub



Public Sub ClearAll()

txtLotSize.Text = 0
txtExposure.Text = 0
txtIntMargin.Text = 0
txtExp_Margin.Text = 0
txtEquity.Text = 0
txtCashTotal.Text = 0
txtPrvBalance.Text = 0
txtTExpense.Text = 0
txtNetBalance.Text = 0
txtTotal.Text = 0

txtInShares.Text = 0
txtTotal_DelVal.Text = 0
txtTotal_GMVal.Text = 0
txtTotal_ThetaVal.Text = 0
txtTotal_VGVal.Text = 0
txtTotal_RhoVal.Text = 0


txtTStock.Text = 0
txtNStock.Text = 0
txtTradeStock.Text = 0

txtPAvg.Text = 0
txtTAvg.Text = 0
txtNAvg.Text = 0
txtNTrade.Text = 0

txtDetalC.Text = 0
txtThetaC.Text = 0
txtGammaC.Text = 0
txtVegaC.Text = 0
txtCUnits.Text = 0

txtDetalP.Text = 0
txtThetaP.Text = 0
txtGammaP.Text = 0
txtVegaP.Text = 0
txtPUnits.Text = 0

txtTot_Delta.Text = 0
txtTot_Theta.Text = 0
txtTot_Gamma.Text = 0
txtTot_Vega.Text = 0
txtTUnits.Text = 0

txtPremium.Text = 0
txtFSR.Text = 0
txtOR.Text = 0
txtFSU.Text = 0
txtOU.Text = 0
txtBalance.Text = 0
txtBRFRBL.Text = 0
txtCarryForword.Text = 0

'txtOptionUN.Text = 0
'txtBalanceN.Text = 0
End Sub



Public Sub LOCKALL()

txtInShares.Locked = True
txtTotal_DelVal.Locked = True
txtTotal_GMVal.Locked = True
txtTotal_ThetaVal.Locked = True
txtTotal_VGVal.Locked = True

txtTStock.Locked = True
txtNStock.Locked = True
txtPStock.Locked = True

txtTFutu.Locked = True
txtPFutu.Locked = True

txtPAvg.Locked = True
txtTAvg.Locked = True
txtNAvg.Locked = True
txtNTrade.Locked = True
txtTradeFutu.Locked = True

txtNFutu.Locked = True
txtTradeStock.Locked = True

txtDetalC.Locked = True
txtThetaC.Locked = True
txtGammaC.Locked = True
txtVegaC.Locked = True
txtCUnits.Locked = True

txtDetalP.Locked = True
txtThetaP.Locked = True
txtGammaP.Locked = True
txtVegaP.Locked = True
txtPUnits.Locked = True

txtTot_Delta.Locked = True
txtTot_Theta.Locked = True
txtTot_Gamma.Locked = True
txtTot_Vega.Locked = True
txtTUnits.Locked = True

txtPremium.Locked = True
txtFSR.Locked = True
txtOR.Locked = True
txtFSU.Locked = True
txtOU.Locked = True
txtBalance.Locked = True

txtBRFRBL.Locked = True
txtCarryForword.Locked = True
End Sub

Private Sub txtRate_GotFocus()
txtRate.SelStart = 0
txtRate.SelLength = Len(txtRate.Text)
End Sub

Private Sub txtRate_KeyPress(KeyAscii As Integer)


KeyAscii = CHECKNUMDECI(txtRate, KeyAscii, 2)
If KeyAscii = 13 Then

    If Val(txtRate.Text) = 0 And Trim$(txtRate.Text) <> "" Then
        MsgBox "Rate can not be a 0 value!!!" & vbCrLf & "Inserting last stored rate.", vbCritical, "Wrong Rate Inserted"
        txtRate.Text = dblPreviousRate
        Exit Sub
    ElseIf Trim$(txtRate.Text) = "" Then
        MsgBox "Rate can not be empty value!!!" & vbCrLf & "Inserting last stored rate.", vbCritical, "Empty Rate"
        txtRate.Text = dblPreviousRate
        Exit Sub
    End If
    
    
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
End If
End Sub




Private Sub txtRate_LostFocus()


If Val(txtRate.Text) = 0 And Trim$(txtRate.Text) <> "" Then
    MsgBox "Rate can not be a 0 value!!!" & vbCrLf & "Inserting last stored rate.", vbCritical, "Wrong Rate Inserted"
    txtRate.Text = dblPreviousRate
    Exit Sub
ElseIf Trim$(txtRate.Text) = "" Then
    MsgBox "Rate can not be empty value!!!" & vbCrLf & "Inserting last stored rate.", vbCritical, "Empty Rate"
    txtRate.Text = dblPreviousRate
    Exit Sub
End If

If blnIsLoading = False Then
    
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
End If
End Sub



Public Sub ChangeColor()
'Balance


If Val(txtPremium.Text) < 0 Then
    txtPremium.ForeColor = vbRed
Else
    txtPremium.ForeColor = vbBlue
End If

If Val(txtFSR.Text) < 0 Then
    txtFSR.ForeColor = vbRed
Else
    txtFSR.ForeColor = vbBlue
End If

If Val(txtOR.Text) < 0 Then
    txtOR.ForeColor = vbRed
Else
    txtOR.ForeColor = vbBlue
End If

If Val(txtFSU.Text) < 0 Then
    txtFSU.ForeColor = vbRed
Else
    txtFSU.ForeColor = vbBlue
End If

If Val(txtOU.Text) < 0 Then
    txtOU.ForeColor = vbRed
Else
    txtOU.ForeColor = vbBlue
End If

If Val(txtBalance.Text) < 0 Then
    txtBalance.ForeColor = vbRed
Else
    txtBalance.ForeColor = vbBlue
End If

'Expense
If Val(txtExposure.Text) < 0 Then
    txtExposure.ForeColor = vbRed
Else
    txtExposure.ForeColor = vbBlue
End If


If Val(txtIntMargin.Text) < 0 Then
    txtIntMargin.ForeColor = vbRed
Else
    txtIntMargin.ForeColor = vbBlue
End If

If Val(txtExp_Margin.Text) < 0 Then
    txtExp_Margin.ForeColor = vbRed
Else
    txtExp_Margin.ForeColor = vbBlue
End If

If Val(txtEquity.Text) < 0 Then
    txtEquity.ForeColor = vbRed
Else
    txtEquity.ForeColor = vbBlue
End If

If Val(txtCashTotal.Text) < 0 Then
    txtCashTotal.ForeColor = vbRed
Else
    txtCashTotal.ForeColor = vbBlue
End If

If Val(txtPrvBalance.Text) < 0 Then
    txtPrvBalance.ForeColor = vbRed
Else
    txtPrvBalance.ForeColor = vbBlue
End If

If Val(txtTExpense.Text) < 0 Then
    txtTExpense.ForeColor = vbRed
Else
    txtTExpense.ForeColor = vbBlue
End If

If Val(txtTotal.Text) < 0 Then
    txtTotal.ForeColor = vbRed
Else
    txtTotal.ForeColor = vbBlue
End If

If Val(txtNetBalance.Text) < 0 Then
    txtNetBalance.ForeColor = vbRed
Else
    txtNetBalance.ForeColor = vbBlue
End If

'
If Val(txtInShares.Text) < 0 Then
    txtInShares.ForeColor = vbRed
Else
    txtInShares.ForeColor = vbBlue
End If

If Val(txtTotal_DelVal.Text) < 0 Then
    txtTotal_DelVal.ForeColor = vbRed
Else
    txtTotal_DelVal.ForeColor = vbBlue
End If

If Val(txtTotal_ThetaVal.Text) < 0 Then
    txtTotal_ThetaVal.ForeColor = vbRed
Else
    txtTotal_ThetaVal.ForeColor = vbBlue
End If

If Val(txtTotal_VGVal.Text) < 0 Then
    txtTotal_VGVal.ForeColor = vbRed
Else
    txtTotal_VGVal.ForeColor = vbBlue
End If

If Val(txtTotal_GMVal.Text) < 0 Then
    txtTotal_GMVal.ForeColor = vbRed
Else
    txtTotal_GMVal.ForeColor = vbBlue
End If

'Stock
If Val(txtPStock.Text) < 0 Then
    txtPStock.ForeColor = vbRed
Else
    txtPStock.ForeColor = vbBlue
End If

If Val(txtNStock.Text) < 0 Then
    txtNStock.ForeColor = vbRed
Else
    txtNStock.ForeColor = vbBlue
End If

If Val(txtTStock.Text) < 0 Then
    txtTStock.ForeColor = vbRed
Else
    txtTStock.ForeColor = vbBlue
End If

If Val(txtTradeStock.Text) < 0 Then
    txtTradeStock.ForeColor = vbRed
Else
    txtTradeStock.ForeColor = vbBlue
End If

'Future
If Val(txtPFutu.Text) < 0 Then
    txtPFutu.ForeColor = vbRed
Else
    txtPFutu.ForeColor = vbBlue
End If

If Val(txtNFutu.Text) < 0 Then
    txtNFutu.ForeColor = vbRed
Else
    txtNFutu.ForeColor = vbBlue
End If

If Val(txtTFutu.Text) < 0 Then
    txtTFutu.ForeColor = vbRed
Else
    txtTFutu.ForeColor = vbBlue
End If

If Val(txtTradeFutu.Text) < 0 Then
    txtTradeFutu.ForeColor = vbRed
Else
    txtTradeFutu.ForeColor = vbBlue
End If

'Average
If Val(txtPAvg.Text) < 0 Then
    txtPAvg.ForeColor = vbRed
Else
    txtPAvg.ForeColor = vbBlue
End If

If Val(txtTAvg.Text) < 0 Then
    txtTAvg.ForeColor = vbRed
Else
    txtTAvg.ForeColor = vbBlue
End If

If Val(txtNAvg.Text) < 0 Then
    txtNAvg.ForeColor = vbRed
Else
    txtNAvg.ForeColor = vbBlue
End If

If Val(txtNTrade.Text) < 0 Then
    txtNTrade.ForeColor = vbRed
Else
    txtNTrade.ForeColor = vbBlue
End If

'C
If Val(txtDetalC.Text) < 0 Then
    txtDetalC.ForeColor = vbRed
Else
    txtDetalC.ForeColor = vbBlue
End If

If Val(txtThetaC.Text) < 0 Then
    txtThetaC.ForeColor = vbRed
Else
    txtThetaC.ForeColor = vbBlue
End If

If Val(txtVegaC.Text) < 0 Then
    txtVegaC.ForeColor = vbRed
Else
    txtVegaC.ForeColor = vbBlue
End If

If Val(txtGammaC.Text) < 0 Then
    txtGammaC.ForeColor = vbRed
Else
    txtGammaC.ForeColor = vbBlue
End If

If Val(txtCUnits.Text) < 0 Then
    txtCUnits.ForeColor = vbRed
Else
    txtCUnits.ForeColor = vbBlue
End If


'P
If Val(txtDetalP.Text) < 0 Then
    txtDetalP.ForeColor = vbRed
Else
    txtDetalP.ForeColor = vbBlue
End If

If Val(txtThetaP.Text) < 0 Then
    txtThetaP.ForeColor = vbRed
Else
    txtThetaP.ForeColor = vbBlue
End If

If Val(txtVegaP.Text) < 0 Then
    txtVegaP.ForeColor = vbRed
Else
    txtVegaP.ForeColor = vbBlue
End If

If Val(txtGammaP.Text) < 0 Then
    txtGammaP.ForeColor = vbRed
Else
    txtGammaP.ForeColor = vbBlue
End If

If Val(txtPUnits.Text) < 0 Then
    txtPUnits.ForeColor = vbRed
Else
    txtPUnits.ForeColor = vbBlue
End If

'Total
If Val(txtTot_Delta.Text) < 0 Then
    txtTot_Delta.ForeColor = vbRed
Else
    txtTot_Delta.ForeColor = vbBlue
End If

If Val(txtTot_Theta.Text) < 0 Then
    txtTot_Theta.ForeColor = vbRed
Else
    txtTot_Theta.ForeColor = vbBlue
End If

If Val(txtTot_Vega.Text) < 0 Then
    txtTot_Vega.ForeColor = vbRed
Else
    txtTot_Vega.ForeColor = vbBlue
End If

If Val(txtTot_Gamma.Text) < 0 Then
    txtTot_Gamma.ForeColor = vbRed
Else
    txtTot_Gamma.ForeColor = vbBlue
End If

If Val(txtTUnits.Text) < 0 Then
    txtTUnits.ForeColor = vbRed
Else
    txtTUnits.ForeColor = vbBlue
End If

End Sub

Public Sub CalculateSummary()

'Call CalculateFuture
'Call CalculateStock
'Call CalculateOption
'Call CalculateTrade

txtTotal_DelVal.Text = ""
For intCount = 1 To lstDetails1.ListItems.count
    If lstDetails1.ListItems(intCount).SubItems(1) = "C" And Val(lstDetails1.ListItems(intCount).SubItems(2)) <> 0 Then
        txtDetalC.Text = Val(txtDetalC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(8))
        txtThetaC.Text = Val(txtThetaC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(10))
        txtVegaC.Text = Val(txtVegaC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(12))
        txtGammaC.Text = Val(txtGammaC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(14))
        txtCUnits.Text = Val(txtCUnits.Text) + Val(lstDetails1.ListItems(intCount).SubItems(2))
    ElseIf lstDetails1.ListItems(intCount).SubItems(1) = "P" And Val(lstDetails1.ListItems(intCount).SubItems(2)) <> 0 Then
        txtDetalP.Text = Val(txtDetalP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(8))
        txtThetaP.Text = Val(txtThetaP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(10))
        txtVegaP.Text = Val(txtVegaP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(12))
        txtGammaP.Text = Val(txtGammaP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(14))
        txtPUnits.Text = Val(txtPUnits.Text) + Val(lstDetails1.ListItems(intCount).SubItems(2))
    End If
    
    If lstDetails1.ListItems(intCount).SubItems(1) = "P" And gstrDoNotUsePutOption = "Y" Then
    Else
        txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(8))
    End If
    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(10))
    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(12))
    txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(14))
    txtTotal_RhoVal.Text = Val(txtTotal_RhoVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(16))
    txtPremium.Text = Val(txtPremium.Text) + (Val(lstDetails1.ListItems(intCount).SubItems(2)) * Val(lstDetails1.ListItems(intCount).SubItems(3)))
    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intCount).SubItems(2)) * Val(lstDetails1.ListItems(intCount).SubItems(4)))
Next

If dblInterestRate = 2 Then
    txtTotal_DelVal.Text = Round(Val(txtTotal_DelVal.Text), 4)
    txtTotal_ThetaVal.Text = Round(Val(txtTotal_ThetaVal.Text), 4)
    txtTotal_VGVal.Text = Round(Val(txtTotal_VGVal.Text), 4)
    txtTotal_GMVal.Text = Round(Val(txtTotal_GMVal.Text), 4)
    txtTotal_RhoVal.Text = Round(Val(txtTotal_RhoVal.Text), 4)

    txtDetalC.Text = Round(Val(txtDetalC.Text), 4)
    txtThetaC.Text = Round(Val(txtThetaC.Text), 4)
    txtVegaC.Text = Round(Val(txtVegaC.Text), 4)
    txtGammaC.Text = Round(Val(txtGammaC.Text), 4)
    
    txtDetalP.Text = Round(Val(txtDetalP.Text), 4)
    txtThetaP.Text = Round(Val(txtThetaP.Text), 4)
    txtVegaP.Text = Round(Val(txtVegaP.Text), 4)
    txtGammaP.Text = Round(Val(txtGammaP.Text), 4)
    
    txtTot_Delta.Text = Round(Val(txtDetalC.Text) + Val(txtDetalP.Text), 4) 'Round(Val(txtTotal_DelVal.Text), 0)
    txtTot_Theta.Text = Round(Val(txtThetaC.Text) + Val(txtThetaP.Text), 4)
    txtTot_Gamma.Text = Round(Val(txtGammaC.Text) + Val(txtGammaP.Text), 4)
    txtTot_Vega.Text = Round(Val(txtVegaC.Text) + Val(txtVegaP.Text), 4)
    txtTUnits.Text = Round(Val(txtPUnits.Text) + Val(txtCUnits.Text), 4)
    
    txtNStock.Text = Val(txtTStock.Text) + Val(txtPStock.Text)
    txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)
    txtPAvg.Text = Val(txtPStock.Text) + Val(txtPFutu.Text)
    txtTAvg.Text = Val(txtTStock.Text) + Val(txtTFutu.Text)
    
    txtNAvg.Text = Val(txtNStock.Text) + Val(txtNFutu.Text)
    
    txtInShares.Text = Round(Val(txtTotal_DelVal.Text) - Val(txtNAvg.Text), 4)
    txtFSU.Text = Round((Val(txtNAvg.Text) * (Val(txtNTrade.Text) - Val(txtRate.Text))), 4)
    txtOU.Text = Round(-Val(txtOU.Text), 4)
    
    txtPremium.Text = Round(-Val(txtPremium.Text) * curLotSize, 4)
    txtFSR.Text = Round(-Val(txtFSR.Text) * curLotSize, 4)
    txtOR.Text = Round(-Val(txtOR.Text) * curLotSize, 4)
    txtFSU.Text = Round(-Val(txtFSU.Text) * curLotSize, 4)
    txtOU.Text = Round(-Val(txtOU.Text) * curLotSize, 4)
    txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text), 4)
Else
    txtTotal_DelVal.Text = Round(Val(txtTotal_DelVal.Text), 0)
    txtTotal_ThetaVal.Text = Round(Val(txtTotal_ThetaVal.Text), 0)
    txtTotal_VGVal.Text = Round(Val(txtTotal_VGVal.Text), 0)
    txtTotal_GMVal.Text = Format(Val(txtTotal_GMVal.Text), "0.00")
    
    txtDetalC.Text = Round(Val(txtDetalC.Text), 0)
    txtThetaC.Text = Round(Val(txtThetaC.Text), 0)
    txtVegaC.Text = Round(Val(txtVegaC.Text), 0)
    txtGammaC.Text = Format(Val(txtGammaC.Text), "0.00")
    
    txtDetalP.Text = Round(Val(txtDetalP.Text), 0)
    txtThetaP.Text = Round(Val(txtThetaP.Text), 0)
    txtVegaP.Text = Round(Val(txtVegaP.Text), 0)
    txtGammaP.Text = Format(Val(txtGammaP.Text), "0.00")
    
    txtTot_Delta.Text = Val(txtDetalC.Text) + Val(txtDetalP.Text) 'Round(Val(txtTotal_DelVal.Text), 0)
    txtTot_Theta.Text = Val(txtThetaC.Text) + Val(txtThetaP.Text)
    txtTot_Gamma.Text = Format(Val(txtGammaC.Text) + Val(txtGammaP.Text), "0.00")
    txtTot_Vega.Text = Val(txtVegaC.Text) + Val(txtVegaP.Text)
    txtTUnits.Text = Val(txtPUnits.Text) + Val(txtCUnits.Text)
    
    txtNStock.Text = Val(txtTStock.Text) + Val(txtPStock.Text)
    txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)
    txtPAvg.Text = Val(txtPStock.Text) + Val(txtPFutu.Text)
    txtTAvg.Text = Val(txtTStock.Text) + Val(txtTFutu.Text)
    
    txtNAvg.Text = Val(txtNStock.Text) + Val(txtNFutu.Text)
    
    txtInShares.Text = Val(txtTotal_DelVal.Text) - Val(txtNAvg.Text)
    txtFSU.Text = (Val(txtNAvg.Text) * (Val(txtNTrade.Text) - Val(txtRate.Text)))
    txtOU.Text = -Val(txtOU.Text)
    
    txtPremium.Text = Round(-Val(txtPremium.Text))
    txtFSR.Text = Round(-Val(txtFSR.Text))
    txtOR.Text = Round(-Val(txtOR.Text))
    txtFSU.Text = Round(-Val(txtFSU.Text))
    txtOU.Text = Round(-Val(txtOU.Text))
    txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text))
End If


txtCarryForword.Text = "0"
If blnIsCloseOut = True Then
    strQ = "Select * From RepFullSheetM Where CDate(ExpDt)>=cdate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') and My_strDesc='" & Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)) & "'"
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    If rsQ.EOF = False Then
        If IsNull(rsQ!Field1) = False Then
            If CDate(rsQ!Field1) <= CDate(txtDate.Text) Then
                txtCarryForword.Text = IIf(IsNull(rsQ!mDn1MktPrice) = True, 0, rsQ!mDn1MktPrice)
            Else
                txtCarryForword.Text = "0"
            End If
        Else
            txtCarryForword.Text = "0"
        End If
    Else
        txtCarryForword.Text = "0"
    End If
    
    rsQ.Close
    Set rsQ = Nothing
      
Else

'    txtBRFRBL.Text = "0"
'    txtCarryForword.Text = "0"
    
'    Label8.Visible = False
'    Label7.Visible = False
'    txtBRFRBL.Visible = False
'    txtCarryForword.Visible = False

End If

If dblInterestRate = 2 Then
    txtBRFRBL.Text = Val(txtBalance.Text) + Val(txtCarryForword.Text)
    txtCarryForword.Text = Round(Val(txtCarryForword.Text), 4)
    txtBRFRBL.Text = Round(Val(txtBRFRBL.Text), 4)
Else
    txtBRFRBL.Text = Val(txtBalance.Text) + Val(txtCarryForword.Text)
    txtBRFRBL.Text = Round(Val(txtBRFRBL.Text), 2)
End If

Call CalculateExpense

If strPubIsFormatAllowed = "1" Then
    Call FormatTextBoxValues_4_Portfolio
End If

If strShowNetPosZero = "N" Then
ComeHere:
    For intCount = 1 To lstDetails1.ListItems.count
        If Val(lstDetails1.ListItems(intCount).SubItems(2)) = 0 Then
            lstDetails1.ListItems.Remove intCount
            GoTo ComeHere
        End If
    Next
End If

'Call ChangeColor
    
End Sub








Public Sub CalculateExpense()
On Error GoTo EH

Dim intCount As Integer
Dim curExposureMargin As Currency
Dim strScript As String
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim TodaysExpense As Currency
Dim strExpMst As String
Dim rsExpMst As ADODB.Recordset
Dim Exp_Per_Cr As Currency
Dim cmd As ADODB.Command
Dim unit As Currency
Dim rsPrevBal As ADODB.Recordset
Dim rsPrevBal2 As ADODB.Recordset
Dim strPortfolio As String
Dim curEqBuy As Currency
Dim curEqSell As Currency
Dim curEqDel As Currency
Dim curEqNonDel As Currency
Dim curEqBuyValue As Currency
Dim curEqSellValue As Currency
Dim curEqDelValue As Currency
Dim curEqNonDelValue As Currency

If userinfo.SELUSERCD = "" Then
    strScript = Left(SSTab2.Caption, Len(SSTab2.Caption) - 8)
    strPortfolio = Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)
Else
    strScript = Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8)
    strPortfolio = Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1)
End If
'============================
'Calculating Exposure Margin
'Option
For intCount = 1 To lstDetails1.ListItems.count
    If Val(lstDetails1.ListItems(intCount).SubItems(2)) < 0 Then
        curExposureMargin = curExposureMargin + Abs(Val(lstDetails1.ListItems(intCount).SubItems(2)))
    End If
Next

'Future & Equity
'Note: Exp Margin should not be on Equtity
'curExposureMargin = curExposureMargin + Abs(Val(txtNAvg.Text)) 'Commented By SSP   '22/06/2012
curExposureMargin = curExposureMargin + Abs(Val(txtNFutu.Text)) 'Updated By SSP     '22/06/2012
curExposureMargin = (curExposureMargin * Val(txtRate.Text)) * (frmExpdet.GetExp_Limit(strScript) / 100)

If dblInterestRate = 2 Then
    txtIntMargin.Text = Round(curExposureMargin * curLotSize, 4)
Else
    txtIntMargin.Text = Round(curExposureMargin, 0)
End If
'============================




'============================
'Calculating Span Margin
strQ = "Select * From SpanReq Where ScriptName='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - 8) & "' And CreatedDate='" & Format(txtDate.Text, "DD/MM/YYYY") & "'"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    txtExp_Margin.Text = Round(rsQ!SpanReq - rsQ!NetOptionValue, 2)
Else
    txtExp_Margin.Text = "0"
End If
rsQ.Close
Set rsQ = Nothing
'============================


'============================
'Calculating CashTotal
'CashTotal=Exposure Margin + Span Margin + Equity
txtCashTotal.Text = Round(Val(txtIntMargin.Text) + Val(txtExp_Margin.Text) + Val(txtEquity.Text), 0)
'============================


'============================
'Previous Balance
Set rsPrevBal = New ADODB.Recordset
If userinfo.SELUSERCD = "" Then
    rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') ", con, adOpenStatic, adLockReadOnly
Else
    rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where UserCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') ", con, adOpenStatic, adLockReadOnly
End If
'rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
If IsNull(rsPrevBal!MaxDate) = False Then
    MaxDT = rsPrevBal!MaxDate
    
    Set rsPrevBal2 = New ADODB.Recordset
    If userinfo.SELUSERCD = "" Then
        rsPrevBal2.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenStatic, adLockReadOnly
    Else
        rsPrevBal2.Open "Select * from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenStatic, adLockReadOnly
    End If
    If Not rsPrevBal2.EOF Then
        txtPrvBalance.Text = Round(Val(rsPrevBal2!Closing))
    End If
    rsPrevBal2.Close
    Set rsPrevBal2 = Nothing
Else
    txtPrvBalance.Text = "0"
End If
rsPrevBal.Close
Set rsPrevBal = Nothing
'============================


'============================
'Calculating Todays Expense
If strPubIgnorePortfolio = "Y" Then
    
    Set rsExpMst = New ADODB.Recordset
    strExpMst = "Select * from exp_mst Where SrNo=" & intExpense
    rsExpMst.Open strExpMst, con, adOpenKeyset, adLockOptimistic
    If rsExpMst.EOF = False Then
        Exp_Per_Cr = Val(rsExpMst!Exp_Per_Cr)
        
        
        Set cmd = New ADODB.Command
        cmd.ActiveConnection = con
        cmd.CommandType = adCmdStoredProc
        If userinfo.SELUSERCD = "" Then
'            cmd.CommandText = "QryTodaysExpense"
'            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, strScript)
'            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
'        Else
'            cmd.CommandText = "QryTodaysExpenseUserCode"
'            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, strScript)
'            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
'            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
            
            'Update -1/3/2011
            strQ = "SELECT Sum(Units) AS punits, Sum(Abs(Units)*Traded) AS UniTrd, InType, CashType" & _
                   " From DummyTracker " & _
                   " Where Script ='" & strScript & "' And CDate(ExpDt) = CDate('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & _
                   "') And CDate(TradeDt) = CDate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') " & _
                   " And InDesc<>'CloseOut'" & _
                   " GROUP BY InType, CashType "
            Set rsQ = New ADODB.Recordset
            rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
        Else
            'Update -1/3/2011
            strQ = "SELECT Sum(Units) AS punits, Sum(Abs(Units)*Traded) AS UniTrd, InType, CashType" & _
                   " From DummyTracker " & _
                   " Where Script ='" & strScript & "' And CDate(ExpDt) = CDate('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & _
                   "') And CDate(TradeDt) = CDate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') " & _
                   " And UserCD='" & userinfo.SELUSERCD & "' And InDesc<>'CloseOut'" & _
                   " GROUP BY InType, CashType "
            Set rsQ = New ADODB.Recordset
            rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
        
        End If

        If rsQ.EOF = False Then
'            curEqBuy = 0
'            curEqSell = 0
'            curEqBuyValue = 0
'            curEqSellValue = 0
'            While Not rsQ.EOF
'                If Left(rsQ!cashtype, 2) = "FU" And rsQ!InType = "1" Then
'                    'For Future - Buy
'                    TodaysExpense = TodaysExpense + (rsExpMst!FUTTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
'                ElseIf Left(rsQ!cashtype, 2) = "FU" And rsQ!InType = "2" Then
'                    'For Future - Sell
'                    TodaysExpense = TodaysExpense + (rsExpMst!FUTTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (Val(rsExpMst!FutSTTSell) * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
'                ElseIf Left(rsQ!cashtype, 2) = "OP" And rsQ!InType = "1" Then
'                    'For Option - Buy
'                    TodaysExpense = TodaysExpense + (rsExpMst!OptTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
'                ElseIf Left(rsQ!cashtype, 2) = "OP" And rsQ!InType = "2" Then
'                    'For Option - Sell
'                    TodaysExpense = TodaysExpense + (rsExpMst!OptTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSTTSell * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
'                ElseIf Left(rsQ!cashtype, 2) = "EQ" And rsQ!InType = "1" Then
'                    'CODING FOR NON-DELIVERY - Buy
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
'
'                    'equity delivery - Buy
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtTO * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSD * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSTT * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtOEXP * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtST * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSEBI * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr))
'                ElseIf Left(rsQ!cashtype, 2) = "EQ" And rsQ!InType = "2" Then
'                    'CODING FOR NON-DELIVERY - Sell
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
'
'                    'equity delivery - Sell
'                    If rsQ!punits < 0 Then
'                        unit = -(rsQ!punits)
'                    Else
'                        unit = (rsQ!punits)
'                    End If
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtTO * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSD * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSTT * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtOEXP * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtST * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSEBI * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr))
'                End If
'
'                rsQ.MoveNext
'            Wend
            curEqBuy = 0
            curEqSell = 0
            curEqBuyValue = 0
            curEqSellValue = 0
            While Not rsQ.EOF
                If Left(rsQ!Cashtype, 2) = "FU" And rsQ!InType = "1" Then
                    'For Future - Buy
                    TodaysExpense = TodaysExpense + (rsExpMst!FUTTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
                ElseIf Left(rsQ!Cashtype, 2) = "FU" And rsQ!InType = "2" Then
                    'For Future - Sell
                    TodaysExpense = TodaysExpense + (rsExpMst!FUTTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (Val(rsExpMst!FutSTTSell) * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!FutSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
                ElseIf Left(rsQ!Cashtype, 2) = "OP" And rsQ!InType = "1" Then
                    'For Option - Buy
                    TodaysExpense = TodaysExpense + (rsExpMst!OptTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
                ElseIf Left(rsQ!Cashtype, 2) = "OP" And rsQ!InType = "2" Then
                    'For Option - Sell
                    TodaysExpense = TodaysExpense + (rsExpMst!OptTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSTTSell * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!OptSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
                ElseIf Left(rsQ!Cashtype, 2) = "EQ" And rsQ!InType = "1" Then
                    curEqBuy = curEqBuy + Abs(rsQ!punits)
                    curEqBuyValue = curEqBuyValue + Abs(rsQ!UniTrd)
                    '''CODING FOR NON-DELIVERY - Buy
                    ''TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
                    ''
                    '''equity delivery - Buy
                    ''TodaysExpense = TodaysExpense + (rsExpMst!EqtTO * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSD * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSTT * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtOEXP * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtST * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSEBI * ((rsQ!punits * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr))
                ElseIf Left(rsQ!Cashtype, 2) = "EQ" And rsQ!InType = "2" Then
                    curEqSell = curEqSell + Abs(rsQ!punits)
                    curEqSellValue = curEqSellValue + Abs(rsQ!UniTrd)
                    '''CODING FOR NON-DELIVERY - Sell
                    ''TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((rsQ!UniTrd) / rsExpMst!Exp_Per_Cr))
                    ''
                    '''equity delivery - Sell
                    ''If rsQ!punits < 0 Then
                    ''    unit = -(rsQ!punits)
                    ''Else
                    ''    unit = (rsQ!punits)
                    ''End If
                    ''
                    ''TodaysExpense = TodaysExpense + (rsExpMst!EqtTO * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSD * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSTT * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtOEXP * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtST * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSEBI * ((Val(unit) * Val(txtRate.Text)) / rsExpMst!Exp_Per_Cr))
                End If
                
                rsQ.MoveNext
            Wend
            
            curEqDelValue = Abs(curEqBuyValue - curEqSellValue)
            curEqNonDelValue = IIf(curEqBuyValue > curEqSellValue, curEqSellValue, curEqBuyValue)
            

'
'                If curEqBuy = curEqSell Then
'
'                    'equity non delivery
'                    'Buy
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr))
'                    'sell
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((curEqSellValue) / rsExpMst!Exp_Per_Cr))
'                Else
'                    'equity non delivery
'                    TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((curEqNonDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((curEqNonDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((curEqNonDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((curEqNonDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((curEqNonDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((curEqNonDelValue) / rsExpMst!Exp_Per_Cr))
'                    TodaysExpense = TodaysExpense * 2
'                End If
            
            If (curEqBuy <> 0 And curEqSell = 0) Or (curEqBuy = 0 And curEqSell <> 0) Then
                
            Else
                'Buy
                TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((curEqBuyValue) / rsExpMst!Exp_Per_Cr))
                'sell
                TodaysExpense = TodaysExpense + (rsExpMst!EqtNonDelTO * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSD * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSTT * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelOEXP * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelST * ((curEqSellValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtNonDelSEBI * ((curEqSellValue) / rsExpMst!Exp_Per_Cr))
            End If
            'equity delivery
            TodaysExpense = TodaysExpense + (rsExpMst!EqtTO * ((curEqDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSD * ((curEqDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSTT * ((curEqDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtOEXP * ((curEqDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtST * ((curEqDelValue) / rsExpMst!Exp_Per_Cr)) + (rsExpMst!EqtSEBI * ((curEqDelValue) / rsExpMst!Exp_Per_Cr))
            
        End If
        rsQ.Close
        Set rsQ = Nothing
        
        
        'Coding for Option Field2=E
        '==========================================================
        Set rsTodaysExpense = New ADODB.Recordset
        If userinfo.SELUSERCD = "" Then
            'Update -1/3/2011
            rsTodaysExpense.Open "Select strike,cp,sum(units) as punit,sum(units* traded) as ptraded from Dummytracker where left(cashtype,1)='O' AND FIELD2='E' AND Script ='" & strScript & "' AND CDATE(tradedt)<=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & "') And InDesc<>'CloseOut'  group by strike,cp", con, adOpenStatic, adLockReadOnly
        Else
            'Update -1/3/2011
            rsTodaysExpense.Open "Select strike,cp,sum(units) as punit,sum(units* traded) as ptraded from Dummytracker where left(cashtype,1)='O' AND FIELD2='E' AND Script ='" & strScript & "' AND CDATE(tradedt)<=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & "') And UserCD='" & userinfo.SELUSERCD & "' And InDesc<>'CloseOut'  group by strike,cp", con, adOpenStatic, adLockReadOnly
        End If
        If Not rsTodaysExpense.EOF Then
            Do Until rsTodaysExpense.EOF
                If rsTodaysExpense!punit < 0 Then
                    unit = -Val(rsTodaysExpense!punit)
                    TRADED = (rsTodaysExpense!ptraded) / rsTodaysExpense!punit
                    TodaysExpense = TodaysExpense + Val(rsExp_Detl!OptTOBuy) + (rsExpMst!OptTOE * ((unit * TRADED) / rsExpMst!Exp_Per_Cr)) '5000 'OptTOBuy
                    TodaysExpense = TodaysExpense + Val(rsExp_Detl!OptSDBuy) + (rsExpMst!OptSDE * ((unit * TRADED) / rsExpMst!Exp_Per_Cr)) '100 'OptSDBuy
                    TodaysExpense = TodaysExpense + Val(rsExp_Detl!OptSTTBuy) + (rsExpMst!OptSTTE * ((unit * Val(Val(txtRate.Text))) / rsExpMst!Exp_Per_Cr)) '12500 'OptSTTBuy
                    TodaysExpense = TodaysExpense + Val(rsExp_Detl!OptOEXPBuy) + (rsExpMst!OptOEXPE * ((unit * TRADED) / rsExpMst!Exp_Per_Cr)) '0 'OptOEXPBuy
                    TodaysExpense = TodaysExpense + Val(rsExp_Detl!OPtSTBuy) + (rsExpMst!OptSTE * ((unit * TRADED) / rsExpMst!Exp_Per_Cr)) '515 'OPtSTBuy
                    TodaysExpense = TodaysExpense + Val(rsExp_Detl!OPtSEBIBuy) + (rsExpMst!OptSEBIE * ((unit * TRADED) / rsExpMst!Exp_Per_Cr)) '35 'OPtSEBIBuy
                End If
                rsTodaysExpense.MoveNext
            Loop
        End If
        rsTodaysExpense.Close
        Set rsTodaysExpense = Nothing
        '==========================================================
            
        txtTExpense.Text = Round(TodaysExpense)
    End If
    rsExpMst.Close
    Set rsExpMst = Nothing
    '============================
Else
'    Set rsQ = New ADODB.Recordset
'
'    rsQ.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenStatic, adLockReadOnly
'    If Not rsQ.EOF Then
'        txtTExpense.Text = Round(Val(rsQ!TodaysExpenses))
'    End If
'    rsQ.Close
'    Set rsQ = Nothing
    
    
    Set rsQ = New ADODB.Recordset
    If userinfo.SELUSERCD = "" Then
        rsQ.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenStatic, adLockReadOnly
    Else
        rsQ.Open "Select * from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenStatic, adLockReadOnly
    End If
    If Not rsQ.EOF Then
        txtTExpense.Text = Round(Val(rsQ!TodaysExpenses))
    End If
    rsQ.Close
    Set rsQ = Nothing
    
    

End If
'============================

If Val(txtDays.Text) = 0 Then
    Set rsQ = New ADODB.Recordset
    If userinfo.SELUSERCD = "" Then
        rsQ.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='E-" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenStatic, adLockReadOnly
    Else
        rsQ.Open "Select * from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='E-" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenStatic, adLockReadOnly
    End If
    If Not rsQ.EOF Then
        txtTExpense.Text = Val(txtTExpense.Text) + Round(Val(rsQ!TodaysExpenses))
    End If
    rsQ.Close
    Set rsQ = Nothing
End If
'============================
'Calculating Total Expense
txtTotal.Text = Round(Val(txtTExpense.Text) + Val(txtPrvBalance.Text))
'============================

'============================
'Calculating Net Balance
If blnIsCloseOut = True Then
    txtNetBalance.Text = Round(Val(txtBRFRBL.Text) - Val(txtTotal.Text))
Else
    txtNetBalance.Text = Round(Val(txtBalance.Text) - Val(txtTotal.Text))
End If
'============================
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub




Public Sub FillCombo()
Dim strFill As String
Dim rsFill As New ADODB.Recordset
Dim intUserCount1 As Integer
strFill = "Select * From User_detl Where User_Type='User'"
rsFill.Open strFill, con, adOpenKeyset, adLockOptimistic
If rsFill.EOF = False Then
    cmbUserName.Clear
    intUserCount1 = 0
    While Not rsFill.EOF
        If intUserCount1 >= intPubTotalRegisteredUsers Then
            Exit Sub
        End If
        cmbUserName.AddItem IIf(IsNull(rsFill!USERCD) = True, "", rsFill!USERCD)
        intUserCount1 = intUserCount1 + 1
        rsFill.MoveNext
    Wend
End If
rsFill.Close
End Sub

