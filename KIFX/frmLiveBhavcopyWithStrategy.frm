VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "crystl32.ocx"
Begin VB.Form frmLiveBhavcopyWithStrategy 
   Caption         =   "Live Bhavcopy With Strategy"
   ClientHeight    =   10590
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15120
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmLiveBhavcopyWithStrategy.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   10590
   ScaleWidth      =   15120
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   720
      Top             =   435
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame frameAll 
      BorderStyle     =   0  'None
      Height          =   10140
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   15345
      Begin VB.Frame fraCurrency 
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Left            =   -1200
         TabIndex        =   117
         Top             =   -60
         Width           =   4335
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
            Left            =   6060
            TabIndex        =   119
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
         End
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
            Left            =   3180
            TabIndex        =   118
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
         End
         Begin VB.Label lblForeignIntRate 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Left            =   4410
            TabIndex        =   122
            Top             =   180
            Width           =   1605
         End
         Begin VB.Label lblDomesticIntRate 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Left            =   1335
            TabIndex        =   121
            Top             =   165
            Width           =   1770
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
            Left            =   7215
            TabIndex        =   120
            Top             =   165
            Width           =   1305
         End
      End
      Begin VB.Frame fraTokens 
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   -870
         TabIndex        =   123
         Top             =   -30
         Width           =   9675
         Begin VB.TextBox txtEQToken 
            Alignment       =   2  'Center
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
            Left            =   8385
            Locked          =   -1  'True
            TabIndex        =   124
            TabStop         =   0   'False
            Top             =   120
            Width           =   1245
         End
         Begin VB.TextBox txtFOToken 
            Alignment       =   2  'Center
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
            Left            =   6120
            Locked          =   -1  'True
            TabIndex        =   125
            TabStop         =   0   'False
            Top             =   120
            Width           =   1245
         End
         Begin VB.Label Label10 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "F&&O Token"
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
            Index           =   0
            Left            =   4950
            TabIndex        =   127
            Top             =   135
            Width           =   1095
         End
         Begin VB.Label Label10 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "EQ Token"
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
            Index           =   1
            Left            =   7410
            TabIndex        =   126
            Top             =   150
            Width           =   945
         End
      End
      Begin VB.Timer Timer3 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   1920
         Top             =   630
      End
      Begin VB.Frame Frame4 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1470
         Left            =   90
         TabIndex        =   128
         Top             =   8535
         Width           =   7800
         Begin VB.TextBox txtCUnits 
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
            Left            =   6270
            Locked          =   -1  'True
            TabIndex        =   143
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtGammaC 
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
            Left            =   4785
            Locked          =   -1  'True
            TabIndex        =   142
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtVegaC 
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
            Left            =   3300
            Locked          =   -1  'True
            TabIndex        =   141
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtThetaC 
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
            Left            =   1815
            Locked          =   -1  'True
            TabIndex        =   140
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtDetalC 
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
            Left            =   330
            Locked          =   -1  'True
            TabIndex        =   139
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
         Begin VB.TextBox txtThetaP 
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
            Left            =   1815
            Locked          =   -1  'True
            TabIndex        =   138
            TabStop         =   0   'False
            Top             =   720
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Theta 
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
            Left            =   1815
            Locked          =   -1  'True
            TabIndex        =   137
            TabStop         =   0   'False
            Top             =   1065
            Width           =   1485
         End
         Begin VB.TextBox txtVegaP 
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
            Left            =   3300
            Locked          =   -1  'True
            TabIndex        =   136
            TabStop         =   0   'False
            Top             =   720
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Vega 
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
            Left            =   3300
            Locked          =   -1  'True
            TabIndex        =   135
            TabStop         =   0   'False
            Top             =   1065
            Width           =   1485
         End
         Begin VB.TextBox txtGammaP 
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
            Left            =   4785
            Locked          =   -1  'True
            TabIndex        =   134
            TabStop         =   0   'False
            Top             =   720
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Gamma 
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
            Left            =   4785
            Locked          =   -1  'True
            TabIndex        =   133
            TabStop         =   0   'False
            Top             =   1065
            Width           =   1485
         End
         Begin VB.TextBox txtPUnits 
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
            Left            =   6270
            Locked          =   -1  'True
            TabIndex        =   132
            TabStop         =   0   'False
            Top             =   720
            Width           =   1485
         End
         Begin VB.TextBox txtTUnits 
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
            Left            =   6270
            Locked          =   -1  'True
            TabIndex        =   131
            TabStop         =   0   'False
            Top             =   1065
            Width           =   1485
         End
         Begin VB.TextBox txtDetalP 
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
            Left            =   330
            Locked          =   -1  'True
            TabIndex        =   130
            TabStop         =   0   'False
            Top             =   720
            Width           =   1485
         End
         Begin VB.TextBox txtTot_Delta 
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
            Left            =   330
            Locked          =   -1  'True
            TabIndex        =   129
            TabStop         =   0   'False
            Top             =   1065
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
            TabIndex        =   151
            Top             =   1050
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
            TabIndex        =   150
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
            TabIndex        =   149
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
            Index           =   0
            Left            =   5190
            TabIndex        =   148
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
            TabIndex        =   147
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
            TabIndex        =   146
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
            TabIndex        =   145
            Top             =   135
            Width           =   735
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Total"
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
            Left            =   6690
            TabIndex        =   144
            Top             =   150
            Width           =   540
         End
      End
      Begin VB.ComboBox cboPortfolioList 
         BackColor       =   &H00C0FFFF&
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
         Left            =   9765
         Style           =   2  'Dropdown List
         TabIndex        =   7
         TabStop         =   0   'False
         Top             =   90
         Width           =   2880
      End
      Begin VB.CommandButton cmdClose 
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
         Left            =   14805
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":1F8FA
         Style           =   1  'Graphical
         TabIndex        =   116
         TabStop         =   0   'False
         ToolTipText     =   "Close"
         Top             =   75
         Width           =   390
      End
      Begin VB.CommandButton cmdSave 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   13575
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":1F9F4
         Style           =   1  'Graphical
         TabIndex        =   115
         TabStop         =   0   'False
         ToolTipText     =   "Save New Portfolio.."
         Top             =   75
         Width           =   390
      End
      Begin VB.CommandButton cmdStartCapture 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Webdings"
            Size            =   12
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   13980
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":1FD05
         Style           =   1  'Graphical
         TabIndex        =   113
         TabStop         =   0   'False
         ToolTipText     =   "Start Capture"
         Top             =   75
         Width           =   390
      End
      Begin VB.CommandButton Command1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   14160
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":2008F
         Style           =   1  'Graphical
         TabIndex        =   112
         ToolTipText     =   "Change Color Settings"
         Top             =   465
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.CommandButton cmdReport 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   14580
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":20509
         Style           =   1  'Graphical
         TabIndex        =   111
         ToolTipText     =   "Print Report"
         Top             =   450
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.Frame Frame3 
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
         Height          =   1500
         Left            =   7965
         TabIndex        =   90
         Top             =   8505
         Width           =   7200
         Begin VB.TextBox txtPStock 
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
            Left            =   1020
            Locked          =   -1  'True
            TabIndex        =   102
            TabStop         =   0   'False
            Top             =   405
            Width           =   1530
         End
         Begin VB.TextBox txtPFutu 
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
            Left            =   1020
            Locked          =   -1  'True
            TabIndex        =   101
            TabStop         =   0   'False
            Top             =   750
            Width           =   1530
         End
         Begin VB.TextBox txtPAvg 
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
            Left            =   1020
            Locked          =   -1  'True
            TabIndex        =   100
            TabStop         =   0   'False
            Top             =   1095
            Width           =   1530
         End
         Begin VB.TextBox txtTStock 
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
            Left            =   2550
            Locked          =   -1  'True
            TabIndex        =   99
            TabStop         =   0   'False
            Top             =   405
            Width           =   1530
         End
         Begin VB.TextBox txtNStock 
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
            Left            =   4080
            Locked          =   -1  'True
            TabIndex        =   98
            TabStop         =   0   'False
            Top             =   405
            Width           =   1530
         End
         Begin VB.TextBox txtNFutu 
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
            Left            =   4080
            Locked          =   -1  'True
            TabIndex        =   97
            TabStop         =   0   'False
            Top             =   750
            Width           =   1530
         End
         Begin VB.TextBox txtNAvg 
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
            Left            =   4080
            Locked          =   -1  'True
            TabIndex        =   96
            TabStop         =   0   'False
            Top             =   1095
            Width           =   1530
         End
         Begin VB.TextBox txtTradeStock 
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
            Left            =   5610
            Locked          =   -1  'True
            TabIndex        =   95
            TabStop         =   0   'False
            Top             =   405
            Width           =   1530
         End
         Begin VB.TextBox txtTFutu 
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
            Left            =   2550
            Locked          =   -1  'True
            TabIndex        =   94
            TabStop         =   0   'False
            Top             =   750
            Width           =   1530
         End
         Begin VB.TextBox txtTAvg 
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
            Left            =   2550
            Locked          =   -1  'True
            TabIndex        =   93
            TabStop         =   0   'False
            Top             =   1095
            Width           =   1530
         End
         Begin VB.TextBox txtTradeFutu 
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
            Left            =   5610
            Locked          =   -1  'True
            TabIndex        =   92
            TabStop         =   0   'False
            Top             =   750
            Width           =   1530
         End
         Begin VB.TextBox txtNTrade 
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
            Left            =   5610
            Locked          =   -1  'True
            TabIndex        =   91
            TabStop         =   0   'False
            Top             =   1095
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
            Left            =   1065
            TabIndex        =   110
            Top             =   165
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
            TabIndex        =   109
            Top             =   165
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
            TabIndex        =   108
            Top             =   180
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
            TabIndex        =   107
            Top             =   180
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
            Index           =   0
            Left            =   90
            TabIndex        =   106
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
            TabIndex        =   105
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
            TabIndex        =   104
            Top             =   1155
            Width           =   975
         End
         Begin VB.Label Label24 
            Caption         =   "Stk/Fut"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   1
            Left            =   90
            TabIndex        =   103
            Top             =   165
            Width           =   855
         End
      End
      Begin VB.Frame Frame1 
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   7740
         Left            =   105
         TabIndex        =   10
         Top             =   855
         Width           =   15075
         Begin VB.Frame fraTodays 
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
            ForeColor       =   &H00C00000&
            Height          =   3555
            Left            =   2190
            TabIndex        =   154
            Top             =   2325
            Visible         =   0   'False
            Width           =   8610
            Begin VB.TextBox txtTodaysOU 
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
               Left            =   6825
               Locked          =   -1  'True
               TabIndex        =   160
               TabStop         =   0   'False
               Top             =   480
               Width           =   1695
            End
            Begin VB.TextBox txtTodaysFSR 
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
               Left            =   1774
               Locked          =   -1  'True
               TabIndex        =   159
               TabStop         =   0   'False
               Top             =   480
               Width           =   1695
            End
            Begin VB.TextBox txtTodaysOR 
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
               Left            =   3458
               Locked          =   -1  'True
               TabIndex        =   158
               TabStop         =   0   'False
               Top             =   480
               Width           =   1695
            End
            Begin VB.TextBox txtTodaysFSU 
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
               Left            =   5142
               Locked          =   -1  'True
               TabIndex        =   157
               TabStop         =   0   'False
               Top             =   480
               Width           =   1695
            End
            Begin VB.TextBox txtTodaysPremium 
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
               Left            =   90
               Locked          =   -1  'True
               TabIndex        =   156
               TabStop         =   0   'False
               Top             =   480
               Width           =   1695
            End
            Begin VB.TextBox txtTodaysM2MBalanceWithoutExpense 
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
               Left            =   3180
               Locked          =   -1  'True
               TabIndex        =   155
               TabStop         =   0   'False
               Top             =   3165
               Width           =   1695
            End
            Begin MSComctlLib.ListView lstDetailsTodays 
               Height          =   2295
               Left            =   105
               TabIndex        =   161
               TabStop         =   0   'False
               Top             =   825
               Width           =   8400
               _ExtentX        =   14817
               _ExtentY        =   4048
               View            =   3
               Arrange         =   2
               LabelEdit       =   1
               LabelWrap       =   -1  'True
               HideSelection   =   -1  'True
               AllowReorder    =   -1  'True
               FullRowSelect   =   -1  'True
               _Version        =   393217
               ForeColor       =   16776960
               BackColor       =   0
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
               NumItems        =   20
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
                  Alignment       =   1
                  SubItemIndex    =   2
                  Text            =   "Unit"
                  Object.Width           =   2117
               EndProperty
               BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   3
                  Text            =   "Traded"
                  Object.Width           =   2117
               EndProperty
               BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   4
                  Text            =   "Th. Price"
                  Object.Width           =   2117
               EndProperty
               BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   5
                  Text            =   "LTP"
                  Object.Width           =   2540
               EndProperty
               BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   6
                  Text            =   "Difference"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   7
                  Text            =   "Live Iv"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   8
                  Text            =   "lv"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   9
                  Text            =   "Delta"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   10
                  Text            =   "Del Val"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   11
                  Text            =   "Theta"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   12
                  Text            =   "Theta Val"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   13
                  Text            =   "Vega"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(15) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   14
                  Text            =   "Vg Val"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(16) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   15
                  Text            =   "Gamma"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(17) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   16
                  Text            =   "Gm Val"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(18) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   17
                  Text            =   "Rho"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(19) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   18
                  Text            =   "Rho Val"
                  Object.Width           =   0
               EndProperty
               BeginProperty ColumnHeader(20) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Alignment       =   1
                  SubItemIndex    =   19
                  Text            =   "Token"
                  Object.Width           =   1764
               EndProperty
            End
            Begin VB.Label Label45 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Fut/Stk (R)"
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
               Index           =   1
               Left            =   1770
               TabIndex        =   167
               Top             =   270
               Width           =   1110
            End
            Begin VB.Label Label46 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Opt(R)"
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
               Index           =   1
               Left            =   3510
               TabIndex        =   166
               Top             =   255
               Width           =   630
            End
            Begin VB.Label Label47 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Fut/Stk(U)"
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
               Index           =   1
               Left            =   5175
               TabIndex        =   165
               Top             =   270
               Width           =   1065
            End
            Begin VB.Label Label48 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Opt(U)"
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
               Index           =   1
               Left            =   6855
               TabIndex        =   164
               Top             =   255
               Width           =   645
            End
            Begin VB.Label lblBalanceTodays 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "M2M Balance Without Expense"
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
               Index           =   1
               Left            =   150
               TabIndex        =   163
               Top             =   3195
               Width           =   2955
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
               Index           =   1
               Left            =   90
               TabIndex        =   162
               Top             =   270
               Width           =   870
            End
         End
         Begin VB.TextBox txtInShares 
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
            Height          =   345
            Left            =   -15
            Locked          =   -1  'True
            TabIndex        =   67
            TabStop         =   0   'False
            Top             =   6180
            Width           =   1740
         End
         Begin VB.TextBox txtTotal_DelVal 
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
            Height          =   345
            Left            =   1695
            Locked          =   -1  'True
            TabIndex        =   66
            TabStop         =   0   'False
            Top             =   6180
            Width           =   1740
         End
         Begin VB.TextBox txtTotal_ThetaVal 
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
            Height          =   345
            Left            =   3405
            Locked          =   -1  'True
            TabIndex        =   65
            TabStop         =   0   'False
            Top             =   6180
            Width           =   1740
         End
         Begin VB.TextBox txtTotal_VGVal 
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
            Height          =   345
            Left            =   5115
            Locked          =   -1  'True
            TabIndex        =   64
            TabStop         =   0   'False
            Top             =   6180
            Width           =   1740
         End
         Begin VB.TextBox txtTotal_GMVal 
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
            Height          =   345
            Left            =   6825
            Locked          =   -1  'True
            TabIndex        =   63
            TabStop         =   0   'False
            Top             =   6180
            Width           =   1740
         End
         Begin VB.TextBox txtDays 
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
            Left            =   510
            MaxLength       =   8
            TabIndex        =   1
            TabStop         =   0   'False
            Top             =   105
            Width           =   1230
         End
         Begin VB.TextBox txtCall 
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
            Left            =   4050
            MaxLength       =   5
            TabIndex        =   3
            TabStop         =   0   'False
            Top             =   90
            Width           =   945
         End
         Begin VB.TextBox txtPut 
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
            Left            =   5370
            MaxLength       =   5
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   90
            Width           =   945
         End
         Begin VB.TextBox txtDate 
            Alignment       =   2  'Center
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
            Left            =   7035
            Locked          =   -1  'True
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   105
            Width           =   1515
         End
         Begin VB.TextBox txtExpDt 
            Alignment       =   2  'Center
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
            Left            =   9180
            Locked          =   -1  'True
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   105
            Width           =   1515
         End
         Begin VB.TextBox txtRate 
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
            Left            =   2295
            MaxLength       =   8
            TabIndex        =   2
            TabStop         =   0   'False
            Top             =   105
            Width           =   1365
         End
         Begin VB.CommandButton cmdExcelList 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   11145
            Picture         =   "frmLiveBhavcopyWithStrategy.frx":208BF
            Style           =   1  'Graphical
            TabIndex        =   60
            TabStop         =   0   'False
            ToolTipText     =   "Export to Excel"
            Top             =   45
            Width           =   405
         End
         Begin VB.CommandButton cmdCalculator 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   10710
            Picture         =   "frmLiveBhavcopyWithStrategy.frx":20C47
            Style           =   1  'Graphical
            TabIndex        =   59
            TabStop         =   0   'False
            ToolTipText     =   "Calculator..."
            Top             =   45
            Width           =   405
         End
         Begin VB.ComboBox cboUserCd 
            BackColor       =   &H00C0E0FF&
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
            Left            =   12900
            Style           =   2  'Dropdown List
            TabIndex        =   5
            TabStop         =   0   'False
            ToolTipText     =   "UserCodes with UserName (e.g. UserCode=UserName)"
            Top             =   -15
            Visible         =   0   'False
            Width           =   2175
         End
         Begin VB.Timer Timer1 
            Enabled         =   0   'False
            Interval        =   1000
            Left            =   11775
            Top             =   -210
         End
         Begin VB.TextBox txtTempDays 
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
            Left            =   1770
            TabIndex        =   58
            Top             =   330
            Visible         =   0   'False
            Width           =   255
         End
         Begin VB.TextBox txtTotal_RHOVal 
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
            Height          =   345
            Left            =   8535
            Locked          =   -1  'True
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   6180
            Width           =   1740
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
            Height          =   810
            Left            =   0
            TabIndex        =   25
            Top             =   6510
            Width           =   9135
            Begin VB.TextBox txtExposure 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   360
               Left            =   1395
               TabIndex        =   39
               TabStop         =   0   'False
               Top             =   6075
               Width           =   1650
            End
            Begin VB.TextBox txtNetBalance 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   360
               Left            =   1395
               TabIndex        =   38
               TabStop         =   0   'False
               Top             =   5700
               Width           =   1650
            End
            Begin VB.TextBox txtTotal2 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   37
               TabStop         =   0   'False
               Top             =   5325
               Width           =   1650
            End
            Begin VB.TextBox txtTExpense2 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   36
               TabStop         =   0   'False
               Top             =   4935
               Width           =   1650
            End
            Begin VB.TextBox txtPrvBalance 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   35
               TabStop         =   0   'False
               Top             =   4560
               Width           =   1650
            End
            Begin VB.TextBox txtCashTotal 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   34
               TabStop         =   0   'False
               Top             =   4005
               Width           =   1650
            End
            Begin VB.TextBox txtEquity 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   33
               TabStop         =   0   'False
               Top             =   3615
               Width           =   1650
            End
            Begin VB.TextBox txtExp_Margin 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   32
               TabStop         =   0   'False
               Top             =   3240
               Width           =   1650
            End
            Begin VB.TextBox txtIntMargin2 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFF00&
               Height          =   375
               Left            =   1395
               TabIndex        =   31
               TabStop         =   0   'False
               Top             =   2850
               Width           =   1650
            End
            Begin VB.TextBox txtOU 
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
               Height          =   375
               Left            =   7245
               Locked          =   -1  'True
               TabIndex        =   30
               TabStop         =   0   'False
               Top             =   405
               Width           =   1815
            End
            Begin VB.TextBox txtFSU 
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
               Height          =   375
               Left            =   5445
               Locked          =   -1  'True
               TabIndex        =   29
               TabStop         =   0   'False
               Top             =   405
               Width           =   1815
            End
            Begin VB.TextBox txtOR 
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
               Height          =   375
               Left            =   3645
               Locked          =   -1  'True
               TabIndex        =   28
               TabStop         =   0   'False
               Top             =   405
               Width           =   1815
            End
            Begin VB.TextBox txtFSR 
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
               Height          =   375
               Left            =   1845
               Locked          =   -1  'True
               TabIndex        =   27
               TabStop         =   0   'False
               Top             =   405
               Width           =   1815
            End
            Begin VB.TextBox txtPremium 
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
               Height          =   375
               Left            =   45
               Locked          =   -1  'True
               TabIndex        =   26
               TabStop         =   0   'False
               Top             =   405
               Width           =   1815
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
               TabIndex        =   56
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
               Height          =   180
               Left            =   75
               TabIndex        =   55
               Top             =   2625
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
               Index           =   0
               Left            =   60
               TabIndex        =   54
               Top             =   225
               Width           =   870
            End
            Begin VB.Label lblBalance 
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
               Left            =   8145
               TabIndex        =   53
               Top             =   165
               Visible         =   0   'False
               Width           =   765
            End
            Begin VB.Label Label48 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Opt(U)"
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
               Index           =   0
               Left            =   7335
               TabIndex        =   52
               Top             =   210
               Width           =   645
            End
            Begin VB.Label Label47 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Fut/Stk(U)"
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
               Index           =   0
               Left            =   5505
               TabIndex        =   51
               Top             =   225
               Width           =   1065
            End
            Begin VB.Label Label46 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Opt(R)"
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
               Index           =   0
               Left            =   3705
               TabIndex        =   50
               Top             =   210
               Width           =   630
            End
            Begin VB.Label Label45 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Fut/Stk (R)"
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
               Index           =   0
               Left            =   1875
               TabIndex        =   49
               Top             =   225
               Width           =   1110
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
               TabIndex        =   48
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
               TabIndex        =   47
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
               TabIndex        =   46
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
               TabIndex        =   45
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
               TabIndex        =   44
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
               TabIndex        =   43
               Top             =   3630
               Width           =   615
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
               TabIndex        =   42
               Top             =   5925
               Width           =   1260
            End
            Begin VB.Label Label30 
               Caption         =   "Total Exposure"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   435
               Left            =   90
               TabIndex        =   41
               Top             =   3225
               Width           =   1215
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label44 
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
               Left            =   90
               TabIndex        =   40
               Top             =   2805
               Width           =   1260
            End
         End
         Begin VB.CommandButton cmdTodaysExpense 
            BackColor       =   &H00FFFFFF&
            Caption         =   "j"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Wingdings"
               Size            =   9.75
               Charset         =   2
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9435
            Style           =   1  'Graphical
            TabIndex        =   24
            TabStop         =   0   'False
            ToolTipText     =   "Calculate Todays Expense [Shift + T]"
            Top             =   7305
            Visible         =   0   'False
            Width           =   360
         End
         Begin VB.TextBox txtIntMargin 
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
            Height          =   375
            Left            =   2055
            Locked          =   -1  'True
            TabIndex        =   23
            TabStop         =   0   'False
            Top             =   7335
            Width           =   1815
         End
         Begin VB.CommandButton Command2 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9825
            Picture         =   "frmLiveBhavcopyWithStrategy.frx":2115F
            Style           =   1  'Graphical
            TabIndex        =   22
            TabStop         =   0   'False
            ToolTipText     =   "View Todays"
            Top             =   7305
            Width           =   360
         End
         Begin VB.TextBox txtTotal 
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
            Height          =   420
            Left            =   13290
            Locked          =   -1  'True
            TabIndex        =   21
            TabStop         =   0   'False
            ToolTipText     =   "Total Expense"
            Top             =   6120
            Width           =   1800
         End
         Begin VB.TextBox txtBalance 
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
            Height          =   435
            Left            =   13290
            Locked          =   -1  'True
            TabIndex        =   20
            TabStop         =   0   'False
            ToolTipText     =   "Total Balance without Expense"
            Top             =   6510
            Width           =   1800
         End
         Begin VB.TextBox txtOptionUN 
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
            Height          =   420
            Left            =   13290
            Locked          =   -1  'True
            TabIndex        =   19
            TabStop         =   0   'False
            ToolTipText     =   "Total M2M Option Unrealized"
            Top             =   6885
            Width           =   1800
         End
         Begin VB.TextBox txtBalanceN 
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
            Height          =   405
            Left            =   13290
            Locked          =   -1  'True
            TabIndex        =   18
            TabStop         =   0   'False
            ToolTipText     =   "Total M2M Balance with Expense"
            Top             =   7275
            Width           =   1800
         End
         Begin VB.TextBox txtTExpense 
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
            Height          =   420
            Left            =   11520
            Locked          =   -1  'True
            TabIndex        =   17
            TabStop         =   0   'False
            ToolTipText     =   "Todays Expense"
            Top             =   6120
            Width           =   1800
         End
         Begin VB.TextBox txtTodaysBal 
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
            Height          =   420
            Left            =   11520
            Locked          =   -1  'True
            TabIndex        =   16
            TabStop         =   0   'False
            ToolTipText     =   "Todays Balance without Expense"
            Top             =   6510
            Width           =   1800
         End
         Begin VB.TextBox txtM2MTodaysOU 
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
            Height          =   405
            Left            =   11520
            Locked          =   -1  'True
            TabIndex        =   15
            TabStop         =   0   'False
            ToolTipText     =   "Todays M2M Option Unrealized"
            Top             =   6900
            Width           =   1800
         End
         Begin VB.TextBox txtM2MTodays 
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
            Height          =   405
            Left            =   11520
            Locked          =   -1  'True
            TabIndex        =   14
            TabStop         =   0   'False
            ToolTipText     =   "Todays M2M Balance with Expense"
            Top             =   7275
            Width           =   1800
         End
         Begin VB.TextBox txtSquareOffExpense 
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
            Height          =   375
            Left            =   6075
            Locked          =   -1  'True
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   7335
            Width           =   1815
         End
         Begin VB.Timer tmrAutomaticDaysReduce 
            Enabled         =   0   'False
            Interval        =   60000
            Left            =   0
            Top             =   525
         End
         Begin VB.CommandButton cmdGraph 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9825
            Picture         =   "frmLiveBhavcopyWithStrategy.frx":21259
            Style           =   1  'Graphical
            TabIndex        =   12
            TabStop         =   0   'False
            ToolTipText     =   "Show Graph Simulation (Ctrl+Shift+G)"
            Top             =   6930
            Width           =   360
         End
         Begin VB.CommandButton cmdVarAnalysis 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9435
            Picture         =   "frmLiveBhavcopyWithStrategy.frx":218CB
            Style           =   1  'Graphical
            TabIndex        =   11
            TabStop         =   0   'False
            ToolTipText     =   "Var Analysis (Ctrl+Shift+V)"
            Top             =   6930
            Width           =   360
         End
         Begin MSComctlLib.ListView lstDetails1 
            Height          =   5265
            Left            =   -45
            TabIndex        =   68
            TabStop         =   0   'False
            Top             =   510
            Width           =   15090
            _ExtentX        =   26617
            _ExtentY        =   9287
            View            =   3
            Arrange         =   2
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            AllowReorder    =   -1  'True
            FullRowSelect   =   -1  'True
            _Version        =   393217
            ForeColor       =   16776960
            BackColor       =   0
            BorderStyle     =   1
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   20
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
               Alignment       =   1
               SubItemIndex    =   2
               Text            =   "Unit"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   3
               Text            =   "Traded"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   4
               Text            =   "Th. Price"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   5
               Text            =   "LTP"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   6
               Text            =   "Difference"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   7
               Text            =   "Live Iv"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   8
               Text            =   "lv"
               Object.Width           =   882
            EndProperty
            BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   9
               Text            =   "Delta"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   10
               Text            =   "Del Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   11
               Text            =   "Theta"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   12
               Text            =   "Theta Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   13
               Text            =   "Vega"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(15) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   14
               Text            =   "Vg Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(16) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   15
               Text            =   "Gamma"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(17) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   16
               Text            =   "Gm Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(18) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   17
               Text            =   "Rho"
               Object.Width           =   0
            EndProperty
            BeginProperty ColumnHeader(19) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   18
               Text            =   "Rho Val"
               Object.Width           =   0
            EndProperty
            BeginProperty ColumnHeader(20) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   19
               Text            =   "Token"
               Object.Width           =   1764
            EndProperty
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Delta Neutral"
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
            Left            =   0
            TabIndex        =   89
            Top             =   5955
            Width           =   1320
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Delta  Val"
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
            Left            =   1740
            TabIndex        =   88
            Top             =   5955
            Width           =   960
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
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
            Height          =   210
            Left            =   3480
            TabIndex        =   87
            Top             =   5955
            Width           =   930
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Vega Val"
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
            Left            =   5235
            TabIndex        =   86
            Top             =   5955
            Width           =   870
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Gamma Val"
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
            Left            =   6930
            TabIndex        =   85
            Top             =   5940
            Width           =   1125
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
            Left            =   0
            TabIndex        =   84
            Top             =   105
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
            Left            =   1785
            TabIndex        =   83
            Top             =   105
            Width           =   525
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
            Left            =   3660
            TabIndex        =   82
            Top             =   120
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
            Left            =   5010
            TabIndex        =   81
            Top             =   105
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
            Left            =   6360
            TabIndex        =   80
            Top             =   105
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
            Left            =   8535
            TabIndex        =   79
            Top             =   105
            Width           =   690
         End
         Begin VB.Label lblUserCd 
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
            TabIndex        =   78
            Top             =   75
            Visible         =   0   'False
            Width           =   990
         End
         Begin VB.Label lblRhoVal 
            AutoSize        =   -1  'True
            Caption         =   "Rho Val."
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
            Left            =   8715
            TabIndex        =   77
            Top             =   5940
            Width           =   810
         End
         Begin VB.Label Label69 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "M2M Opt(U)"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   10380
            TabIndex        =   76
            Top             =   6945
            Width           =   1125
         End
         Begin VB.Label Label68 
            BackStyle       =   0  'Transparent
            Caption         =   "M2M Balance with Expense"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   390
            Left            =   10245
            TabIndex        =   75
            Top             =   7260
            Width           =   1305
         End
         Begin VB.Label Label32 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Left            =   12555
            TabIndex        =   74
            Top             =   5925
            Width           =   705
         End
         Begin VB.Label Label22 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Left            =   14520
            TabIndex        =   73
            Top             =   5925
            Width           =   495
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Exp. Margin (in Cr.)"
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
            Left            =   15
            TabIndex        =   72
            Top             =   7410
            Width           =   1950
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Left            =   10740
            TabIndex        =   71
            Top             =   6540
            Width           =   765
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Expense"
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
            Left            =   10680
            TabIndex        =   70
            Top             =   6180
            Width           =   825
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Square Off Expense"
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
            Height          =   210
            Left            =   4035
            TabIndex        =   69
            Top             =   7410
            Width           =   1965
         End
         Begin VB.Shape Shape1 
            BackColor       =   &H00EEDBAE&
            BackStyle       =   1  'Opaque
            BorderStyle     =   0  'Transparent
            Height          =   1875
            Left            =   10260
            Top             =   5850
            Width           =   4800
         End
      End
      Begin VB.CommandButton cmdExpExpiry 
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
         Left            =   13170
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":21E55
         Style           =   1  'Graphical
         TabIndex        =   9
         TabStop         =   0   'False
         ToolTipText     =   "Expense on Expiry"
         Top             =   75
         Width           =   390
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   9645
         Left            =   0
         TabIndex        =   152
         TabStop         =   0   'False
         Top             =   465
         Width           =   15210
         _ExtentX        =   26829
         _ExtentY        =   17013
         _Version        =   393216
         Style           =   1
         Tabs            =   1
         TabsPerRow      =   12
         TabHeight       =   529
         TabMaxWidth     =   2117
         OLEDropMode     =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Tab 0"
         TabPicture(0)   =   "frmLiveBhavcopyWithStrategy.frx":241C7
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Label36"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "CommonDialog1"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "Timer2"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "cmbStrategy"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).ControlCount=   4
         Begin VB.ComboBox cmbStrategy 
            BackColor       =   &H00C0FFFF&
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
            Left            =   12345
            Style           =   2  'Dropdown List
            TabIndex        =   6
            TabStop         =   0   'False
            Top             =   -15
            Width           =   2880
         End
         Begin VB.Timer Timer2 
            Enabled         =   0   'False
            Interval        =   1000
            Left            =   2265
            Top             =   210
         End
         Begin MSComDlg.CommonDialog CommonDialog1 
            Left            =   1320
            Top             =   120
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "Strategy"
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
            Left            =   11310
            TabIndex        =   168
            Top             =   30
            Width           =   855
         End
      End
      Begin VB.CommandButton cmdStopCapture 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Webdings"
            Size            =   6.75
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   13980
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":241E3
         Style           =   1  'Graphical
         TabIndex        =   114
         TabStop         =   0   'False
         ToolTipText     =   "Stop Capture"
         Top             =   75
         Width           =   390
      End
      Begin VB.CommandButton cmdAuto 
         Height          =   360
         Left            =   14415
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":2456D
         Style           =   1  'Graphical
         TabIndex        =   169
         TabStop         =   0   'False
         ToolTipText     =   "Switch to Automatic Uploading"
         Top             =   75
         Width           =   375
      End
      Begin VB.CommandButton cmdManual 
         Height          =   345
         Left            =   14400
         Picture         =   "frmLiveBhavcopyWithStrategy.frx":24AEF
         Style           =   1  'Graphical
         TabIndex        =   170
         TabStop         =   0   'False
         ToolTipText     =   "Switch to Manual Uploading"
         Top             =   90
         Width           =   390
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Portfolio"
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
         Left            =   8820
         TabIndex        =   153
         Top             =   105
         Width           =   915
      End
   End
   Begin VB.TextBox txtChange 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3750
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   540
      Visible         =   0   'False
      Width           =   495
   End
End
Attribute VB_Name = "frmLiveBhavcopyWithStrategy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Created by AAP on 02/11/2012
'Subject-Live Bhavcopy Strategy



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

Public lngColor1 As Long
Public lngColor2 As Long
Public lngColor3 As Long
Public lngColor4 As Long
Public lngColor5 As Long

Dim arrLtp() As Long
Dim arrLtpEQ() As Long
Dim arrLtpCur() As Long

Dim intAlertCount As Integer
Public blnIsCaptureStarted As Boolean
Public curCarryForward As Currency      'Updated to Public By SSP 07/08/2012
Dim strPortfolioName As String

Public curLotSize As Currency           'Updated to Public By SSP 07/08/2012
Dim dblPreviousDomesticIntRate As Double
Dim dblPreviousForeignIntRate As Double

Dim curTTrade As Currency
Dim curTAvg As Currency

Dim curExpenseFutBuy As Currency
Dim curExpenseFutSell As Currency
Dim curExpenseOptBuy As Currency
Dim curExpenseOptSell As Currency
Dim curExpenseEQDelBuy As Currency
Dim curExpenseEQDelSell As Currency
Dim curExpenseEQNonDelBuy As Currency
Dim curExpenseEQNonDelSell As Currency
Dim curExpPerCrore As Currency

Dim intExpense As Integer

Dim dtTodaysDate As Date
Public mintStrategyID As Integer
Public strStrategySelected As String


Private Sub cmbStrategy_Click()
'Added by AAP on 05/11/2012
strStrategySelected = ""
If cmbStrategy.Text = "All" Then
    mintStrategyID = 0
ElseIf cmbStrategy.Text = "None" Then   ''Added by AAP on 16/11/2012
    mintStrategyID = -1
Else
    Dim strStrategyID As String
    Dim rsStrategyID As ADODB.Recordset
    
    Set rsStrategyID = New ADODB.Recordset
    strStrategyID = "Select StrategyID from MstStrategies where StrategyName='" & cmbStrategy.Text & "'"
    rsStrategyID.Open strStrategyID, con, adOpenForwardOnly, adLockOptimistic
    
    If rsStrategyID.EOF = False Then
        mintStrategyID = rsStrategyID!StrategyID
    End If
    
End If
If blnIsLoading = True Then Exit Sub
Call ClearAll
Call FillStrike
Call CalculateSummary
End Sub

Private Sub cmdClose_Click()
Unload Me
End Sub

Private Sub cmdManual_Click()
Dim strquery As String
Dim rsquery As New ADODB.Recordset

cmdManual.ZOrder

strquery = "Select * From IndexOpt"
rsquery.Open strquery, con, adOpenKeyset, adLockOptimistic
If rsquery.EOF = True Then

    rsquery.AddNew
    
    rsquery!Field10 = "M"
    rsquery!Field20 = "10 Min."
    rsquery!Field21 = "1"
    strPubWarningInterval = "1"
   
    rsquery!Field22 = strPubTryToIgnoreFileFormat
    
    strPubStartTime = FormatDateTime(Now, vbLongTime)
    rsquery!Field23 = FormatDateTime(Now, vbLongTime)
    
    strPubEndTime = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
    rsquery!Field25 = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
    
    rsquery.Update
Else
    rsquery!Field10 = "M"
    rsquery.Update
End If
rsquery.Close
strPubManual = "M"

'strquery = "Select * From MstSettings"
'rsquery.Open strquery, con, adOpenKeyset, adLockOptimistic
'If rsquery.EOF = True Then
'
'    rsquery.AddNew
'
'    rsquery!Setting16 = "M"
'    rsquery!Setting17 = "10 Min."
'
'
'    strPubRateStartTime = FormatDateTime(Now, vbLongTime)
'    rsquery!Setting18 = FormatDateTime(Now, vbLongTime)
'
'    strPubRateEndTime = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
'    rsquery!Setting19 = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
'
'    rsquery.Update
'Else
'    rsquery!Setting16 = "M"
'    rsquery.Update
'End If
'rsquery.Close
'strPubRateManual = "M"

Timer2.Enabled = False
MsgBox "Switched to manual uploading!!!", vbInformation
cmdAuto.Visible = True
cmdManual.Visible = False
MDIMain.mnuUpload.Enabled = True
End Sub




Private Sub cmdReport_Click()
Call FillData
Call PrintReport
End Sub

Private Sub cmdSave_Click()
If blnIsFutureTempAdd = True Or blnIsOptionTempAdd = True Then
    Call SaveHandEntries
End If
End Sub

Private Sub cmdStartCapture_Click()
On Error GoTo EH
Dim blnResult As Boolean
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "D:\DLL\udp.txt", strPubPacCapDLL)
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort)
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ)
'If strPubUseEQ = "Y" Then
'    blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ)
'Else
'    blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, "")
'End If
'If gstrUseVSATFlag = "Y" Then
'blnResult = MyObjVSAT.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ, strPubDestPortCur)
'Else
blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, _
"C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, _
strPubDestPortEQ, strPubDestPortCur, strCreateSpotFlag, strSpotFilePath, glngMaxFOToken, glngMaxEQToken, glngMaxCurToken)
'End If
If blnResult = True Then
'    MsgBox "Capture has been started!!!", vbInformation
    Timer1.Enabled = True
    
    blnIsCaptureStarted = True
    cmdStartCapture.Enabled = False
    cmdStopCapture.Enabled = True
    cmdStopCapture.ZOrder
    'cmdVarAnalysis.Enabled = True
    
    MDIMain.txtPortfolio.Text = "Live: ON"
Else
    MsgBox "Capture has not been started!!!", vbInformation
    blnIsCaptureStarted = False
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Call GlobalKeyUp(Shift, KeyCode)
'
'If (Shift And vbAltMask) And (KeyCode = vbKeyD) Then
'    txtDays.SetFocus
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyM) Then
'    txtRate.SetFocus
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyC) Then
'    txtCall.SetFocus
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyP) Then
'    txtPut.SetFocus
'End If
'
'Shift = 0
'KeyCode = 0


Dim strmnuPotfolio As String

If (Shift = 4) And (KeyCode = 65) Then
'    MDIMain.blnPortfoliosLoading = False
'    MDIMain.cmbPortfolioList.SetFocus
'    MDIMain.cmbPortfolioList.DropDown
    
'    MDIMain.blnIsMouseClick = False
    cboPortfolioList.SetFocus
    Shift = 0
    KeyCode = 0
End If
Call GlobalKeyUp(Shift, KeyCode)


If (Shift And vbCtrlMask) And (KeyCode = vbKeyQ) Then
    Unload Me
    cmdSummary.Enabled = False
    frmSummaryPortfolio.Show
ElseIf (Shift = 1 + 2) And (KeyCode = vbKeyG) Then
    
    
    frmLiveGraphAnalysisWithStrategy.Show vbModal
''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyA) Then

'ElseIf KeyCode = vbKeyF5 Then
'    If cmdStartCapture.Enabled = True Then
'        Call cmdStartCapture_Click
'        Shift = 0
'        KeyCode = 0
'    End If
ElseIf (Shift = 1 + 2) And (KeyCode = vbKeyV) Then
    If cmdVarAnalysis.Enabled = True Then
        Call cmdVarAnalysis_Click
    End If
ElseIf KeyCode = vbKeyT And Shift = 1 Then
    If cmdTodaysExpense.Visible = True Then
        Call cmdTodaysExpense_Click
    End If
ElseIf KeyCode = vbKeyF7 Then
'    If cmdStopCapture.Enabled = True Then
'        Call cmdStopCapture_Click
'        Shift = 0
'        KeyCode = 0
'    End If
    If cmdStopCapture.Enabled = True Then
        Call cmdStopCapture_Click
        Shift = 0
        KeyCode = 0
    ElseIf cmdStartCapture.Enabled = True Then
        Call cmdStartCapture_Click
        Shift = 0
        KeyCode = 0
    End If
ElseIf (Shift And vbCtrlMask) And (KeyCode = vbKeyA) Then
    SSTab2.SetFocus
ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyD) Then
    Shift = 0
    KeyCode = 0
    txtDays.SetFocus
''''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyM) Then 'Commented By SSP 22/11/2012
''''    Shift = 0
''''    KeyCode = 0
''''    txtRate.SetFocus
ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyC) Then
    Shift = 0
    KeyCode = 0
    txtCall.SetFocus
ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyP) Then
    Shift = 0
    KeyCode = 0
    txtPut.SetFocus
'ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyI) Then
''    Shift = 0
''    KeyCode = 0
'    If strPubIsNewIV = "1" Then
'            Shift = 0
'            KeyCode = 0
'        If lstDetails1.ListItems.count = 0 Then
'            If MsgBox("There is no Strike found!!!", vbCritical + vbOKOnly, "AddIV") = vbOK Then
''                Unload frmModifyIV
'            End If
'        Else
'            frmModifyIV.Show vbModal
'        End If
'    End If
End If

End Sub

Private Sub Form_Load()
'If intUseEscape = 1 Then
'    cmdClose.Cancel = True
'ElseIf intUseEscape = 0 Then
'    cmdClose.Cancel = False
'End If
Dim dt As Date
dt = Date
If dt >= dtPubExpiryDate Then 'dd/mm/yyyy
'    MsgBox "Please Contact Software Vendor...", vbCritical, "Expiry Date Violation"
'    End
    Call ShowSoftwareExpiredReminder
End If
dtTodaysDate = Date
If gblnAutomaticDaysReduce = True Then 'Added By SSP 05/04/2012 'AutomaticDaysReduce
    tmrAutomaticDaysReduce.Enabled = True
    Call CalculateAutomaticDaysReduceInterval(Left(Right(tbsPortfolio.SelectedItem, 10), Len(tbsPortfolio.SelectedItem) - 1))
    Call CalculateAutomaticDaysReduceIntervalCur 'Added By SSP 02/01/2013
Else
    tmrAutomaticDaysReduce.Enabled = False
End If

Dim strQ As String
Dim rsQ As ADODB.Recordset

blnIsCaptureStarted = False
'optThPriceMinusNewLast.Value = True

'intPubFontSize = GetSetting("DeltaSoft", "Portfolio", "FontSize", 7)
lstDetails1.Font.Size = intPubFontSize

Dim intColCount As Integer
If intPubFontSize > 8 Then
    For intColCount = 1 To lstDetails1.ColumnHeaders.count
        lstDetails1.ColumnHeaders.Item(intColCount).Width = lstDetails1.ColumnHeaders.Item(intColCount).Width + intPubFontSize * intPubFontSize
    Next
End If

MDIMain.txtPortfolio.Visible = True
MDIMain.txtPortfolio.Text = "Live: OFF"

'Call FillPortfolioCombo
Call FillNewPortfolioCombo
'Commented by AAP on 23/11/2012
'MDIMain.Toolbar1.Buttons.Item(typToolBar.int8).Visible = False  'Added by AAP on 21/11/2012
'--------------------------------------------------------------------------------------------------------
Call SetListFromDB
'Call FillPortfolio
If strPubIgnorePortfolio = "Y" Then
    cmdTodaysExpense.Visible = False
Else
    cmdTodaysExpense.Visible = True
End If

blnPubIsLiveBhavcopyWithStrategyOpen = True  'Added by AAP on 02/11/2012
MDIMain.mnuToolsDaysReduce.Enabled = False
lstDetails1.BackColor = lngPubListBC

lngColor1 = lngPubCallFC ' GetSetting("DeltaSoft", "Portfolio", "lngColor1", lngColor1)
lngColor2 = lngPubPutFC '  GetSetting("DeltaSoft", "Portfolio", "lngColor2", lngColor2)
lngColor3 = lngPubPV ' GetSetting("DeltaSoft", "Portfolio", "lngColor3", lngColor3)
lngColor4 = lngPubNV ' GetSetting("DeltaSoft", "Portfolio", "lngColor4", lngColor4)
lngColor5 = lngPubListBC ' GetSetting("DeltaSoft", "Portfolio", "lngColor5", lngColor5)

Call MenusOnLoad
userinfo.SELUSERCD = ""
'Code For Resolution
'============================
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

Set rsDelete = New ADODB.Recordset
rsDelete.Open "Delete * from DummyTrackerTemp", con, adOpenKeyset, adLockPessimistic
Set rsDelete = Nothing

Set rsDelete = New ADODB.Recordset
rsDelete.Open "Delete from DummyTracker Where CFMonth='T'", con, adOpenKeyset, adLockPessimistic
Set rsDelete = Nothing


'MDIMain.mnuFile1CrePort1.Enabled = False
Call FillCombo
'ComboFillup "User_detl", "USER_ID", "UserCD", " USER_TYPE='User'", cboUserCd
If RS.State = 1 Then RS.Close

blnIsLoading = True

blnIsOptionTempAdd = False
blnIsFutureTempAdd = False
cmdSave.ToolTipText = ""

'MDIMain.cmbPortfolioList.Visible = True
'MDIMain.txtPortfolio.Visible = True
MDIMain.mnuFileSavePortfolio.Visible = False
cmdSave.Enabled = False

LOCKALL
txtDate.Text = Format(Date, "dd-MMM-yyyy")
Call ClearAll
Call SetTabs(strPubMyDesc)
Call FillDetails(strPubMyDesc)
Call FillStrike
Call CalculateSummary

If strPubUseUsercodeInPortfolio = "Y" Then
    cboUserCd.Visible = True
    lblUserCd.Visible = True
    Call FillUserCode
Else
    cboUserCd.Visible = False
    lblUserCd.Visible = False
End If
'Added by AAP on 03/11/2012
'--------------------------------------------------------------------------------------------------------
Call FillStrategy

blnIsLoading = False
cboPortfolioList.Text = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))



'MDIMain.Toolbar1.Enabled = True

Call MDIMain.EnableToolBar
MDIMain.Toolbar1.Buttons(typToolBar.int8).Enabled = False    'Added by AAP on 02/11/2012
MDIMain.Toolbar1.Buttons(typToolBar.intTradeTrail).Enabled = False 'disable TradeTrail 09/11/2012

'MDIMain.Toolbar1.Buttons(typToolBar.inttradetrail).Enabled = False

cmdStartCapture.Enabled = True
cmdStopCapture.Enabled = False

Timer2.Enabled = False
If blnIsSummaryPortfolioOpenForDisplay = False Then
    'For Automated Uploading
    Timer2.Enabled = False
    If strPubManual = "A" Then
        If CDate(strPubStartTime) <= CDate(FormatDateTime(Now, vbLongTime)) And CDate(strPubEndTime) >= CDate(FormatDateTime(Now, vbLongTime)) Then
            Timer2.Enabled = True
            Timer3.Enabled = False
            dtEndTime = Now
            dtStartTime = Now
        End If
        cmdManual.Visible = True
        cmdManual.ZOrder
        cmdAuto.Visible = False
    Else
        cmdManual.Visible = False
        cmdAuto.Visible = True
        cmdAuto.ZOrder
        Timer2.Enabled = False
        Timer3.Enabled = False
    End If
'End If


End If
Timer3.Enabled = False


If gblnAlwaysBroadCastOn = True Then 'Added By SSP 31/12/2012
    Call cmdStartCapture_Click
End If

'cmdVarAnalysis.Enabled = False


'''' subclass the listview using the handle of the form
'''    ' if you are using the listview in a user control,
'''    'pass the handle of the usercontrol in the
'''    ' user control initialize sub
'''g_addProcOld = SetWindowLong(hWnd, GWL_WNDPROC, AddressOf WindowProc)
'''
'''
'''ReDim Preserve clr(lstDetails1.ListItems.count, lstDetails1.ColumnHeaders.count)
''''Initialise the subclassing
'''g_MaxItems = lstDetails1.ListItems.count - 1
'''g_MaxColumns = lstDetails1.ColumnHeaders.count
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

Private Sub Form_Unload(Cancel As Integer)
Call SaveListSettingsToDB
Call MDIMain.DisableToolBar
If cmdStopCapture.Enabled = True Then
    Call StopCaptureOnForm
End If
 If blnIsCaptureStarted = True Then
     Call OnlineRateUpdate
 End If
 If blnIsOptionTempAdd = True Or blnIsFutureTempAdd = True Then
     intRes = MsgBox("Are you sure to close this portfolio without saving hand entries? Press Ok to close this form...", vbQuestion + vbOKCancel, "Hand Entries")
     If intRes = vbCancel Then
         Cancel = True
         Exit Sub
     End If
     blnIsOptionTempAdd = False
     blnIsFutureTempAdd = False
     cmdSave.ToolTipText = ""
     MDIMain.mnuFileSavePortfolio.Visible = False
 End If
   
 userinfo.SELUSERCD = ""
 If gblnUseStrategySetlogic = True Then
    MDIMain.Toolbar1.Buttons(typToolBar.int8).Enabled = True
End If
mode = True
blnPubIsLiveBhavcopyWithStrategyOpen = False

MDIMain.mnuFileNewPortfolio.Enabled = True
MDIMain.mnuFileModifyPortfolio.Enabled = True
MDIMain.mnuFileOpenPortfolio.Enabled = True
MDIMain.mnuFileDeletePortfolio.Enabled = False

MDIMain.mnuMasters.Enabled = True 'Whole Master Menu

MDIMain.mnuView.Enabled = True
MDIMain.mnuViewUserPortfolioDetails.Enabled = False
MDIMain.mnuViewLiveBhavcopy.Enabled = True

MDIMain.mnuUpload.Enabled = True
MDIMain.mnuUploadVolatility.Enabled = True
MDIMain.mnuUploadBhavcopyFile.Enabled = False
MDIMain.mnuUploadDeleteUploadedData.Enabled = False
MDIMain.mnuUploadManualUpload.Enabled = False
MDIMain.mnuUploadMultipleFileUpload.Enabled = False
MDIMain.mnuUploadDeleteCurrentlyUploadedData.Enabled = False
MDIMain.mnuUploadCustomizedFile.Enabled = False
MDIMain.mnuUploadFurureStockRate.Enabled = True


MDIMain.mnuUtility.Enabled = False 'Whole Utility Menu

MDIMain.mnuToolsAddIV.Enabled = True
MDIMain.mnuToolsDaysReduce.Enabled = True
MDIMain.mnuToolsHidePortfolio.Enabled = True
MDIMain.mnuToolsDeleteHandEntries.Enabled = False
MDIMain.mnuCarryForwardBalance.Enabled = False
MDIMain.mnuToolsRemoveExpense.Enabled = True

MDIMain.mnuToolsLiveSummaryPortfolio.Enabled = True
'Added By SSP 17/2/2012
MDIMain.mnuToolsLiveSummaryPortfolioM2M.Enabled = True

MDIMain.mnuToolsLiveBhavcopyWithBuySell_IV.Enabled = True
MDIMain.mnuToolsLiveIVAnalysis.Enabled = True
MDIMain.mnuFileClose.Enabled = False
MDIMain.mnuLiveBhavcopywithStrategy.Enabled = True 'Added by AAP on 02/11/2012
MDIMain.mnuAssignSeperator.Enabled = True 'Added by AAP on 23/11/2012
MDIMain.mnuStartegyMaster.Enabled = True 'Added by AAP on 23/11/2012
MDIMain.mnuToolsLiveBhavcopyScriptwise.Enabled = True

'If blnIsTabExceeds = True Then
    'frmSummaryPortfolio.Show
'Else
'    frmPortfolio.Show
'End If
'UPORTFOLIO = False

'MDIMain.cmbPortfolioList.Visible = False

MDIMain.txtPortfolio.Visible = False
MDIMain.txtPortfolio.Text = "Portfolio List"

End Sub

'Party Code,Symbol,Inst. Type,Expiry Date,Stk. Price,Opt. Type,Open Qty,Sell Qty,Sell Rate,Sell Amt,,,,,,

Private Sub FillUserCode()
Dim strQ As String
Dim rsQ As ADODB.Recordset
cboUserCd.AddItem "All"
strQ = "Select Distinct UserCD From User_Detl Where User_Type='USER' Order By UserCD"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        cboUserCd.AddItem IIf(IsNull(rsQ!USERCD) = True, "", rsQ!USERCD) & "=" & RetrieveUserName(IIf(IsNull(rsQ!USERCD) = True, "", rsQ!USERCD))
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing
cboUserCd.Text = "All"
End Sub
Private Sub ClearAllForLtp()
'txtExposure.Text = 0
'txtIntMargin.Text = 0
'txtExp_Margin.Text = 0
'txtEquity.Text = 0
'txtCashTotal.Text = 0
'txtPrvBalance.Text = 0
'txtTExpense.Text = 0
'txtNetBalance.Text = 0
'txtTotal.Text = 0

txtInShares.Text = 0
txtTotal_DelVal.Text = 0
txtTotal_GMVal.Text = 0
txtTotal_ThetaVal.Text = 0
txtTotal_VGVal.Text = 0

'txtTStock.Text = 0
'txtNStock.Text = 0
'txtTradeStock.Text = 0

'txtPAvg.Text = 0
'txtTAvg.Text = 0
'txtNAvg.Text = 0
'txtNTrade.Text = 0

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
'txtFSR.Text = 0
'txtOR.Text = 0
txtFSU.Text = 0
txtOU.Text = 0
txtBalance.Text = 0

txtOptionUN.Text = 0
txtBalanceN.Text = 0
txtTotal_RhoVal.Text = 0

End Sub

Public Sub IvCalculation()
'Dim intStrike As Integer
''New Last=5
''Diffence=6
''NewIV=7
''Token=17
'If intRate = 2 Then
'    For intStrike = 1 To lstDetails1.ListItems.count
'        If Val(lstDetails1.ListItems(intStrike).SubItems(19)) <> 0 Then
'            lstDetails1.ListItems(intStrike).SubItems(5) = arrLtpCur(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 10000000
'            'lstDetails1.ListItems(intStrike).SubItems(5) = IIf(arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100 <> Val(lstDetails1.ListItems(intStrike).SubItems(5)), arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100, lstDetails1.ListItems(intStrike).SubItems(5))
'            If lstDetails1.ListItems(intStrike).SubItems(1) = "C" Then
'                lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedCallVolatility(Val(txtRate.Text), Val(lstDetails1.ListItems(intStrike)), _
'                Val(txtTempDays.Text) / 365, (Val(txtDomesticIntRate.Text) - Val(txtForeignIntRate.Text)) / 100, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, "0.0000") '6
'
'                'Difference
'                If strPubLiveBhavcopyIVDifference = "NewLast" Then
'                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(5) - lstDetails1.ListItems(intStrike).SubItems(4), "0.00")
'                ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
'                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(4) - lstDetails1.ListItems(intStrike).SubItems(5), "0.00")
'                End If
'
'            Else
'                lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedPutVolatility(Val(txtRate.Text), Val(lstDetails1.ListItems(intStrike)), _
'                Val(txtTempDays.Text) / 365, (Val(txtDomesticIntRate.Text) - Val(txtForeignIntRate.Text)) / 100, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, "0.0000") '6
'
'                'Difference
'                If strPubLiveBhavcopyIVDifference = "NewLast" Then
'                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(5) - lstDetails1.ListItems(intStrike).SubItems(4), "0.00")
'                ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
'                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(4) - lstDetails1.ListItems(intStrike).SubItems(5), "0.00")
'                End If
'
'            End If
'        End If
'    Next
'
'Else
''    For intStrike = 1 To lstDetails1.ListItems.count
''        If Val(lstDetails1.ListItems(intStrike).SubItems(19)) <> 0 Then
''            lstDetails1.ListItems(intStrike).SubItems(5) = arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100
''            'lstDetails1.ListItems(intStrike).SubItems(5) = IIf(arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100 <> Val(lstDetails1.ListItems(intStrike).SubItems(5)), arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100, lstDetails1.ListItems(intStrike).SubItems(5))
''            If lstDetails1.ListItems(intStrike).SubItems(1) = "C" Then
''                lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedCallVolatility(txtRate.Text, Val(lstDetails1.ListItems(intStrike)), _
''                Val(txtTempDays.Text) / 365, intRate, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, "0.0000")   '6
''
''                'Difference
''                If strPubLiveBhavcopyIVDifference = "NewLast" Then
''                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(5) - lstDetails1.ListItems(intStrike).SubItems(4), "0.00")
''                ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
''                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(4) - lstDetails1.ListItems(intStrike).SubItems(5), "0.00")
''                End If
''
''            Else
''
''                lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedPutVolatility(txtRate.Text, Val(lstDetails1.ListItems(intStrike)), _
''                Val(txtTempDays.Text) / 365, intRate, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, "0.0000")   '6
''
''                'Difference
''                If strPubLiveBhavcopyIVDifference = "NewLast" Then
''                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(5) - lstDetails1.ListItems(intStrike).SubItems(4), "0.00")
''                ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
''                    lstDetails1.ListItems(intStrike).SubItems(6) = Format(lstDetails1.ListItems(intStrike).SubItems(4) - lstDetails1.ListItems(intStrike).SubItems(5), "0.00")
''                End If
''
''            End If
''        End If
''    Next
'End If
End Sub

Private Sub LTPCalculation()
Dim intCount As Integer
If gstrUseLiveIV = "Y" Then
    Call GreeksCalculationLTPWithLiveIV
Else
    Call GreeksCalculationLTP
End If

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



txtPremium.Text = Round(-Val(txtPremium.Text), 0)
'txtFSR.Text = Round(-Val(txtFSR.Text), 2)
'txtOR.Text = Round(-Val(txtOR.Text), 2)
txtFSU.Text = Round(-Val(txtFSU.Text), 0)
txtOU.Text = Round(-Val(txtOU.Text), 0)

If strPubIsFormatAllowed = "1" Then
'    Call FormatTextBoxValues_4_Portfolio
    txtFSU.Text = FormatValue(txtFSU)
    txtPremium.Text = FormatValue(txtPremium)
    txtOU.Text = FormatValue(txtOU)
End If

txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text), 0)

txtNetBalance.Text = Val(txtBalance.Text) - Val(txtTotal.Text)

If blnIsCloseOut = True Then
    txtBalance.Text = Val(txtBalance.Text) + curCarryForward
End If



Call ChangeColor

End Sub

Private Sub LTPCalculationTodays()
txtTodaysOU.Text = "0"
txtTodaysFSU.Text = "0"
txtTodaysBal.Text = "0"
txtM2MTodaysOU = "0"
If intRate = 2 Then
    Call CurrencyCalculationTodaysLTP
Else
    Call GreeksCalculationTodaysLTP
End If
If intRate = 2 Then
    txtTodaysOU.Text = Round((Val(txtTodaysOU.Text) * curLotSize), 4)
    txtM2MTodaysOU.Text = Round((Val(txtM2MTodaysOU.Text) * curLotSize), 4)
    txtTodaysFSU.Text = Round((-((curTAvg * (curTTrade - Val(txtRate.Text)))) * curLotSize), 4)
Else
    txtTodaysOU.Text = Round((Val(txtTodaysOU.Text)), 0)
    txtM2MTodaysOU.Text = Round((Val(txtM2MTodaysOU.Text)), 0)
    txtTodaysFSU.Text = Round(-((curTAvg * (curTTrade - Val(txtRate.Text)))), 0)
End If
If strPubIsFormatAllowed = "1" Then
    txtTodaysOU.Text = FormatValue(txtTodaysOU)
    txtM2MTodaysOU.Text = FormatValue(txtM2MTodaysOU)
    txtTodaysFSU.Text = FormatValue(txtTodaysFSU)
End If
If intRate = 2 Then 'Updated By SSP 02/05/2012
    txtTodaysBal.Text = Round(Val(txtTodaysFSR.Text) + Val(txtTodaysFSU.Text) + Val(txtTodaysPremium.Text) + Val(txtTodaysOR.Text) + Val(txtTodaysOU.Text), 4)
Else
    txtTodaysBal.Text = Round(Val(txtTodaysFSR.Text) + Val(txtTodaysFSU.Text) + Val(txtTodaysPremium.Text) + Val(txtTodaysOR.Text) + Val(txtTodaysOU.Text), 0)
End If
txtM2MTodays.Text = Round((Val(txtTodaysFSR.Text) + Val(txtTodaysFSU.Text) + Val(txtTodaysPremium.Text) + Val(txtTodaysOR.Text) + Val(txtM2MTodaysOU.Text)) - Val(txtTExpense.Text))
txtTodaysM2MBalanceWithoutExpense.Text = Round(Val(txtTodaysFSR.Text) + Val(txtTodaysFSU.Text) + Val(txtTodaysPremium.Text) + Val(txtTodaysOR.Text) + Val(txtM2MTodaysOU.Text))


If intRate = 2 Then
    txtOptionUN.Text = Round(Val(txtOptionUN.Text) * curLotSize, 4)
Else
    txtOptionUN.Text = Round(Val(txtOptionUN.Text), 0)
End If

If strPubIsFormatAllowed = "1" Then
    txtOptionUN.Text = FormatValue(txtOptionUN)
End If
If gstrUseSqareOffExpense = "Y" Then
    txtBalanceN.Text = Round((Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOptionUN.Text) + Val(txtFSU.Text)) - Val(txtTotal.Text) - Val(txtSquareOffExpense.Text), 0)
Else
    txtBalanceN.Text = Round((Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOptionUN.Text) + Val(txtFSU.Text)) - Val(txtTotal.Text), 0)
End If

Call ChangeColorM2M


End Sub



Private Sub SetListFromDB()
On Error GoTo EH

Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim strSettingsValue As String
Set rsQ = New ADODB.Recordset
strQ = "Select * From MstApplicationSettings Where SettingsName='Portfolio'"
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        strSettingsValue = IIf(IsNull(rsQ!SettingsValue) = True, "", rsQ!SettingsValue)
        If Val(strSettingsValue) <= 0 Then
            strSettingsValue = 100
        End If
        If rsQ!SubSettingName = "Strikes" Then
            lstDetails1.ColumnHeaders.Item(1).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "C/P" Then
            lstDetails1.ColumnHeaders.Item(2).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Unit" Then
            lstDetails1.ColumnHeaders.Item(3).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Traded" Then
            lstDetails1.ColumnHeaders.Item(4).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Th. Price" Then
            lstDetails1.ColumnHeaders.Item(5).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "LTP" Then
            lstDetails1.ColumnHeaders.Item(6).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Difference" Then
            lstDetails1.ColumnHeaders.Item(7).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Live Iv" Then
            lstDetails1.ColumnHeaders.Item(8).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "lv" Then
            lstDetails1.ColumnHeaders.Item(9).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Delta" Then
            lstDetails1.ColumnHeaders.Item(10).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Del Val" Then
            lstDetails1.ColumnHeaders.Item(11).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Theta" Then
            lstDetails1.ColumnHeaders.Item(12).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Theta Val" Then
            lstDetails1.ColumnHeaders.Item(13).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Vega" Then
            lstDetails1.ColumnHeaders.Item(14).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Vg Val" Then
            lstDetails1.ColumnHeaders.Item(15).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Gamma" Then
            lstDetails1.ColumnHeaders.Item(16).Width = Val(strSettingsValue)
        ElseIf rsQ!SubSettingName = "Gm Val" Then
            lstDetails1.ColumnHeaders.Item(17).Width = Val(strSettingsValue)
        End If
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Private Sub SaveListSettingsToDB()
On Error GoTo EH

Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim intColCount As Integer

For intColCount = 1 To lstDetails1.ColumnHeaders.count
    strQ = "Select * From MstApplicationSettings Where SettingsName='Portfolio' And SubSettingName='" & Trim$(lstDetails1.ColumnHeaders.Item(intColCount).Text) & "'"
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    If rsQ.EOF = False Then
        rsQ!SubSettingName = Trim$(lstDetails1.ColumnHeaders.Item(intColCount).Text)
        rsQ!SettingsName = "Portfolio"
        rsQ!SettingsValue = lstDetails1.ColumnHeaders.Item(intColCount).Width
        rsQ.Update
    Else
        rsQ.AddNew
        rsQ!SettingsID = GETCODEWOC("MstApplicationSettings", "SettingsID")
        rsQ!SubSettingName = Trim$(lstDetails1.ColumnHeaders.Item(intColCount).Text)
        rsQ!SettingsName = "Portfolio"
        rsQ!SettingsValue = lstDetails1.ColumnHeaders.Item(intColCount).Width
        rsQ.Update
    End If
    rsQ.Close
    Set rsQ = Nothing
Next

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Public Sub FillToken()
On Error GoTo EH
Dim intStrike As Integer
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim strStrikes As String
Dim rsFind As ADODB.Recordset
Dim intCount As Integer


If intRate = 2 Then
    strQ = "Select Token,Strike,Left(Call_Put,1) As CP From MstTokensCurrency Where Left(Type,3)='OPT' " & _
        " And Script='" & Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)) & "'" & _
        " And Format(Exp_Date,'MM/YYYY')='" & Format(CDate(txtExpDt.Text), "MM/YYYY") & "' Order By Strike,Call_Put"

Else
    strQ = "Select Token,Strike,Left(Call_Put,1) As CP From MstTokens Where Left(Type,3)='OPT' " & _
        " And Script='" & Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)) & "'" & _
        " And Format(Exp_Date,'DD/MM/YYYY')='" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & "' Order By Strike,Call_Put"
End If
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        If intCount = lstDetails1.ListItems.count Then
            GoTo ComeToNextLoop
        End If
        For intStrike = 1 To lstDetails1.ListItems.count
            If Val(lstDetails1.ListItems(intStrike)) = rsQ!Strike And lstDetails1.ListItems(intStrike).SubItems(1) = rsQ!CP Then
                lstDetails1.ListItems(intStrike).SubItems(19) = rsQ!Token
                intCount = intCount + 1
                GoTo NextList
            End If
        Next intStrike

NextList:

        rsQ.MoveNext
    Wend
    
ComeToNextLoop:
    rsQ.MoveFirst
    intCount = 0
    While Not rsQ.EOF
        If intCount = lstDetailsTodays.ListItems.count Then
            GoTo ComeToEnd
        End If

        For intStrike = 1 To lstDetailsTodays.ListItems.count
            If Val(lstDetailsTodays.ListItems(intStrike)) = rsQ!Strike And lstDetailsTodays.ListItems(intStrike).SubItems(1) = rsQ!CP Then
                lstDetailsTodays.ListItems(intStrike).SubItems(19) = rsQ!Token
                intCount = intCount + 1
                GoTo ComeHere
            End If
        Next intStrike
        
ComeHere:
        rsQ.MoveNext
    Wend
    
ComeToEnd:
End If
rsQ.Close
Set rsQ = Nothing

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Public Sub FillStrike()
'Procedure For Filling Strike with required calculation Present in a TextFile
'lstDetails1.ListItems.Clear
'Dim strQ As String
'Dim rsQ As ADODB.Recordset
'
'Dim cmd As ADODB.Command
'Dim lvItem As ListItem
'Dim lngColor As Long
'
''Const lngColor1 As Long = &H40C0&
''Const lngColor2 As Long = &H400040
'
'Set rsQ = New ADODB.Recordset
'Set cmd = New ADODB.Command
'cmd.ActiveConnection = con
'cmd.CommandType = adCmdStoredProc
'If userinfo.SELUSERCD = "" Then
'    cmd.CommandText = "QryOrderedUnitsTradedSummary"
'    cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'    cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
'    cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
'Else
'    cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
'    cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
'    cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
'    cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
'    cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
'End If
'lngColor = &H2E4E30
'
'rsQ.CursorLocation = adUseClient
'rsQ.CursorType = adOpenKeyset
'rsQ.LockType = adLockOptimistic
'Set rsQ = cmd.Execute
'If rsQ.EOF = False Then
'    While Not rsQ.EOF
'        If rsQ!strike <> 0 Then
'
'            If rsQ!cp = "C" Then
'                lngColor = lngColor1
'            ElseIf rsQ!cp = "P" Then
'                lngColor = lngColor2
'            End If
'
'            Set lvItem = lstDetails1.ListItems.Add(, , rsQ!strike)
'
'            lvItem.ForeColor = lngColor
'            lvItem.Bold = True
'
'            lvItem.SubItems(1) = rsQ!cp
'
'            lvItem.ListSubItems(1).ForeColor = lngColor
'            lvItem.ListSubItems(1).Bold = True
'
'            Call GreeksCalculation(lvItem, rsQ!strike, rsQ!cp, lngColor)
'
'            If rsQ!OPTIONQTY = 0 Then
'                lvItem.SubItems(2) = 0
'                lvItem.SubItems(3) = 0
'            Else
'                lvItem.SubItems(2) = Val(lvItem.SubItems(2)) + rsQ!OPTIONQTY
''                lvItem.SubItems(3) = Round((rsQ!OPTIONVAL) / (rsQ!OPTIONQTY), 2)
'                lvItem.SubItems(3) = Format((rsQ!OPTIONVAL) / (rsQ!OPTIONQTY), strPubFormatTraded)
'                lvItem.SubItems(8) = -(Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(7) / 100))
'                lvItem.SubItems(10) = Val(lvItem.SubItems(2)) * (-Val(lvItem.SubItems(9)))
'                lvItem.SubItems(12) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(11))
'                lvItem.SubItems(14) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(13))
'            End If
'
'
'            lvItem.ListSubItems(2).Bold = True
'
'            If Val(lvItem.SubItems(2)) < 0 Then
'                lvItem.ListSubItems(2).ForeColor = lngColor4
'            Else
'                lvItem.ListSubItems(2).ForeColor = lngColor3
'            End If
'
'            If Val(lvItem.SubItems(3)) < 0 Then
'                lvItem.ListSubItems(3).ForeColor = lngColor4
'            Else
'                lvItem.ListSubItems(3).ForeColor = lngColor3
'            End If
'        End If
'        rsQ.MoveNext
'    Wend
'End If
'rsQ.Close
'Set rsQ = Nothing
'Set cmd = Nothing

Call Calculation
Call FillToken
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


strCall = txtCall.Text
strPut = txtPut.Text
If strPubIsNewIV = "1" Then
    Set rsQ2 = New ADODB.Recordset
    Set cmd2 = New ADODB.Command
    cmd2.ActiveConnection = con
    cmd2.CommandType = adCmdStoredProc
    cmd2.CommandText = "QryGetNewIV"
    cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
    cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
    cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 8)))
    cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))
    rsQ2.CursorLocation = adUseClient
    rsQ2.CursorType = adOpenStatic
    rsQ2.LockType = adLockReadOnly
    Set rsQ2 = cmd2.Execute
    If rsQ2.EOF = False Then
        strCall = rsQ2!NewIV
        strPut = rsQ2!NewIV
    End If
    rsQ2.Close
    Set rsQ2 = Nothing
    Set cmd2 = Nothing
End If


If strCP = "C" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = curRate - curStrike
        List.SubItems(9) = 100
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = 0
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = 50
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
    Else
        List.SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatLastVal)
        List.SubItems(9) = Format(CalculateDeltaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatDelta)
        List.SubItems(11) = Format(-(CalculateThetaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), strPubFormatTheta) 'Theta
        List.SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatVega)
        List.SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatGamma)
    End If
    List.SubItems(8) = Val(strCall) 'lv
    
    'Updated by SSP 06/12/2011
    List.SubItems(10) = Format(-(Val(List.SubItems(2)) * (Val(List.SubItems(9)) / 100)), strPubFormatDelta)
    List.SubItems(12) = Format(Val(List.SubItems(2)) * (-Val(List.SubItems(11))), strPubFormatTheta)
    List.SubItems(14) = Format(Val(List.SubItems(2)) * Val(List.SubItems(13)), strPubFormatVega)
    List.SubItems(16) = Format(Val(List.SubItems(2)) * Val(List.SubItems(15)), strPubFormatGamma)
    
    txtDetalC.Text = Val(txtDetalC.Text) + Val(List.SubItems(10))
    txtThetaC.Text = Val(txtThetaC.Text) + Val(List.SubItems(12))
    txtVegaC.Text = Val(txtVegaC.Text) + Val(List.SubItems(14))
    txtGammaC.Text = Val(txtGammaC.Text) + Val(List.SubItems(16))
    txtCUnits.Text = Val(txtCUnits.Text) + Val(List.SubItems(2))
End If

If strCP = "P" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = 0
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = curStrike - curRate
        List.SubItems(9) = -100
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = -50
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
    Else
        List.SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatLastVal)
        List.SubItems(9) = Format(CalculateDeltaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatDelta)
        List.SubItems(11) = Format(-(CalculateThetaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), strPubFormatTheta)
        List.SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatVega)
        List.SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatGamma)
    End If
    List.SubItems(8) = Val(strPut)
    
    'Updated by SSP 06/12/2011
    List.SubItems(10) = Format(-(Val(List.SubItems(2)) * (Val(List.SubItems(9)) / 100)), strPubFormatDelta)
    List.SubItems(12) = Format(Val(List.SubItems(2)) * (-Val(List.SubItems(11))), strPubFormatTheta)
    List.SubItems(14) = Format(Val(List.SubItems(2)) * Val(List.SubItems(13)), strPubFormatVega)
    List.SubItems(16) = Format(Val(List.SubItems(2)) * Val(List.SubItems(15)), strPubFormatGamma)
    
    txtDetalP.Text = Val(txtDetalP.Text) + Val(List.SubItems(10))
    txtThetaP.Text = Val(txtThetaP.Text) + Val(List.SubItems(12))
    txtVegaP.Text = Val(txtVegaP.Text) + Val(List.SubItems(14))
    txtGammaP.Text = Val(txtGammaP.Text) + Val(List.SubItems(16))
    txtPUnits.Text = Val(txtPUnits.Text) + Val(List.SubItems(2))
    
    
    
End If

txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(List.SubItems(10))
txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(List.SubItems(12))
txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(List.SubItems(14))
txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(List.SubItems(16))
txtPremium.Text = Val(txtPremium.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(3)))
txtOU.Text = Val(txtOU.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(4)))

'Filling Color
List.ListSubItems(4).ForeColor = lngColor1
List.ListSubItems(5).ForeColor = lngColor1
List.ListSubItems(6).ForeColor = lngColor1
List.ListSubItems(7).ForeColor = lngColor1
List.ListSubItems(8).ForeColor = lngColor1
List.ListSubItems(9).ForeColor = lngColor1
List.ListSubItems(10).ForeColor = lngColor1
List.ListSubItems(11).ForeColor = lngColor1
List.ListSubItems(12).ForeColor = lngColor1
List.ListSubItems(13).ForeColor = lngColor1
List.ListSubItems(14).ForeColor = lngColor1
List.ListSubItems(15).ForeColor = lngColor1
List.ListSubItems(16).ForeColor = lngColor1
End Sub

Private Sub GreeksCalculationTodays(List As ListItem, curStrike As Double, strCP As String)

Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim rsQ2 As ADODB.Recordset
Dim cmd2 As ADODB.Command

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)


strCall = txtCall.Text
strPut = txtPut.Text
If strPubIsNewIV = "1" Then
    Set rsQ2 = New ADODB.Recordset
    Set cmd2 = New ADODB.Command
    cmd2.ActiveConnection = con
    cmd2.CommandType = adCmdStoredProc
    cmd2.CommandText = "QryGetNewIV"
    cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
    cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
    cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 8)))
    cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))
    rsQ2.CursorLocation = adUseClient
    rsQ2.CursorType = adOpenStatic
    rsQ2.LockType = adLockReadOnly
    Set rsQ2 = cmd2.Execute
    If rsQ2.EOF = False Then
        strCall = rsQ2!NewIV
        strPut = rsQ2!NewIV
    End If
    rsQ2.Close
    Set rsQ2 = Nothing
    Set cmd2 = Nothing
End If


If strCP = "C" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = curRate - curStrike
'        List.SubItems(9) = 100
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = 0
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = 50
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
    Else
        List.SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatLastVal)
'        List.SubItems(9) = Format(CalculateDeltaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatDelta)
'        List.SubItems(11) = Format(-(CalculateThetaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), strPubFormatTheta) 'Theta
'        List.SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatVega)
'        List.SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatGamma)
    End If
    List.SubItems(8) = Val(strCall) 'lv
    
'    List.SubItems(10) = -(Val(List.SubItems(2)) * (Val(List.SubItems(9)) / 100))
'    List.SubItems(12) = Val(List.SubItems(2)) * (-Val(List.SubItems(11)))
'    List.SubItems(14) = Val(List.SubItems(2)) * Val(List.SubItems(13))
'    List.SubItems(16) = Val(List.SubItems(2)) * Val(List.SubItems(15))

'    txtDetalC.Text = Val(txtDetalC.Text) + Val(List.SubItems(10))
'    txtThetaC.Text = Val(txtThetaC.Text) + Val(List.SubItems(12))
'    txtVegaC.Text = Val(txtVegaC.Text) + Val(List.SubItems(14))
'    txtGammaC.Text = Val(txtGammaC.Text) + Val(List.SubItems(16))
'    txtCUnits.Text = Val(txtCUnits.Text) + Val(List.SubItems(2))
End If

If strCP = "P" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = 0
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = curStrike - curRate
'        List.SubItems(9) = -100
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = -50
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
    Else
        List.SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatLastVal)
'        List.SubItems(9) = Format(CalculateDeltaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatDelta)
'        List.SubItems(11) = Format(-(CalculateThetaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), strPubFormatTheta)
'        List.SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatVega)
'        List.SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatGamma)
    End If
    List.SubItems(8) = Val(strPut)
    
'    List.SubItems(10) = -(Val(List.SubItems(2)) * (Val(List.SubItems(9)) / 100))
'    List.SubItems(12) = Val(List.SubItems(2)) * (-Val(List.SubItems(11)))
'    List.SubItems(14) = Val(List.SubItems(2)) * Val(List.SubItems(13))
'    List.SubItems(16) = Val(List.SubItems(2)) * Val(List.SubItems(15))
'
'    txtDetalP.Text = Val(txtDetalP.Text) + Val(List.SubItems(10))
'    txtThetaP.Text = Val(txtThetaP.Text) + Val(List.SubItems(12))
'    txtVegaP.Text = Val(txtVegaP.Text) + Val(List.SubItems(14))
'    txtGammaP.Text = Val(txtGammaP.Text) + Val(List.SubItems(16))
'    txtPUnits.Text = Val(txtPUnits.Text) + Val(List.SubItems(2))
    
    
    
End If

'txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(List.SubItems(10))
'txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(List.SubItems(12))
'txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(List.SubItems(14))
'txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(List.SubItems(16))
txtTodaysPremium.Text = Val(txtTodaysPremium.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(3)))
txtTodaysOU.Text = Val(txtTodaysOU.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(4)))

''Filling Color
'List.ListSubItems(4).ForeColor = lngColor1
'List.ListSubItems(5).ForeColor = lngColor1
'List.ListSubItems(6).ForeColor = lngColor1
'List.ListSubItems(7).ForeColor = lngColor1
'List.ListSubItems(8).ForeColor = lngColor1
'List.ListSubItems(9).ForeColor = lngColor1
'List.ListSubItems(10).ForeColor = lngColor1
'List.ListSubItems(11).ForeColor = lngColor1
'List.ListSubItems(12).ForeColor = lngColor1
'List.ListSubItems(13).ForeColor = lngColor1
'List.ListSubItems(14).ForeColor = lngColor1
'List.ListSubItems(15).ForeColor = lngColor1
'List.ListSubItems(16).ForeColor = lngColor1
End Sub

Private Sub GreeksCalculationTodaysLTP()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim intStrike As Integer

Dim curStrike As Currency
Dim List As ListItem

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)
For intStrike = 1 To lstDetailsTodays.ListItems.count

    strCall = lstDetailsTodays.ListItems(intStrike).SubItems(8)
    strPut = lstDetailsTodays.ListItems(intStrike).SubItems(8)
    strCP = lstDetailsTodays.ListItems(intStrike).SubItems(1)
    curStrike = lstDetailsTodays.ListItems(intStrike)
    
    If Val(lstDetailsTodays.ListItems(intStrike).SubItems(19)) <> 0 Then
        lstDetailsTodays.ListItems(intStrike).SubItems(5) = arrLtp(Val(lstDetailsTodays.ListItems(intStrike).SubItems(19))) / 100
    End If
    
    If strCP = "C" Then
        If dblT <= 0 And curRate > curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = curRate - curStrike
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        Else
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatLastVal)
        End If
    ElseIf strCP = "P" Then
        If dblT <= 0 And curRate > curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = curStrike - curRate
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        Else
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatLastVal)
        End If
    End If
    
    txtTodaysOU.Text = Val(txtTodaysOU.Text) + (Val(lstDetailsTodays.ListItems(intStrike).SubItems(2)) * Val(lstDetailsTodays.ListItems(intStrike).SubItems(4)))
    
    If Val(lstDetailsTodays.ListItems(intStrike).SubItems(5)) <> 0 Then
        txtM2MTodaysOU.Text = Val(txtM2MTodaysOU.Text) + (Val(lstDetailsTodays.ListItems(intStrike).SubItems(2)) * Val(lstDetailsTodays.ListItems(intStrike).SubItems(5)))
    ElseIf Val(lstDetailsTodays.ListItems(intStrike).SubItems(4)) <> 0 Then
        txtM2MTodaysOU.Text = Val(txtM2MTodaysOU.Text) + (Val(lstDetailsTodays.ListItems(intStrike).SubItems(2)) * Val(lstDetailsTodays.ListItems(intStrike).SubItems(4)))
    End If
    
Next

End Sub

Private Sub CurrencyCalculationTodaysLTP()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim intStrike As Integer

Dim curStrike As Currency
Dim List As ListItem

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)
For intStrike = 1 To lstDetailsTodays.ListItems.count

    strCall = lstDetailsTodays.ListItems(intStrike).SubItems(8)
    strPut = lstDetailsTodays.ListItems(intStrike).SubItems(8)
    strCP = lstDetailsTodays.ListItems(intStrike).SubItems(1)
    curStrike = lstDetailsTodays.ListItems(intStrike)
    
    If Val(lstDetailsTodays.ListItems(intStrike).SubItems(19)) <> 0 Then
        lstDetailsTodays.ListItems(intStrike).SubItems(5) = arrLtpCur(Val(lstDetailsTodays.ListItems(intStrike).SubItems(19))) / 10000000
    End If
    
    If strCP = "C" Then
        If dblT <= 0 And curRate > curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = curRate - curStrike
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        Else
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        End If
    ElseIf strCP = "P" Then
        If dblT <= 0 And curRate > curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = curStrike - curRate
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = 0
        Else
            lstDetailsTodays.ListItems(intStrike).SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        End If
    End If
    
    txtTodaysOU.Text = Val(txtTodaysOU.Text) + (Val(lstDetailsTodays.ListItems(intStrike).SubItems(2)) * Val(lstDetailsTodays.ListItems(intStrike).SubItems(4)))
    
    If Val(lstDetailsTodays.ListItems(intStrike).SubItems(5)) <> 0 Then
        txtM2MTodaysOU.Text = Val(txtM2MTodaysOU.Text) + (Val(lstDetailsTodays.ListItems(intStrike).SubItems(2)) * Val(lstDetailsTodays.ListItems(intStrike).SubItems(5)))
    ElseIf Val(lstDetailsTodays.ListItems(intStrike).SubItems(4)) <> 0 Then
        txtM2MTodaysOU.Text = Val(txtM2MTodaysOU.Text) + (Val(lstDetailsTodays.ListItems(intStrike).SubItems(2)) * Val(lstDetailsTodays.ListItems(intStrike).SubItems(4)))
    End If
    
Next

End Sub




Private Sub GreeksCalculationLTP()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim intStrike As Integer
Dim lngColor As Long

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)


For intStrike = 1 To lstDetails1.ListItems.count
    strCall = lstDetails1.ListItems(intStrike).SubItems(8)
    strPut = lstDetails1.ListItems(intStrike).SubItems(8)
    strCP = lstDetails1.ListItems(intStrike).SubItems(1)
    curStrike = lstDetails1.ListItems(intStrike)
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(19)) <> 0 Then
        lstDetails1.ListItems(intStrike).SubItems(5) = arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100
    End If
    
    If strCP = "C" Then

        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedCallVolatility(txtRate.Text, Val(lstDetails1.ListItems(intStrike)), _
        Val(txtTempDays.Text) / 365, intRate, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting)   '6
        
        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curRate - curStrike
            lstDetails1.ListItems(intStrike).SubItems(9) = 100   '8
            lstDetails1.ListItems(intStrike).SubItems(11) = 0    '10
            lstDetails1.ListItems(intStrike).SubItems(13) = 0    '12
            lstDetails1.ListItems(intStrike).SubItems(15) = 0    '14
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 50
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatLastVal)
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatDelta)
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-(CalculateThetaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), strPubFormatTheta) 'Theta
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatVega)
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatGamma)
        End If
        
        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9) / 100)), strPubFormatDelta)
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))), strPubFormatTheta)
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)), strPubFormatVega)
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), strPubFormatGamma)
    
    
        txtDetalC.Text = Val(txtDetalC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaC.Text = Val(txtThetaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaC.Text = Val(txtVegaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaC.Text = Val(txtGammaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtCUnits.Text = Val(txtCUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
    
    
    
    If strCP = "P" Then
    
        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedPutVolatility(txtRate.Text, Val(lstDetails1.ListItems(intStrike)), _
        Val(txtTempDays.Text) / 365, intRate, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting)   '6
        
        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curStrike - curRate
            lstDetails1.ListItems(intStrike).SubItems(9) = -100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = -50
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatLastVal)
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatDelta)
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-(CalculateThetaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), strPubFormatTheta)
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatVega)
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatGamma)
        End If
        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9) / 100)), strPubFormatDelta)
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))), strPubFormatTheta)
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)), strPubFormatVega)
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), strPubFormatGamma)
                        
        txtDetalP.Text = Val(txtDetalP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaP.Text = Val(txtThetaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaP.Text = Val(txtVegaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaP.Text = Val(txtGammaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtPUnits.Text = Val(txtPUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
    
    'Difference
    If strPubLiveBhavcopyIVDifference = "NewLast" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(5)) - Val(lstDetails1.ListItems(intStrike).SubItems(4)), "0.00")
    ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(4)) - Val(lstDetails1.ListItems(intStrike).SubItems(5)), "0.00")
    End If
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(2)) <> 0 Then
        If Val(lstDetails1.ListItems(intStrike).SubItems(5)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(5)))
        ElseIf Val(lstDetails1.ListItems(intStrike).SubItems(4)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
        End If
    End If
    
    txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
    txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
    txtPremium.Text = Val(txtPremium.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(3)))
    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
Next
End Sub

Private Sub GreeksCalculationLTPWithLiveIV()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim intStrike As Integer
Dim lngColor As Long
Dim strCallTh As String
Dim strPutTh As String

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)

For intStrike = 1 To lstDetails1.ListItems.count
    strCall = lstDetails1.ListItems(intStrike).SubItems(8)
    strPut = lstDetails1.ListItems(intStrike).SubItems(8)
    
    strCallTh = lstDetails1.ListItems(intStrike).SubItems(8)
    strPutTh = lstDetails1.ListItems(intStrike).SubItems(8)
    
    strCP = lstDetails1.ListItems(intStrike).SubItems(1)
    curStrike = lstDetails1.ListItems(intStrike)
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(19)) <> 0 Then
        lstDetails1.ListItems(intStrike).SubItems(5) = arrLtp(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 100
    End If
    
    If strCP = "C" Then

        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedCallVolatility(txtRate.Text, Val(lstDetails1.ListItems(intStrike)), _
        Val(txtTempDays.Text) / 365, intRate, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting)   '6
        
        If Val(lstDetails1.ListItems(intStrike).SubItems(7)) <> 0 Then
            strCall = lstDetails1.ListItems(intStrike).SubItems(7)
        End If
        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curRate - curStrike
            lstDetails1.ListItems(intStrike).SubItems(9) = 100   '8
            lstDetails1.ListItems(intStrike).SubItems(11) = 0    '10
            lstDetails1.ListItems(intStrike).SubItems(13) = 0    '12
            lstDetails1.ListItems(intStrike).SubItems(15) = 0    '14
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 50
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCallTh), 0), strPubFormatLastVal)
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatDelta)
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-(CalculateThetaCall(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), strPubFormatTheta) 'Theta
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatVega)
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), strPubFormatGamma)
        End If
        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9) / 100)), strPubFormatDelta)
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))), strPubFormatTheta)
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)), strPubFormatVega)
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), strPubFormatGamma)
    
        txtDetalC.Text = Val(txtDetalC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaC.Text = Val(txtThetaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaC.Text = Val(txtVegaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaC.Text = Val(txtGammaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtCUnits.Text = Val(txtCUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
    
    
    
    If strCP = "P" Then
    
        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedPutVolatility(txtRate.Text, Val(lstDetails1.ListItems(intStrike)), _
        Val(txtTempDays.Text) / 365, intRate, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting)  '6
        
        If Val(lstDetails1.ListItems(intStrike).SubItems(7)) <> 0 Then
            strPut = lstDetails1.ListItems(intStrike).SubItems(7)
        End If
        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curStrike - curRate
            lstDetails1.ListItems(intStrike).SubItems(9) = -100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = -50
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPutTh), 0), strPubFormatLastVal)
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatDelta)
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-(CalculateThetaPut(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), strPubFormatTheta)
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVega(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatVega)
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGamma(Val(txtRate.Text), intRate, CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), strPubFormatGamma)
        End If
        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9) / 100)), strPubFormatDelta)
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))), strPubFormatTheta)
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)), strPubFormatVega)
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), strPubFormatGamma)
            
        txtDetalP.Text = Val(txtDetalP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaP.Text = Val(txtThetaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaP.Text = Val(txtVegaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaP.Text = Val(txtGammaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtPUnits.Text = Val(txtPUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
    
    'Difference
    If strPubLiveBhavcopyIVDifference = "NewLast" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(5)) - Val(lstDetails1.ListItems(intStrike).SubItems(4)), "0.00")
    ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(4)) - Val(lstDetails1.ListItems(intStrike).SubItems(5)), "0.00")
    End If
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(2)) <> 0 Then
        If Val(lstDetails1.ListItems(intStrike).SubItems(5)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(5)))
        ElseIf Val(lstDetails1.ListItems(intStrike).SubItems(4)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
        End If
    End If
    
    txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
    txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
    txtPremium.Text = Val(txtPremium.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(3)))
    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
Next


End Sub


Private Sub cboPortfolioList_Click()
Call LOCKALL
'txtDate.Text = Format(Date, "dd-MMM-yyyy")
Call ClearAll
Call SetTabs(cboPortfolioList.Text)
Call FillDetails(cboPortfolioList.Text)
Call FillStrike
Call CalculateSummary
End Sub


Private Sub cboPortfolioList_GotFocus()
txtChange.Text = ""
cboPortfolioList.TabStop = True
End Sub

Private Sub cboPortfolioList_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = vbKeyTab And Shift = 1 Then
'    txtPut.SetFocus
'ElseIf KeyCode = vbKeyTab Then
'    txtDays.SetFocus
'End If
If KeyCode = vbKeyTab And Shift = 1 Then
    If intRate = 2 Then
        txtForeignIntRate.SetFocus
    Else
        If cboUserCd.Visible = True Then
            cboUserCd.SetFocus
        Else
            txtPut.SetFocus
        End If
    End If
ElseIf KeyCode = vbKeyTab Then
    txtDays.SetFocus
End If
End Sub


Private Sub cboPortfolioList_KeyPress(KeyAscii As Integer)
txtChange.Text = txtChange.Text & Chr(KeyAscii)
KeyAscii = 0
End Sub

Private Sub cboPortfolioList_LostFocus()
txtChange.Text = ""
cboPortfolioList.TabStop = False
cboPortfolioList.Text = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
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
        
        MsgBox "No " & strScript & "  script present for the selected User Code!!!", vbCritical, "Error"
        userinfo.SELUSERCD = ""
        cmbUserName.ListIndex = -1
        SSTab2.Caption = strPubMyDesc & "-" & userinfo.SELUSERCD
        Call ClearAll
        Call FillStrike
        Call CalculateSummary
        Exit Sub
    End If
    
    rsCMD.Close
    SSTab2.Caption = strPubMyDesc & "-" & userinfo.SELUSERCD
    Call ClearAll
    Call FillStrike
    Call FillToken
    Call CalculateSummary
    
    
End If
End Sub

'Private Sub cmdBrowse_Click()
'On Error GoTo ErrorHandler
'
'With CommonDialog1
'    .Filter = "Comma Separated (CSV) Files (*.csv)|*.csv|Excel Files (*.xls)|*.xls|Text Files (*.txt)|*.txt"
'    .FilterIndex = 1
'    .CancelError = False
'    .ShowOpen
'    txtPath.Text = .FileName
'
'End With
'
'
'Exit Sub
'ErrorHandler:
'    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
'End Sub
'
'
'Public Sub UploadBhavcopy()
'On Error GoTo ErrorHandler
'
''Const lngColor1 As Long = &H40C0&
''Const lngColor2 As Long = &H400040
'
'
'Dim objExcel As Excel.Application
'
'Dim lngRows As Long
'Dim lngCount As Long
'
'Dim strSymbol As String
'Dim strSymbolName As String
'Dim strExpiryDate As String
'Dim dblStrike As Double
'Dim dblClosePrice As Double
'Dim strCP As String
'Dim strInstrument As String
'Dim dblRate As Double
'
'Dim strVal As String
'Dim ws As Excel.Worksheet
'
'Dim intRes As Integer
'
'Dim strQ As String
'Dim rsQ As New ADODB.Recordset
'Dim intInstrument As Integer
'Dim intSymbol As Integer
'Dim intStrike As Integer
'Dim intExpiryDate As Integer
'Dim intOptionType As Integer
'Dim intClosing As Integer
'
'
'
'strQ = "Select * From IndexOpt"
'rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
'If rsQ.EOF = False Then
'    intInstrument = IIf(IsNull(rsQ!Field1) = True, 0, rsQ!Field1)
'    intSymbol = IIf(IsNull(rsQ!SYMBOL) = True, 0, rsQ!SYMBOL)
'    intStrike = IIf(IsNull(rsQ!Strike) = True, 0, rsQ!Strike)
'    intOptionType = IIf(IsNull(rsQ!CP) = True, 0, rsQ!CP)
'    intClosing = IIf(IsNull(rsQ!Field2) = True, 0, rsQ!Field2)
'    intExpiryDate = IIf(IsNull(rsQ!ExpDt) = True, 0, rsQ!ExpDt)
'End If
'rsQ.Close
'Set rsQ = Nothing
'
'If Trim$(txtPath.Text) = "" Then
'    Exit Sub
'End If
'
'If Trim$(txtPath.Text) <> "" Then
'    strFileType = Right(Trim$(txtPath.Text), 4)
'Else
'    strFileType = ""
'End If
'
'intRes = MsgBox("Are you sure to upload selected Bhavcopy file? Press Ok to proceed further....", vbQuestion + vbOKCancel)
'If intRes = vbCancel Then
'    Exit Sub
'End If
'
'
'
'strSymbol = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - (Len(Right(SSTab2.Caption, 7)) + Len(userinfo.SELUSERCD))))
'If strFileType = ".csv" Or strFileType = ".xls" Then
'
'    Set objExcel = New Excel.Application
'    objExcel.Workbooks.Open txtPath.Text
'
'    Set ws = objExcel.ActiveSheet
'
'    For lngCount = 1 To lstDetails1.ListItems.count
'        lstDetails1.ListItems(lngCount).SubItems(5) = ""
'    Next lngCount
'
'    lngRows = 2
'    strVal = ws.Rows.Cells(lngRows, 2)
'    Do Until strVal = ""
'        strSymbolName = ws.Rows.Cells(lngRows, intSymbol)
'        strExpiryDate = ws.Rows.Cells(lngRows, intExpiryDate)
'        dblStrike = Val(ws.Rows.Cells(lngRows, intStrike))
'        dblClosePrice = Val(ws.Rows.Cells(lngRows, intClosing))
'        strCP = Left(ws.Rows.Cells(lngRows, intOptionType), 1)
'        strInstrument = ws.Rows.Cells(lngRows, intInstrument)
'        If UCase(Trim$(strSymbolName)) = UCase(Trim$(strSymbol)) And _
'            Format(strExpiryDate, "dd/MM/yyyy") = Format(txtExpDt.Text, "dd/MM/yyyy") And _
'            (strCP = "X" Or Left(Trim$(strInstrument), 3) = "FUT") And _
'            dblStrike = 0 Then
'
'            dblRate = dblClosePrice
'            txtRate.Text = dblRate
'            txtRate.Refresh
'            Call CLEARALL
'            Call FillStrike
'            Call CalculateSummary
'            lstDetails1.Refresh
'            Exit Do
'        End If
'        strVal = ws.Rows.Cells(lngRows, 1)
'        lngRows = lngRows + 1
'    Loop
'
'    lngRows = 2
'    strVal = ws.Rows.Cells(lngRows, 2)
'
'    'Filling Last Traded
'    Do Until strVal = ""
'        strSymbolName = ws.Rows.Cells(lngRows, intSymbol)
'        strExpiryDate = ws.Rows.Cells(lngRows, intExpiryDate)
'        dblStrike = Val(ws.Rows.Cells(lngRows, intStrike))
'        dblClosePrice = Val(ws.Rows.Cells(lngRows, intClosing))
'        strCP = Left(ws.Rows.Cells(lngRows, intOptionType), 1)
'        strInstrument = ws.Rows.Cells(lngRows, intInstrument)
'        If UCase(Trim$(strSymbolName)) = UCase(Trim$(strSymbol)) And _
'            Format(strExpiryDate, "dd/MM/yyyy") = Format(txtExpDt.Text, "dd/MM/yyyy") Then
'
'            For lngCount = 1 To lstDetails1.ListItems.count
'                lstDetails1.SelectedItem = lstDetails1.ListItems(lngCount)
'
'                If dblStrike = Val(lstDetails1.SelectedItem) And strCP = Trim$(lstDetails1.SelectedItem.SubItems(1)) Then
'                    lstDetails1.ListItems(lngCount).SubItems(5) = dblClosePrice
'                    If strCP = "C" Then
'                        lstDetails1.ListItems(lngCount).ListSubItems(5).ForeColor = lngColor1
'                    Else
'                        lstDetails1.ListItems(lngCount).ListSubItems(5).ForeColor = lngColor2
'                    End If
'                    lstDetails1.ListItems(lngCount).ListSubItems(5).Bold = True
'                    lstDetails1.Refresh
'                    Exit For
'                End If
'            Next
'        End If
'        strVal = ws.Rows.Cells(lngRows, 1)
'        lngRows = lngRows + 1
'    Loop
'
'    objExcel.Workbooks.Close
'    Set objExcel = Nothing
'ElseIf strFileType = ".txt" Then
'    Dim intFileNo As Integer
'    Dim strData As String
'    Dim intCount As Integer
'    Dim intTotalNoOfColumns As Integer
'    Dim fsoObject As FileSystemObject
'    Dim tsObject As TextStream
'
'
'    intFileNo = FreeFile
'
'    Set fsoObject = New FileSystemObject
'    'On Error GoTo ErrorHandler
'    Set tsObject = fsoObject.OpenTextFile(txtPath.Text, ForReading)
'    strData = tsObject.ReadLine
'    tsObject.Close
'    Set tsObject = Nothing
'    Set fsoObject = Nothing
'
'    Set fsoObject = New FileSystemObject
'    Set tsObject = fsoObject.OpenTextFile(App.Path & "\temp.txt", ForWriting, True)
'    tsObject.WriteLine strData
'    tsObject.Close
'    Set tsObject = Nothing
'    Set fsoObject = Nothing
'
'    Open Trim$(App.Path & "\temp.txt") For Input As #intFileNo
'    Do Until EOF(intFileNo)
'        Input #intFileNo, strData
'        intTotalNoOfColumns = intTotalNoOfColumns + 1
'    Loop
'    Close #intFileNo
'
'    Kill App.Path & "\temp.txt"
'
'    Open Trim$(txtPath.Text) For Input As #intFileNo
'    intCount = 0
'    Do Until EOF(intFileNo)
'        For intCount = 0 To intTotalNoOfColumns - 1
'            Input #intFileNo, strData
'            If intCount = intStrike Then
'                dblStrike = Val(strData)
'            End If
'            If intCount = intSymbol Then
'                strSymbolName = Trim$(strData)
'            End If
'            If intCount = intOptionType Then
'                strCP = Trim$(strData)
'            End If
'            If intCount = intClosing Then
'                dblClosePrice = Val(strData)
'            End If
'            If intCount = intExpiryDate Then
'                strExpiryDate = Trim$(strData)
'            End If
'            If intCount = intInstrument Then
'                strInstrument = Trim$(strData)
'            End If
'        Next
'
'        strExpiryDate = Left(strExpiryDate, 2) & "/" & Mid(strExpiryDate, 3, 3) & "/" & Right(strExpiryDate, 4)
'
'        If UCase(Trim$(strSymbolName)) = UCase(Trim$(strSymbol)) And _
'            Format(strExpiryDate, "dd/MM/yyyy") = Format(txtExpDt.Text, "dd/MM/yyyy") And _
'            Left(strInstrument, 3) = "FUT" And _
'            dblStrike = 0 Then
'
'            dblRate = dblClosePrice
'            txtRate.Text = dblRate
'            txtRate.Refresh
'            Call CLEARALL
'            Call FillStrike
'            Call CalculateSummary
'            lstDetails1.Refresh
'            Exit Do
'        End If
'    Loop
'    Close #intFileNo
'
'    Open Trim$(txtPath.Text) For Input As #intFileNo
'    intCount = 0
'    Do Until EOF(intFileNo)
'        For intCount = 0 To intTotalNoOfColumns - 1
'            Input #intFileNo, strData
'            If intCount = intStrike Then
'                dblStrike = Val(strData)
'            End If
'            If intCount = intSymbol Then
'                strSymbolName = Trim$(strData)
'            End If
'            If intCount = intOptionType Then
'                strCP = Left(Trim$(strData), 1)
'            End If
'            If intCount = intClosing Then
'                dblClosePrice = Val(strData)
'            End If
'            If intCount = intExpiryDate Then
'                strExpiryDate = Trim$(strData)
'            End If
'            If intCount = intInstrument Then
'                strInstrument = Trim$(strData)
'            End If
'        Next
'
'        strExpiryDate = Left(strExpiryDate, 2) & "/" & Mid(strExpiryDate, 3, 3) & "/" & Right(strExpiryDate, 4)
'
'        If UCase(Trim$(strSymbolName)) = UCase(Trim$(strSymbol)) And _
'            Format(strExpiryDate, "dd/MM/yyyy") = Format(txtExpDt.Text, "dd/MM/yyyy") Then
'
'            For lngCount = 1 To lstDetails1.ListItems.count
'                lstDetails1.SelectedItem = lstDetails1.ListItems(lngCount)
'
'                If dblStrike = Val(lstDetails1.SelectedItem) And strCP = Trim$(lstDetails1.SelectedItem.SubItems(1)) Then
'
'                    lstDetails1.ListItems(lngCount).SubItems(5) = dblClosePrice
'                    If strCP = "C" Then
'                        lstDetails1.ListItems(lngCount).ListSubItems(5).ForeColor = lngColor1
'                    Else
'                        lstDetails1.ListItems(lngCount).ListSubItems(5).ForeColor = lngColor2
'                    End If
'                    lstDetails1.ListItems(lngCount).ListSubItems(5).Bold = True
'                    lstDetails1.Refresh
'                    Exit For
'                End If
'            Next
'        End If
'    Loop
'    Close #intFileNo
'
'End If
'cmdOk.Enabled = False
'txtLast.Locked = True
'
'Call CalcOptionUN
'
'
'MsgBox "Bhavcopy File uploading is successful!!!", vbInformation
'
'Exit Sub
'ErrorHandler:
'    MsgBox "Application Error:- Processing of Data Failed due to following reasons:" & vbCrLf & _
'           "1] The Selected File can have a wrong format." & vbCrLf & _
'           "2] The Column Mappings specified in Bhavcopy File Settings can be wrong." & vbCrLf & _
'           "3] Error " & Err.Number & ":" & Err.Description, vbCritical, "Error"

Private Sub cboUsercd_Click()
Dim strUserCode As String
Dim intFind As Integer
If cboUserCd.Text = "All" Then
    userinfo.SELUSERCD = ""
Else
    strUserCode = StrReverse(cboUserCd.Text)
    intFind = InStr("1", strUserCode, "=")
    strUserCode = Mid(strUserCode, intFind + 1)
    strUserCode = StrReverse(strUserCode)
    userinfo.SELUSERCD = strUserCode
End If
'mintStrategyID =
If blnIsLoading = True Then Exit Sub
Call ClearAll
Call FillStrike
Call CalculateSummary
End Sub


Private Sub cboUserCd_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab And Shift = 1 Then
    txtPut.SetFocus
ElseIf KeyCode = vbKeyTab Then
'    MDIMain.blnPortfoliosLoading = False
'    MDIMain.cmbPortfolioList.SetFocus
    If intRate = 2 Then
        txtDomesticIntRate.SetFocus
    Else
        If cboPortfolioList.Visible = True Then
            cboPortfolioList.SetFocus
        Else
            txtDays.SetFocus
        End If
    End If
'ElseIf KeyCode = vbKeyDown Then
'    lstDetails1.SetFocus
End If
End Sub

Private Sub cmdAuto_Click()
Dim strquery As String
Dim rsquery As New ADODB.Recordset

strquery = "Select * From IndexOpt"
rsquery.Open strquery, con, adOpenKeyset, adLockOptimistic
If rsquery.EOF = True Then
    rsquery.AddNew
    
    rsquery!Field10 = "A"
    rsquery!Field20 = "10 Min."
    rsquery!Field21 = "1"
    strPubWarningInterval = "1"
    rsquery!Field22 = strPubTryToIgnoreFileFormat
    strPubStartTime = FormatDateTime(Now, vbLongTime)
    rsquery!Field23 = FormatDateTime(Now, vbLongTime)
    strPubEndTime = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
    rsquery!Field25 = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
    
    rsquery.Update
Else
    If IsNull(rsquery!Field20) = True Or rsquery!Field20 = "" Then
        strPubTimeInetrval = "10 Min."
        strPubWarningInterval = "1"
        rsquery!Field20 = "10 Min."
        rsquery!Field21 = "1"
    Else
        strPubTimeInetrval = rsquery!Field20
        strPubWarningInterval = rsquery!Field21
    End If
    rsquery!Field10 = "A"
    rsquery.Update
End If
rsquery.Close
strPubManual = "A"

'strquery = "Select * From MstSettings"
'rsquery.Open strquery, con, adOpenKeyset, adLockOptimistic
'If rsquery.EOF = True Then
'
'    rsquery.AddNew
'
'    rsquery!Setting16 = "A"
'    rsquery!Setting17 = "10 Min."
'
'    strPubRateStartTime = FormatDateTime(Now, vbLongTime)
'    rsquery!Setting18 = FormatDateTime(Now, vbLongTime)
'
'    strPubRateEndTime = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
'    rsquery!Setting19 = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
'
'    rsquery.Update
'Else
'    If IsNull(rsquery!Setting17) = True Or rsquery!Setting17 = "" Then
'        strPubRateTimeInetrval = "10 Min."
'        rsquery!Setting17 = "10 Min."
'    Else
'        strPubRateTimeInetrval = rsquery!Setting17
'    End If
'    rsquery!Setting16 = "A"
'    rsquery.Update
'End If
'rsquery.Close
'strPubRateManual = "A"

MsgBox "Switched to automatic uploading!!!", vbInformation
Timer2.Enabled = True
dtStartTime = Now

cmdAuto.Visible = False
cmdManual.Visible = True
cmdManual.ZOrder
MDIMain.mnuUpload.Enabled = False
End Sub

'
'End Sub
'
Private Sub cmdCalculator_Click()
On Error Resume Next
Shell "calc.exe", vbNormalFocus
End Sub


'Private Sub cmdClose_Click()
'Unload Me
'End Sub

Private Sub cmdExcelList_Click()
Call ExporttoExcelFromListview(CommonDialog1, lstDetails1)
End Sub

Private Sub cmdExpExpiry_Click()

Dim strPortfolio1 As String
If UCase(Trim$(txtDate.Text)) <> UCase(Trim$(txtExpDt.Text)) Then
    MsgBox "Todays Date is not matching with Expiry Date!!!", vbCritical, "Error"
    Exit Sub
End If

If userinfo.USERTYPE = "Admin" Then
Dim maxtradedt As String
Dim expdtt
DRST1.Open "Select max(tradedt) as maxtradedt,expdt from dummytracker where CDATE(expdt)=cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') group by expdt", con, adOpenKeyset, adLockPessimistic
If Not DRST1.EOF Then
    maxtradedt = DRST1!maxtradedt
    expdtt = DRST1!ExpDt
End If
DRST1.Close

Dim rsNew As New ADODB.Recordset

If maxtradedt = "" And expdtt <> Format(txtDate.Text, "dd/mm/yyyy") Then

Else
    DRST.Open "Select distinct max(tradedt) as tradedtt,SYMBOL,script,expdt from dummytracker where CDATE(expdt)=cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "')  group by SYMBOL,script,expdt  ", con, adOpenKeyset, adLockPessimistic
    If Not DRST.EOF Then
        Do Until DRST.EOF
            TodaysExpense = 0
            If RS.State = 1 Then RS.Close
            RS.Open "Select * from RepFullSheetM where left(my_strdesc,len(my_strdesc)-7)='" & DRST!Script & "' and  format(cdate(expdt),'dd/mm/yyyy')=cdate('" & Format(DRST!ExpDt, "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockPessimistic
            If Not RS.EOF Then
                strPortfolio1 = RS!My_strDesc
                Index = RS!Index
                'rst1.Close
                RST1.Open "delete * from Exp_Detl where  descr='E-" & RS!My_strDesc & "' and CDATE(tr_date)=cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockPessimistic
                RST1.Open "Select * from Exp_Detl", con, adOpenKeyset, adLockPessimistic
                RST1.AddNew
                RST1!SYMBOL = "EX" 'DRST!SYMBOL
                Symbolname = "EX" ' DRST!SYMBOL
                MkPrice = RS!MkPrice
                EINTRATE = RS!intRate
                RST1!Descr = "E-" & RS!My_strDesc
                RST1!Tr_date = Format(txtDate.Text, "dd/mm/yyyy")
                RST1!Opening_Bal = 0
                
                DRS.Open "SELECT strike,cp,sum(units) as punit, sum(traded),sum(units*traded)AS  premi From DUMMYTRACKER Where CDATE(TradeDt)<=cdate('" & maxtradedt & "') and  ExpDt = cdate('" & DRST!ExpDt & "')  And Script ='" & DRST!Script & "' and NOT ISNULL(CP) group by strike,cp", con, adOpenKeyset, adLockPessimistic
                If Not DRS.EOF Then
                    Do Until DRS.EOF
                        If Val(DRS!punit) <> 0 Then
                            If Not IsNull(DRS!PREMI) Then
                                If Val(DRS!punit) = 0 Then
                                Else
                                    RST1!Premium = Val(RST1!Premium) + Val(Round((DRS!PREMI / DRS!punit), 2) * DRS!punit)
                                End If
                            End If
                        End If
                        DRS.MoveNext
                    Loop
                End If
                DRS.Close

                RST2.Open "Select count(*) as count from Exp_Detl where Descr='" & strPortfolio1 & "' ", con, adOpenKeyset, adLockPessimistic
                If IsNull(RST2!count) = False Then
                    count1 = RST2!count
                End If
                RST2.Close
                
                RST2.Open "Select max(tr_date) as maxdate from Exp_Detl where Descr='" & strPortfolio1 & "'  and CDATE(tr_date)<= cdate('" & Format(maxtradedt, "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockPessimistic  '
                If count1 < 1 Then
                Else
                    MaxDT = RST2!MaxDate
                End If
                RST2.Close
                
                If IsNull(MaxDT) Or MaxDT = Null Or MaxDT = "" Then
                    RST1!Opening_Bal = 0
                Else
                    RST2.Open "Select * from Exp_Detl where Descr='" & strPortfolio1 & "'  and CDATE(tr_date)=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockPessimistic
                    If RST2.EOF Then
                    Else
                        RST1!Opening_Bal = RST2!Closing
                    End If
                    RST2.Close
                End If
                
                DRS.Open "SELECT sum(units) AS FutStk, (sum(units*traded))/sum(units) AS F_FutTraded From DUMMYTRACKER Where CDATE(TradeDt) =cdate('" & maxtradedt & "') and  CDATE(ExpDt) = cdate('" & DRST!ExpDt & "')  And Script ='" & DRST!Script & "' and iSNULL(CP)", con, adOpenKeyset, adLockPessimistic
                If DRS.EOF Then
                Else
                    If Not IsNull(DRS!FutStk) Then
                        RST1!Equity = Val(DRS!FutStk) * Val(RS!MkPrice)
                        If Val(DRS!FutStk) < 0 Then
                            RST1!Txtint_Margin = -Val(DRS!FutStk) * Val(DRS!F_FutTraded)
                        Else
                            RST1!Txtint_Margin = Val(DRS!FutStk) * Val(DRS!F_FutTraded)
                        End If
                    End If
                End If
                DRS.Close
                
                'Change Here 8/9/2011
                rsNew.Open "Select Exp_Per_Cr,OptTOE,OptSDE,OptSTTE,OptOEXPE,OptSTE,OptSEBIE from Exp_mst Where SrNo=" & intExpense & "", con, adOpenKeyset, adLockPessimistic
                If Not rsNew.EOF Then
                    'RST.Close
                    RST.Open "Select strike,cp,sum(units) as punit,sum(units* traded)as ptraded from Dummytracker where left(cashtype,1)='O' AND  Script ='" & DRST!Script & "' AND tradedt<=cdate('" & Format(maxtradedt, "dd/mm/yyyy") & "') AND EXPDT=CDATE('" & Format(DRST!ExpDt, "DD/MM/YYYY") & "')  group by strike,cp", con, adOpenKeyset, adLockPessimistic
                    'RST.Open "Select * from Dummytracker where left(cashtype,1)='O' AND SYMBOL='" & Symbolname & "' AND tradedt<=cdate('" & Format(maxtradedt, "dd/mm/yyyy") & "') AND EXPDT=CDATE('" & Format(DRST!ExpDt, "DD/MM/YYYY") & "')", con, adOpenKeyset, adLockPessimistic
                    If Not RST.EOF Then
                        Do Until RST.EOF
                            days = DateDiff("D", CDate(txtDate.Text), CDate(DRST!ExpDt))
                            If Val(days) = 0 Then
                                If RST!punit > 0 Then
                                    If RST!CP = "C" Then
                                        If days <= 0 And MkPrice > RST!Strike Then
                                            Delta = 100
                                        ElseIf days <= 0 And MkPrice < RST!Strike Then
                                            Delta = 0
                                        End If
                                    ElseIf RST!CP = "P" Then
                                        If days <= 0 And MkPrice > RST!Strike Then
                                            Delta = 0
                                        ElseIf days <= 0 And MkPrice < RST!Strike Then
                                            Delta = -100
                                        End If
                                    End If
                                
                                    If Delta = 100 Or Delta = -100 Then
                                        TRADED = (RST!ptraded) / RST!punit
                                        RST1!OptTOBuy = Val(RST1!OptTOBuy) + (rsNew!OptTOE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '5000
                                        RST1!OptSDBuy = Val(RST1!OptSDBuy) + (rsNew!OptSDE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '100
                                        RST1!OptSTTBuy = Val(RST1!OptSTTBuy) + (rsNew!OptSTTE * ((RST!punit * Val(MkPrice)) / rsNew!Exp_Per_Cr)) '12500
                                        RST1!OptOEXPBuy = Val(RST1!OptOEXPBuy) + (rsNew!OptOEXPE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '0
                                        RST1!OPtSTBuy = Val(RST1!OPtSTBuy) + (rsNew!OptSTE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '515
                                        RST1!OPtSEBIBuy = Val(RST1!OPtSEBIBuy) + (rsNew!OptSEBIE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '35
                                    End If
                                End If
                            End If
                        RST.MoveNext
                    Loop
                    TodaysExpense = TodaysExpense + RST1!OptTOBuy + RST1!OptSDBuy + RST1!OptSTTBuy + RST1!OptOEXPBuy + RST1!OPtSTBuy + RST1!OPtSEBIBuy
                    TodaysExpense = TodaysExpense + RST1!OPTTOSell + RST1!OPtSDSell + RST1!OptSTTSell + RST1!OPtOEXPSell + RST1!OPtSTSell + RST1!OPtSEBISell
                End If
                rsNew.Close
                RST1!TodaysExpenses = Val(TodaysExpense)
                RST1!TotalExpenses = Val(RST1!Opening_Bal) + Val(TodaysExpense)
                RST1!Closing = RST1!TotalExpenses
                RST1!Field5 = "E"
                RST1.Update
                RST1.Close
                RST.Close
            End If
            RS.Close
        End If

        DRST.MoveNext
    Loop
End If
DRST.Close
'MsgBox "Done"
End If

    USEREXPEXPIRY
Else
    USEREXPEXPIRY
End If

Call ClearAll
'Call FillDetails(Left(tbsPortfolio.SelectedItem, Len(tbsPortfolio.SelectedItem) - 1))
Call FillStrike
Call CalculateSummary
End Sub

Private Sub USEREXPEXPIRY()
Dim strPortfolio1 As String
Dim rsNew As New ADODB.Recordset
Dim maxtradedt
Dim expdtt
DRST1.Open "Select max(tradedt) as maxtradedt,expdt,usercd from dummytracker where expdt=cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') group by expdt,usercd", con, adOpenKeyset, adLockPessimistic
If Not DRST1.EOF Then
    maxtradedt = DRST1!maxtradedt
    expdtt = DRST1!ExpDt
End If
DRST1.Close

If maxtradedt = "" And expdtt <> Format(txtDate.Text, "dd/mm/yyyy") Then

Else
'DRST.Close
    DRST.Open "Select distinct max(tradedt) as tradedtt,SYMBOL,script,expdt,usercd from dummytracker where expdt=cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "')  group by SYMBOL,script,expdt,usercd  ", con, adOpenKeyset, adLockPessimistic

    If Not DRST.EOF Then
        Do Until DRST.EOF
            TodaysExpense = 0
            If RS.State = 1 Then RS.Close
                RS.Open "Select * from RepFullSheetM where  left(my_strdesc,len(my_strdesc)-7)='" & DRST!Script & "' and cdate(expdt)=cdate('" & Format(DRST!ExpDt) & "') ", con, adOpenKeyset, adLockPessimistic
                If Not RS.EOF Then
                    Index = RS!Index
                    strPortfolio1 = RS!My_strDesc
                    RST1.Open "delete * from Exp_Detl where  descr='E-" & RS!My_strDesc & "' and tr_date=cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "')and USERCD='" & DRST!USERCD & "'", con, adOpenKeyset, adLockPessimistic
                    RST1.Open "Select * from Exp_Detl", con, adOpenKeyset, adLockPessimistic
                    RST1.AddNew
                    RST1!SYMBOL = "EX" ' DRST!SYMBOL
                    Symbolname = "EX" ' DRST!SYMBOL
                    MkPrice = RS!MkPrice
                    EINTRATE = RS!intRate
                    RST1!Descr = "E-" & RS!My_strDesc
                    RST1!Tr_date = Format(txtDate.Text, "dd/mm/yyyy")
                    RST1!Opening_Bal = 0
                    DRS.Open "SELECT strike,cp,sum(units) as punit, sum(traded),sum(units*traded)AS  premi From DUMMYTRACKER Where TradeDt<=cdate('" & DRST!tradedtt & "') and  ExpDt = cdate('" & DRST!ExpDt & "')  And Script ='" & DRST!Script & "' and USERCD='" & DRST!USERCD & "' and NOT ISNULL(CP) group by strike,cp", con, adOpenKeyset, adLockPessimistic
                    If Not DRS.EOF Then
                        Do Until DRS.EOF
                            If Val(DRS!punit) <> 0 Then
                                If Not IsNull(DRS!PREMI) Then
                                    If Val(DRS!punit) = 0 Then
                                    Else
                                        RST1!Premium = Val(RST1!Premium) + Val(Round((DRS!PREMI / DRS!punit), 2) * DRS!punit)
                                    End If
                                End If
                            End If
                            DRS.MoveNext
                        Loop
                    End If
                    DRS.Close
            
                    RST2.Open "Select count(*) as count from Exp_Detl where descr='" & strPortfolio1 & "'  and USERCD='" & DRST!USERCD & "'", con, adOpenKeyset, adLockPessimistic
                    If IsNull(RST2!count) = False Then
                        count1 = RST2!count
                    End If
                    RST2.Close
                    
                    RST2.Open "Select max(tr_date) as maxdate from Exp_Detl where descr='" & strPortfolio1 & "'  and tr_date<= cdate('" & Format(DRST!tradedtt, "dd/mm/yyyy") & "') and USERCD='" & DRST!USERCD & "'", con, adOpenKeyset, adLockPessimistic  '
                    If count1 < 1 Then
                    Else
                        MaxDT = RST2!MaxDate
                    End If
                    RST2.Close
                    
                    If IsNull(MaxDT) Or MaxDT = Null Or MaxDT = "" Then
                        RST1!Opening_Bal = 0
                    Else
                        RST2.Open "Select * from Exp_Detl where descr='" & strPortfolio1 & "'  and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and USERCD='" & DRST!USERCD & "'", con, adOpenKeyset, adLockPessimistic
                        If RST2.EOF Then
                        Else
                            RST1!Opening_Bal = RST2!Closing
                        End If
                        RST2.Close
                    End If
                    
                    DRS.Open "SELECT sum(units) AS FutStk, (sum(units*traded))/sum(units) AS F_FutTraded From DUMMYTRACKER Where TradeDt<=cdate('" & DRST!tradedtt & "') and  ExpDt = cdate('" & DRST!ExpDt & "')  And Script ='" & DRST!Script & "' and USERCD='" & DRST!USERCD & "' and iSNULL(CP)", con, adOpenKeyset, adLockPessimistic
                    If DRS.EOF Then
                    Else
                        If Not IsNull(DRS!FutStk) Then
                            RST1!Equity = Val(DRS!FutStk) * Val(RS!MkPrice)
                            If Val(DRS!FutStk) < 0 Then
                                RST1!Txtint_Margin = -Val(DRS!FutStk) * Val(DRS!F_FutTraded)
                            Else
                                RST1!Txtint_Margin = Val(DRS!FutStk) * Val(DRS!F_FutTraded)
                            End If
                        End If
                    End If
                    DRS.Close
                    
                    'Change Here 8/9/2011
                    rsNew.Open "Select Exp_Per_Cr,OptTOE,OptSDE,OptSTTE,OptOEXPE,OptSTE,OptSEBIE from Exp_mst Where SrNo=" & intExpense & "", con, adOpenKeyset, adLockPessimistic
                    If Not rsNew.EOF Then
                        'RST.Close
                        'RST.Open "Select * from Dummytracker where left(cashtype,1)='O' AND SYMBOL='" & Symbolname & "' AND tradedt<=cdate('" & Format(DRST!tradedtt, "dd/mm/yyyy") & "') AND EXPDT=CDATE('" & Format(DRST!ExpDt, "DD/MM/YYYY") & "') and USERCD='" & DRST!USERCD & "'", con, adOpenKeyset, adLockPessimistic
                        RST.Open "Select usercd,strike,cp,sum(units) as punit,sum(units* traded)as ptraded from Dummytracker where left(cashtype,1)='O'  And Script ='" & DRST!Script & "'  AND tradedt<=cdate('" & Format(DRST!tradedtt, "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(DRST!ExpDt, "DD/MM/YYYY") & "') and USERCD='" & DRST!USERCD & "' group by strike,cp,usercd", con, adOpenKeyset, adLockPessimistic
                        'RST.Open "Select * from Dummytracker where left(cashtype,1)='O' AND SYMBOL='" & Symbolname & "' AND tradedt<=cdate('" & Format(maxtradedt, "dd/mm/yyyy") & "') AND EXPDT=CDATE('" & Format(DRST!ExpDt, "DD/MM/YYYY") & "')", con, adOpenKeyset, adLockPessimistic
                        If Not RST.EOF Then
                            Do Until RST.EOF
                                days = DateDiff("D", CDate(txtDate.Text), CDate(DRST!ExpDt))
                                If Val(days) = 0 Then
                                    If RST!punit > 0 Then
                                        If RST!CP = "C" Then
                                            If days <= 0 And MkPrice > RST!Strike Then
                                                Delta = 100
                                            ElseIf days <= 0 And MkPrice < RST!Strike Then
                                                Delta = 0
                                            End If
                                        ElseIf RST!CP = "P" Then
                                            If days <= 0 And MkPrice > RST!Strike Then
                                                Delta = 0
                                            ElseIf days <= 0 And MkPrice < RST!Strike Then
                                                Delta = -100
                                            End If
                                        End If
                                                               
                                        If Delta = 100 Or Delta = -100 Then
                                            TRADED = (RST!ptraded) / RST!punit
                                            RST1!OptTOBuy = Val(RST1!OptTOBuy) + (rsNew!OptTOE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '5000
                                            RST1!OptSDBuy = Val(RST1!OptSDBuy) + (rsNew!OptSDE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '100
                                            RST1!OptSTTBuy = Val(RST1!OptSTTBuy) + (rsNew!OptSTTE * ((RST!punit * Val(MkPrice)) / rsNew!Exp_Per_Cr)) '850
                                            RST1!OptOEXPBuy = Val(RST1!OptOEXPBuy) + (rsNew!OptOEXPE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr)) '50
                                            RST1!OPtSTBuy = Val(RST1!OPtSTBuy) + (rsNew!OptSTE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr))
                                            RST1!OPtSEBIBuy = Val(RST1!OPtSEBIBuy) + (rsNew!OptSEBIE * ((RST!punit * TRADED) / rsNew!Exp_Per_Cr))
                                        End If
                                    End If
                                End If
                            RST.MoveNext
                        Loop
                        TodaysExpense = TodaysExpense + RST1!OptTOBuy + RST1!OptSDBuy + RST1!OptSTTBuy + RST1!OptOEXPBuy + RST1!OPtSTBuy + RST1!OPtSEBIBuy
                        TodaysExpense = TodaysExpense + RST1!OPTTOSell + RST1!OPtSDSell + RST1!OptSTTSell + RST1!OPtOEXPSell + RST1!OPtSTSell + RST1!OPtSEBISell
                    End If
                    rsNew.Close
                    RST1!TodaysExpenses = Val(TodaysExpense)
                    RST1!TotalExpenses = Val(RST1!Opening_Bal) + Val(TodaysExpense)
                    RST1!Closing = RST1!TotalExpenses
                    RST1!USERCD = DRST!USERCD
                    RST1.Update
                    RST1.Close
                    RST.Close
                End If
                
                End If
                RS.Close
        
                
        DRST.MoveNext
    Loop
End If
DRST.Close
MsgBox "Expense on Expiry is carried out successfully!!!", vbInformation
End If

End Sub






Private Sub cmdGraph_Click()
frmLiveGraphAnalysisWithStrategy.Show vbModal
End Sub

'Private Sub cmdManual_Click()
'Dim strquery As String
'Dim rsquery As New ADODB.Recordset
'
'cmdManual.ZOrder
'
'strquery = "Select * From IndexOpt"
'rsquery.Open strquery, con, adOpenKeyset, adLockOptimistic
'If rsquery.EOF = True Then
'
'    rsquery.AddNew
'
'    rsquery!Field10 = "M"
'    rsquery!Field20 = "10 Min."
'    rsquery!Field21 = "1"
'    strPubWarningInterval = "1"
'
'    rsquery!Field22 = strPubTryToIgnoreFileFormat
'
'    strPubStartTime = FormatDateTime(Now, vbLongTime)
'    rsquery!Field23 = FormatDateTime(Now, vbLongTime)
'
'    strPubEndTime = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
'    rsquery!Field25 = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
'
'    rsquery.Update
'Else
'    rsquery!Field10 = "M"
'    rsquery.Update
'End If
'rsquery.Close
'strPubManual = "M"
'
''strquery = "Select * From MstSettings"
''rsquery.Open strquery, con, adOpenKeyset, adLockOptimistic
''If rsquery.EOF = True Then
''
''    rsquery.AddNew
''
''    rsquery!Setting16 = "M"
''    rsquery!Setting17 = "10 Min."
''
''
''    strPubRateStartTime = FormatDateTime(Now, vbLongTime)
''    rsquery!Setting18 = FormatDateTime(Now, vbLongTime)
''
''    strPubRateEndTime = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
''    rsquery!Setting19 = FormatDateTime(DateAdd("h", 1, Now), vbLongTime)
''
''    rsquery.Update
''Else
''    rsquery!Setting16 = "M"
''    rsquery.Update
''End If
''rsquery.Close
''strPubRateManual = "M"
'
'Timer2.Enabled = False
'MsgBox "Switched to manual uploading!!!", vbInformation
'cmdAuto.Visible = True
'cmdManual.Visible = False
'MDIMain.mnuUpload.Enabled = True
'End Sub

'Private Sub cmdSave_Click()
'
'If blnIsFutureTempAdd = True Or blnIsOptionTempAdd = True Then
'    Call SaveHandEntries
'End If
'If mode = False Then
'    Call SaveNewPortfolio
'End If
'End Sub

'Private Sub cmdOk_Click()
''Const lngColor1 As Long = &H40C0&
''Const lngColor2 As Long = &H400040
'
'If lstDetails1.ListItems.count <> 0 Then
'    If lstDetails1.SelectedItem.SubItems(2) <> 0 Then
'        lstDetails1.SelectedItem.SubItems(5) = Val(txtLast.Text)
'        If lstDetails1.SelectedItem.SubItems(1) = "C" Then
'            lstDetails1.SelectedItem.ListSubItems(5).ForeColor = lngColor1
'        Else
'            lstDetails1.SelectedItem.ListSubItems(5).ForeColor = lngColor2
'        End If
'        lstDetails1.SelectedItem.ListSubItems(5).Bold = True
'    Else
'    txtLast.Text = 0
'    End If
'   CalcOptionUN
'End If
' txtLast.Text = 0
' txtStrike.Text = 0
' lstDetails1.SetFocus
'
'End Sub

'Private Sub cmdReport_Click()
'Call FillData
'Call PrintReport
'End Sub

Public Sub PrintReport()
con.Close
Set con = Nothing
Call CONNECT
CrystalReport1.Reset
CrystalReport1.Formulas(1) = ""
CrystalReport1.Formulas(1) = "ReportTitle='Portfolio Bhavcopy'"
CrystalReport1.Formulas(2) = ""
CrystalReport1.Formulas(2) = "SubTitle='" & SSTab2.Caption & "'"
CrystalReport1.Formulas(3) = ""
CrystalReport1.Formulas(3) = "Days='" & txtDays.Text & "'"
CrystalReport1.Formulas(4) = ""
CrystalReport1.Formulas(4) = "Rate='" & txtRate.Text & "'"
CrystalReport1.Formulas(5) = ""
CrystalReport1.Formulas(5) = "Call='" & txtCall.Text & "'"
CrystalReport1.Formulas(6) = ""
CrystalReport1.Formulas(6) = "Put='" & txtPut.Text & "'"
CrystalReport1.Formulas(7) = ""
CrystalReport1.Formulas(7) = "Today='" & txtDate.Text & "'"
CrystalReport1.Formulas(8) = ""
CrystalReport1.Formulas(8) = "ExpDt='" & txtExpDt.Text & "'"
CrystalReport1.Formulas(9) = ""
CrystalReport1.Formulas(9) = "DeltaNeutral='" & txtInShares.Text & "'"
CrystalReport1.Formulas(10) = ""
CrystalReport1.Formulas(10) = "DelVal='" & txtTot_Delta.Text & "'"
CrystalReport1.Formulas(11) = ""
CrystalReport1.Formulas(11) = "ThetaVal='" & txtTot_Theta.Text & "'"
CrystalReport1.Formulas(12) = ""
CrystalReport1.Formulas(12) = "VegaVal='" & txtTot_Vega.Text & "'"
CrystalReport1.Formulas(13) = ""
CrystalReport1.Formulas(13) = "GammaVal='" & txtTot_Gamma.Text & "'"
CrystalReport1.Formulas(14) = ""
CrystalReport1.Formulas(14) = "DeltaC='" & txtDetalC.Text & "'"
CrystalReport1.Formulas(15) = ""
CrystalReport1.Formulas(15) = "ThetaC='" & txtThetaC.Text & "'"
CrystalReport1.Formulas(16) = ""
CrystalReport1.Formulas(16) = "VegaC='" & txtVegaC.Text & "'"
CrystalReport1.Formulas(17) = ""
CrystalReport1.Formulas(17) = "GammaC='" & txtGammaC.Text & "'"
CrystalReport1.Formulas(18) = ""
CrystalReport1.Formulas(18) = "CUnits='" & txtCUnits.Text & "'"
CrystalReport1.Formulas(19) = ""
CrystalReport1.Formulas(19) = "DeltaP='" & txtDetalP.Text & "'"
CrystalReport1.Formulas(20) = ""
CrystalReport1.Formulas(20) = "ThetaP='" & txtThetaP.Text & "'"
CrystalReport1.Formulas(21) = ""
CrystalReport1.Formulas(21) = "VegaP='" & txtVegaP.Text & "'"
CrystalReport1.Formulas(22) = ""
CrystalReport1.Formulas(22) = "GammaP='" & txtGammaP.Text & "'"
CrystalReport1.Formulas(23) = ""
CrystalReport1.Formulas(23) = "PUnits='" & txtPUnits.Text & "'"
CrystalReport1.Formulas(24) = ""
CrystalReport1.Formulas(24) = "DeltaT='" & txtTot_Delta.Text & "'"
CrystalReport1.Formulas(25) = ""
CrystalReport1.Formulas(25) = "ThetaT='" & txtTot_Theta.Text & "'"
CrystalReport1.Formulas(26) = ""
CrystalReport1.Formulas(26) = "VegaT='" & txtTot_Vega.Text & "'"
CrystalReport1.Formulas(27) = ""
CrystalReport1.Formulas(27) = "GammaT='" & txtTot_Gamma.Text & "'"
CrystalReport1.Formulas(28) = ""
CrystalReport1.Formulas(28) = "TUnits='" & txtTUnits.Text & "'"


CrystalReport1.Formulas(29) = ""
CrystalReport1.Formulas(29) = "PStock='" & txtPStock.Text & "'"
CrystalReport1.Formulas(30) = ""
CrystalReport1.Formulas(30) = "Tstock='" & txtTStock.Text & "'"
CrystalReport1.Formulas(31) = ""
CrystalReport1.Formulas(31) = "NStock='" & txtNStock.Text & "'"
CrystalReport1.Formulas(32) = ""
CrystalReport1.Formulas(32) = "TradeStock='" & txtTradeStock.Text & "'"

CrystalReport1.Formulas(33) = ""
CrystalReport1.Formulas(33) = "PFuture='" & txtPFutu.Text & "'"
CrystalReport1.Formulas(34) = ""
CrystalReport1.Formulas(34) = "TFuture='" & txtTFutu.Text & "'"
CrystalReport1.Formulas(35) = ""
CrystalReport1.Formulas(35) = "NFuture='" & txtNFutu.Text & "'"
CrystalReport1.Formulas(36) = ""
CrystalReport1.Formulas(36) = "TradeFuture='" & txtTradeFutu.Text & "'"

CrystalReport1.Formulas(37) = ""
CrystalReport1.Formulas(37) = "PAvg='" & txtPAvg.Text & "'"
CrystalReport1.Formulas(38) = ""
CrystalReport1.Formulas(38) = "TAvg='" & txtTAvg.Text & "'"
CrystalReport1.Formulas(39) = ""
CrystalReport1.Formulas(39) = "NAvg='" & txtNAvg.Text & "'"
CrystalReport1.Formulas(40) = ""
CrystalReport1.Formulas(40) = "TradeAvg='" & txtNTrade.Text & "'"

CrystalReport1.Formulas(41) = ""
CrystalReport1.Formulas(41) = "Premium='" & txtPremium.Text & "'"
CrystalReport1.Formulas(42) = ""
CrystalReport1.Formulas(42) = "FSR='" & txtFSR.Text & "'"
CrystalReport1.Formulas(43) = ""
CrystalReport1.Formulas(43) = "OR='" & txtOR.Text & "'"
CrystalReport1.Formulas(44) = ""
CrystalReport1.Formulas(44) = "FSU='" & txtFSU.Text & "'"
CrystalReport1.Formulas(45) = ""
CrystalReport1.Formulas(45) = "OU='" & txtOU.Text & "'"
CrystalReport1.Formulas(46) = ""
CrystalReport1.Formulas(46) = "ABal='" & txtBalance.Text & "'"



CrystalReport1.Formulas(47) = ""
CrystalReport1.Formulas(47) = "PBal='" & txtPrvBalance.Text & "'"
CrystalReport1.Formulas(48) = ""
CrystalReport1.Formulas(48) = "Todays='" & txtTExpense.Text & "'"
CrystalReport1.Formulas(49) = ""
CrystalReport1.Formulas(49) = "ETotal='" & txtTotal.Text & "'"
CrystalReport1.Formulas(50) = ""
CrystalReport1.Formulas(50) = "NBalance='" & txtNetBalance.Text & "'"
CrystalReport1.Formulas(51) = ""
CrystalReport1.Formulas(51) = "ExpCR='" & txtExposure.Text & "'"



CrystalReport1.Formulas(52) = ""
CrystalReport1.Formulas(52) = "IMargin='" & txtIntMargin.Text & "'"
CrystalReport1.Formulas(53) = ""
CrystalReport1.Formulas(53) = "EMargin='" & txtExp_Margin.Text & "'"
CrystalReport1.Formulas(54) = ""
CrystalReport1.Formulas(54) = "Equity='" & txtEquity & "'"
CrystalReport1.Formulas(55) = ""
CrystalReport1.Formulas(55) = "CFTotal='" & txtCashTotal.Text & "'"
CrystalReport1.Formulas(56) = ""
CrystalReport1.Formulas(56) = "Option(U)='" & txtOptionUN.Text & "'"
CrystalReport1.Formulas(57) = ""
CrystalReport1.Formulas(57) = "Balance='" & txtBalanceN.Text & "'"
CrystalReport1.Formulas(58) = ""
CrystalReport1.Formulas(58) = "User Code='" & cboUserCd.Text & "'"
CrystalReport1.ReportSource = crptReport

CrystalReport1.ReportFileName = App.path & "\DeltaSoftRm Reports\rptBhavCopy.rpt"
CrystalReport1.WindowState = crptMaximized
CrystalReport1.PrintReport
CrystalReport1.PageZoom (100)
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

For intRow = 1 To lstDetails1.ListItems.count
    rsQ.AddNew
    rsQ!Field1 = lstDetails1.ListItems(intRow)
    For intColumn = 1 To lstDetails1.ColumnHeaders.count - 1
    If lstDetails1.ListItems(intRow).SubItems(intColumn) <> "" Then
        rsQ.Fields("Field" & intColumn + 1 & "") = "" & lstDetails1.ListItems(intRow).SubItems(intColumn)
    Else
        rsQ.Fields("Field" & intColumn + 1 & "") = " "
    End If
    Next
    rsQ.Update
    rsQ.MoveNext
Next
rsQ.Close
Set rsQ = Nothing
End Sub



Private Sub cmdStart_Click()

End Sub

'Private Sub cmdSave_Click()
'If blnIsFutureTempAdd = True Or blnIsOptionTempAdd = True Then
'    Call SaveHandEntries
'End If
'
'End Sub

Public Sub SaveHandEntries()
Dim intResp As Integer
Dim strUserCD As String
Dim strUserName As String

intResp = MsgBox("Are you sure to save the hand entries? Press Ok to proceed further...", vbQuestion + vbOKCancel, "Hand Entries")
If intResp = vbCancel Then
    Exit Sub
End If
    
strQ = "Update DummyTracker Set CFMonth='' Where CFMonth='T' and cdate(TradeDt)=cdate('" & Format(CDate(txtDate.Text), "DD/MM/YYYY") & "')"
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdText
cmd.CommandText = strQ
cmd.Execute
Set cmd = Nothing

rs1.Open "Delete from DummyTrackerTemp", con, adOpenKeyset, adLockPessimistic
rs1.Open "Delete from DummyTracker Where CFMonth='T'", con, adOpenKeyset, adLockPessimistic

MsgBox "Hand Entries are saved successfully!!!", vbInformation, "Hand Entries"
cmdSave.Enabled = False
cmdSave.ToolTipText = ""
MDIMain.mnuFileSavePortfolio.Visible = False
blnIsOptionTempAdd = False
blnIsFutureTempAdd = False
End Sub
'Private Sub cmdStartCapture_Click()
'On Error GoTo EH
'Dim blnResult As Boolean
''blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "D:\DLL\udp.txt", strPubPacCapDLL)
''blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort)
''blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ)
''If strPubUseEQ = "Y" Then
''    blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ)
''Else
''    blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, "")
''End If
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ, strPubDestPortCur)
'If blnResult = True Then
''    MsgBox "Capture has been started!!!", vbInformation
'    Timer1.Enabled = True
'
'    blnIsCaptureStarted = True
'    cmdStartCapture.Enabled = False
'    cmdStopCapture.Enabled = True
'    cmdStopCapture.ZOrder
'    'cmdVarAnalysis.Enabled = True
'
'    MDIMain.txtPortfolio.Text = "Live: ON"
'Else
'    MsgBox "Capture has not been started!!!", vbInformation
'    blnIsCaptureStarted = False
'End If
'
'Exit Sub
'EH:
'    MsgBox Err.Number & ":" & Err.Description, vbCritical
'End Sub



Private Sub cmdStopCapture_Click()
On Error GoTo EH
Dim blnResult As Boolean
'If gstrUseVSATFlag = "Y" Then
'blnResult = MyObjVSAT.StopCapture
'Else
blnResult = MyObj.StopCapture
'End If
If blnResult = True Then
'    MsgBox "Capture has been stopped!!!", vbInformation
    Timer1.Enabled = False
    cmdStartCapture.Enabled = True
    cmdStopCapture.Enabled = False
    cmdStartCapture.ZOrder
    blnIsCaptureStarted = False
    MDIMain.txtPortfolio.Text = "Live: OFF"
    'cmdVarAnalysis.Enabled = False
Else
    MsgBox "Capture has not been stopped!!!", vbInformation
    blnIsCaptureStarted = True
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub


'Private Sub cmdUpload_Click()
'Call UploadBhavcopy
'End Sub

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
MDIMain.mnuFileNewPortfolio.Enabled = True
MDIMain.mnuFileOpenPortfolio.Enabled = False
MDIMain.mnuFileModifyPortfolio.Enabled = False
MDIMain.mnuFileSavePortfolio.Enabled = True
MDIMain.mnuFileDeletePortfolio.Enabled = True
MDIMain.mnuFileClose.Enabled = True

MDIMain.mnuViewMultiContract.Enabled = False
MDIMain.mnuViewUserPortfolioDetails.Enabled = False

MDIMain.mnuUpload.Enabled = True 'Whole Upload Menu
MDIMain.mnuUploadVolatility.Enabled = True ''
MDIMain.mnuUploadBhavcopyFile.Enabled = False
MDIMain.mnuUploadDeleteUploadedData.Enabled = True
MDIMain.mnuUploadManualUpload.Enabled = True
MDIMain.mnuUploadMultipleFileUpload.Enabled = True
MDIMain.mnuUploadDeleteCurrentlyUploadedData.Enabled = True
MDIMain.mnuUploadCustomizedFile.Enabled = False
MDIMain.mnuUploadFurureStockRate.Enabled = False

MDIMain.mnuUtility.Enabled = True 'Utility Menu
MDIMain.mnuUtilityExpense.Enabled = True
MDIMain.mnuUtilityFuture.Enabled = True
MDIMain.mnuUtilityOption.Enabled = True
MDIMain.mnuUtilitySimulation.Enabled = True
MDIMain.mnuUtilityStrike.Enabled = True
MDIMain.mnuUtilityTradeTrail.Enabled = True

MDIMain.mnuToolsAddIV.Enabled = False
MDIMain.mnuToolsDaysReduce.Enabled = True
MDIMain.mnuToolsHidePortfolio.Enabled = True
MDIMain.mnuToolsDeleteHandEntries.Enabled = True
MDIMain.mnuCarryForwardBalance.Enabled = False
MDIMain.mnuToolsRemoveExpense.Enabled = False


MDIMain.mnuSettingsCarryForward.Enabled = True
MDIMain.mnuReports.Enabled = False 'Whole Report Menu
MDIMain.mnuMasters.Enabled = True 'Whole Master Menu
MDIMain.mnuView.Enabled = False

If strPubTypeOfApplication = "DSSU" Then
    MDIMain.mnuViewMultiContractSingleUser.Enabled = False
    MDIMain.mnuViewUserPortfolioDetailsSingleUser.Enabled = False
End If

MDIMain.mnuToolsLiveSummaryPortfolio.Enabled = False
'Added By SSP 17/2/2012
MDIMain.mnuToolsLiveSummaryPortfolioM2M.Enabled = False

MDIMain.mnuToolsLiveBhavcopyWithBuySell_IV.Enabled = False
MDIMain.mnuToolsLiveIVAnalysis.Enabled = False
MDIMain.mnuToolsLiveBhavcopyScriptwise.Enabled = False
MDIMain.mnuLiveBhavcopywithStrategy.Enabled = False 'Updated by AAP on 23/11/2012
MDIMain.mnuAssignSeperator.Enabled = True 'Added by AAP on 23/11/2012
MDIMain.mnuStartegyMaster.Enabled = True 'Added by AAP on 23/11/2012
End Sub



Private Sub cmdTodaysExpense_Click()
Dim lngColorNew As Long
Call CalculateTodaysExpense


lngColorNew = &HFFFF00
If Val(txtTExpense.Text) < 0 Then
    txtTExpense.ForeColor = vbRed
Else
    txtTExpense.ForeColor = lngColorNew
End If

If Val(txtTotal.Text) < 0 Then
    txtTotal.ForeColor = vbRed
Else
    txtTotal.ForeColor = lngColorNew
End If

If Val(txtNetBalance.Text) < 0 Then
    txtNetBalance.ForeColor = vbRed
Else
    txtNetBalance.ForeColor = lngColorNew
End If
End Sub

Public Sub CalculateTodaysExpense()
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
Dim strExp As String
Dim rsExp As ADODB.Recordset

Dim strP As String
Dim rsP As ADODB.Recordset
Dim strExpDt As String

Dim curEqBuy As Currency
Dim curEqSell As Currency
Dim curEqDel As Currency
Dim curEqNonDel As Currency

Dim curEqBuyValue As Currency
Dim curEqSellValue As Currency
Dim curEqDelValue As Currency
Dim curEqNonDelValue As Currency
Dim curPrevBalance As Currency

Dim MaxDT As Date
strScript = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7))
strPortfolio = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
'============================
'Calculating Todays Expense
Set rsExpMst = New ADODB.Recordset
strExpMst = "Select * from exp_mst Where SrNo=" & intExpense
rsExpMst.Open strExpMst, con, adOpenKeyset, adLockOptimistic
If rsExpMst.EOF = False Then
    Exp_Per_Cr = Val(rsExpMst!Exp_Per_Cr)
    
    If blnIsHidePortfolio = True Then
        strP = "Select my_strdesc,  expdt,dt  from RepFullSheetM where  cdate(expdt)>=cdate('" & Format(CDate(txtDate.Text), "DD/MM/YYYY") & "') and isnull(usercd) and Balance=0 Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
    Else
        strP = "Select my_strdesc,  expdt,dt  from RepFullSheetM where  cdate(expdt)>=cdate('" & Format(CDate(txtDate.Text), "DD/MM/YYYY") & "') and isnull(usercd) Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
    End If
    Set rsP = New ADODB.Recordset
    rsP.Open strP, con, adOpenStatic, adLockReadOnly
    If rsP.EOF = False Then
        
        While Not rsP.EOF
            strScript = Trim$(Left(rsP!My_strDesc, Len(rsP!My_strDesc) - 6))
            strPortfolio = Trim$(rsP!My_strDesc)
            strExpDt = rsP!ExpDt
            TodaysExpense = 0
            If userinfo.SELUSERCD = "" Then
'                Set cmd = New ADODB.Command
'                cmd.ActiveConnection = con
'                cmd.CommandType = adCmdStoredProc
'                cmd.CommandText = "QryTodaysExpense"
'                cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, strScript)
'                cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(CDate(strExpDt), "DD/MM/YYYY"))
'                cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
'                Set rsQ = New ADODB.Recordset
'                rsQ.CursorLocation = adUseClient
'                rsQ.CursorType = adOpenStatic
'                rsQ.LockType = adLockReadOnly
'                Set rsQ = cmd.Execute
                
                 'Update - 1/3/11
                strQ = "SELECT Sum(Units) AS punits, Sum(Abs(Units)*Traded) AS UniTrd, InType, CashType" & _
                       " From DummyTracker " & _
                       " Where Script ='" & strScript & "' And CDate(ExpDt) = CDate('" & Format(CDate(strExpDt), "DD/MM/YYYY") & _
                       "') And CDate(TradeDt) = CDate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') " & _
                       " And InDesc<>'CloseOut' " & _
                       " GROUP BY InType, CashType "
                Set rsQ = New ADODB.Recordset
                rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
            Else
                 'Update - 1/3/11
                strQ = "SELECT Sum(Units) AS punits, Sum(Abs(Units)*Traded) AS UniTrd, InType, CashType" & _
                       " From DummyTracker " & _
                       " Where Script ='" & strScript & "' And CDate(ExpDt) = CDate('" & Format(CDate(strExpDt), "DD/MM/YYYY") & _
                       "') And CDate(TradeDt) = CDate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') " & _
                       " And UserCD='" & userinfo.SELUSERCD & "' And InDesc<>'CloseOut' " & _
                       " GROUP BY InType, CashType "
                Set rsQ = New ADODB.Recordset
                rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
            End If
            If rsQ.EOF = False Then
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
                 'Update - 1/3/11
                rsTodaysExpense.Open "Select strike,cp,sum(units) as punit,sum(units* traded) as ptraded from Dummytracker where left(cashtype,1)='O' AND FIELD2='E' AND Script ='" & strScript & "' AND CDATE(tradedt)<=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(CDate(strExpDt), "DD/MM/YYYY") & "') And InDesc<>'CloseOut' group by strike,cp", con, adOpenKeyset, adLockPessimistic
            Else
                 'Update - 1/3/11
                rsTodaysExpense.Open "Select strike,cp,sum(units) as punit,sum(units* traded) as ptraded from Dummytracker where left(cashtype,1)='O' AND FIELD2='E' AND Script ='" & strScript & "' AND CDATE(tradedt)<=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(CDate(strExpDt), "DD/MM/YYYY") & "') And UserCD='" & userinfo.SELUSERCD & "' And InDesc<>'CloseOut' group by strike,cp", con, adOpenKeyset, adLockPessimistic
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
            
            curPrevBalance = 0
            Set rsPrevBal = New ADODB.Recordset
            If userinfo.SELUSERCD = "" Then
                rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
            Else
                rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where UserCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
            End If
            If IsNull(rsPrevBal!MaxDate) = False Then
                MaxDT = rsPrevBal!MaxDate
                
                Set rsPrevBal2 = New ADODB.Recordset
                If userinfo.SELUSERCD = "" Then
                    rsPrevBal2.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
                Else
                    rsPrevBal2.Open "Select * from Exp_Detl where UserCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
                End If
                If Not rsPrevBal2.EOF Then
                    curPrevBalance = Round(Val(rsPrevBal2!Closing))
                End If
                rsPrevBal2.Close
                Set rsPrevBal2 = Nothing

            End If
            rsPrevBal.Close
            Set rsPrevBal = Nothing
            
            
            'Save Todays Expense
            Set rsExp = New ADODB.Recordset
            If userinfo.SELUSERCD = "" Then
                rsExp.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockOptimistic
            Else
                rsExp.Open "Select * from Exp_Detl where UserCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockOptimistic
            End If
            If Not rsExp.EOF Then
                rsExp!TodaysExpenses = TodaysExpense
                rsExp!Closing = curPrevBalance + TodaysExpense
                If userinfo.SELUSERCD <> "" Then
                    rsExp!USERCD = userinfo.SELUSERCD
                End If
                rsExp.Update
            Else
                rsExp.AddNew
                rsExp!SYMBOL = "EX"
                rsExp!Descr = strPortfolio
                rsExp!Tr_date = Format(CDate(txtDate.Text), "DD/MM/YYYY")
                rsExp!TodaysExpenses = TodaysExpense
                rsExp!Closing = curPrevBalance + TodaysExpense
                If userinfo.SELUSERCD <> "" Then
                    rsExp!USERCD = userinfo.SELUSERCD
                End If
                rsExp.Update
            End If
            rsExp.Close
            Set rsExp = Nothing
            
            If strPortfolio & "-" = SSTab2.Caption Then
                txtTExpense.Text = Round(TodaysExpense)
            End If
            rsP.MoveNext
        Wend
    End If
End If
rsExpMst.Close
Set rsExpMst = Nothing
'============================


strPortfolio = Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)

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
    

If strPubIsFormatAllowed = "1" Then
    txtTExpense.Text = FormatValue(txtTExpense)
End If


txtTotal.Text = Round(Val(txtTExpense.Text) + Val(txtPrvBalance.Text))
If blnIsCloseOut = True Then
    txtNetBalance.Text = Round(Val(txtBalance.Text) - Val(txtTotal.Text))
Else
    txtNetBalance.Text = Round(Val(txtBalance.Text) - Val(txtTotal.Text))
End If
End Sub



Private Sub cmdVarAnalysis_Click()
    If cmdStopCapture.Enabled = True Then
        Call Timer1_Timer
    End If
    
    Load frmVarAnalysisWithStrategy
    
    If cmdStopCapture.Enabled = True Then
        Call StopCaptureOnForm
    End If
    
    frmVarAnalysisWithStrategy.FillArray  'Updated by AAP on 19/11/2012
    frmVarAnalysisWithStrategy.FillGrid    'Updated by AAP on 19/11/2012
    frmVarAnalysisWithStrategy.Show vbModal   'Updated by AAP on 19/11/2012
End Sub

Private Sub Command1_Click()
frmChangeColorSetting.Show vbModal
End Sub

Public Sub ChangeColorsSettings()
Dim intCount As Integer
Dim intCol As Integer
For intCount = 1 To lstDetails1.ListItems.count
    If lstDetails1.ListItems(intCount).SubItems(1) = "C" Then
        For intCol = 0 To lstDetails1.ColumnHeaders.count - 1
            If intCol = 0 Then
                lstDetails1.ListItems(intCount).ForeColor = lngColor1
            Else
                lstDetails1.ListItems(intCount).ListSubItems(intCol).ForeColor = lngColor1
            End If
        Next
    End If
    
    If lstDetails1.ListItems(intCount).SubItems(1) = "P" Then
        For intCol = 0 To lstDetails1.ColumnHeaders.count - 1
            If intCol = 0 Then
                lstDetails1.ListItems(intCount).ForeColor = lngColor2
            Else
                lstDetails1.ListItems(intCount).ListSubItems(intCol).ForeColor = lngColor2
            End If
        Next
    End If
    
    If Val(lstDetails1.ListItems(intCount).SubItems(2)) < 0 Then
        lstDetails1.ListItems(intCount).ListSubItems(2).ForeColor = lngColor4
    Else
        lstDetails1.ListItems(intCount).ListSubItems(2).ForeColor = lngColor3
    End If

    If Val(lstDetails1.ListItems(intCount).SubItems(3)) < 0 Then
        lstDetails1.ListItems(intCount).ListSubItems(3).ForeColor = lngColor4
    Else
        lstDetails1.ListItems(intCount).ListSubItems(3).ForeColor = lngColor3
    End If
Next
lstDetails1.Refresh
End Sub


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




Private Sub Command2_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
fraTodays.Visible = True
fraTodays.ZOrder
fraTodays.Left = Command2.Left - fraTodays.Width
fraTodays.Top = Command2.Top - fraTodays.Height
End Sub

Private Sub Command2_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
fraTodays.Visible = False
End Sub

''Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'''Call GlobalKeyUp(Shift, KeyCode)
'''
'''If (Shift And vbAltMask) And (KeyCode = vbKeyD) Then
'''    txtDays.SetFocus
'''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyM) Then
'''    txtRate.SetFocus
'''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyC) Then
'''    txtCall.SetFocus
'''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyP) Then
'''    txtPut.SetFocus
'''End If
'''
'''Shift = 0
'''KeyCode = 0
''
''
''Dim strmnuPotfolio As String
''
''If (Shift = 4) And (KeyCode = 65) Then
'''    MDIMain.blnPortfoliosLoading = False
'''    MDIMain.cmbPortfolioList.SetFocus
'''    MDIMain.cmbPortfolioList.DropDown
''
'''    MDIMain.blnIsMouseClick = False
''    cboPortfolioList.SetFocus
''    Shift = 0
''    KeyCode = 0
''End If
''Call GlobalKeyUp(Shift, KeyCode)
''
''
''If (Shift And vbCtrlMask) And (KeyCode = vbKeyQ) Then
''    Unload Me
''    cmdSummary.Enabled = False
''    frmSummaryPortfolio.Show
''ElseIf (Shift = 1 + 2) And (KeyCode = vbKeyG) Then
''
''
''    frmLiveGraphAnalysis.Show vbModal
''''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyA) Then
''
'''ElseIf KeyCode = vbKeyF5 Then
'''    If cmdStartCapture.Enabled = True Then
'''        Call cmdStartCapture_Click
'''        Shift = 0
'''        KeyCode = 0
'''    End If
''ElseIf (Shift = 1 + 2) And (KeyCode = vbKeyV) Then
''    If cmdVarAnalysis.Enabled = True Then
''        Call cmdVarAnalysis_Click
''    End If
''ElseIf KeyCode = vbKeyT And Shift = 1 Then
''    If cmdTodaysExpense.Visible = True Then
''        Call cmdTodaysExpense_Click
''    End If
''ElseIf KeyCode = vbKeyF7 Then
'''    If cmdStopCapture.Enabled = True Then
'''        Call cmdStopCapture_Click
'''        Shift = 0
'''        KeyCode = 0
'''    End If
''    If cmdStopCapture.Enabled = True Then
''        Call cmdStopCapture_Click
''        Shift = 0
''        KeyCode = 0
''    ElseIf cmdStartCapture.Enabled = True Then
''        Call cmdStartCapture_Click
''        Shift = 0
''        KeyCode = 0
''    End If
''ElseIf (Shift And vbCtrlMask) And (KeyCode = vbKeyA) Then
''    SSTab2.SetFocus
''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyD) Then
''    Shift = 0
''    KeyCode = 0
''    txtDays.SetFocus
''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyM) Then
''    Shift = 0
''    KeyCode = 0
''    txtRate.SetFocus
''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyC) Then
''    Shift = 0
''    KeyCode = 0
''    txtCall.SetFocus
''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyP) Then
''    Shift = 0
''    KeyCode = 0
''    txtPut.SetFocus
'''ElseIf (Shift And vbAltMask) And (KeyCode = vbKeyI) Then
''''    Shift = 0
''''    KeyCode = 0
'''    If strPubIsNewIV = "1" Then
'''            Shift = 0
'''            KeyCode = 0
'''        If lstDetails1.ListItems.count = 0 Then
'''            If MsgBox("There is no Strike found!!!", vbCritical + vbOKOnly, "AddIV") = vbOK Then
''''                Unload frmModifyIV
'''            End If
'''        Else
'''            frmModifyIV.Show vbModal
'''        End If
'''    End If
''End If
''
''End Sub
''
'Private Sub Form_Load()
''If intUseEscape = 1 Then
''    cmdClose.Cancel = True
''ElseIf intUseEscape = 0 Then
''    cmdClose.Cancel = False
''End If
'Dim dt As Date
'dt = Date
'If dt >= dtPubExpiryDate Then 'dd/mm/yyyy
''    MsgBox "Please Contact Software Vendor...", vbCritical, "Expiry Date Violation"
''    End
'    Call ShowSoftwareExpiredReminder
'End If
'
'dtTodaysDate = Date
'If gblnAutomaticDaysReduce = True Then 'Added By SSP 05/04/2012 'AutomaticDaysReduce
'    tmrAutomaticDaysReduce.Enabled = True
'    Call CalculateAutomaticDaysReduceInterval
'Else
'    tmrAutomaticDaysReduce.Enabled = False
'End If
'
'
'
'Dim strQ As String
'Dim rsQ As ADODB.Recordset
'
'
'
'blnIsCaptureStarted = False
''optThPriceMinusNewLast.Value = True
'
''intPubFontSize = GetSetting("DeltaSoft", "Portfolio", "FontSize", 7)
'lstDetails1.Font.Size = intPubFontSize
'
'Dim intColCount As Integer
'If intPubFontSize > 8 Then
'    For intColCount = 1 To lstDetails1.ColumnHeaders.count
'        lstDetails1.ColumnHeaders.Item(intColCount).Width = lstDetails1.ColumnHeaders.Item(intColCount).Width + intPubFontSize * intPubFontSize
'    Next
'End If
'
'MDIMain.txtPortfolio.Visible = True
'MDIMain.txtPortfolio.Text = "Live: OFF"
'
''Call FillPortfolioCombo
'Call FillNewPortfolioCombo
'
'Call SetListFromDB
''Call FillPortfolio
'If strPubIgnorePortfolio = "Y" Then
'    cmdTodaysExpense.Visible = False
'Else
'    cmdTodaysExpense.Visible = True
'End If
'
'blnPubIsLiveBhavcopyOpen = True
'MDIMain.mnuToolsDaysReduce.Enabled = False
'lstDetails1.BackColor = lngPubListBC
'
'lngColor1 = lngPubCallFC ' GetSetting("DeltaSoft", "Portfolio", "lngColor1", lngColor1)
'lngColor2 = lngPubPutFC '  GetSetting("DeltaSoft", "Portfolio", "lngColor2", lngColor2)
'lngColor3 = lngPubPV ' GetSetting("DeltaSoft", "Portfolio", "lngColor3", lngColor3)
'lngColor4 = lngPubNV ' GetSetting("DeltaSoft", "Portfolio", "lngColor4", lngColor4)
'lngColor5 = lngPubListBC ' GetSetting("DeltaSoft", "Portfolio", "lngColor5", lngColor5)
'
'Call MenusOnLoad
'userinfo.SELUSERCD = ""
''Code For Resolution
''============================
'    Dim ScaleFactorX As Single, ScaleFactorY As Single  ' Scaling factors
'    ' Size of Form in Pixels at design resolution
'    DesignX = 1024
'    DesignY = 768
'    RePosForm = True   ' Flag for positioning Form
'    DoResize = False   ' Flag for Resize Event
'    ' Set up the screen values
'    Xtwips = Screen.TwipsPerPixelX
'    Ytwips = Screen.TwipsPerPixelY
'    Ypixels = Screen.Height / Ytwips ' Y Pixel Resolution
'    Xpixels = Screen.Width / Xtwips  ' X Pixel Resolution
'
'    ' Determine scaling factors
'    ScaleFactorX = (Xpixels / DesignX)
'    ScaleFactorY = (Ypixels / DesignY)
'    ScaleMode = 1  ' twips
'
'    Resize_For_Resolution ScaleFactorX, ScaleFactorY, Me
'    'Label.Caption = "Current resolution is " & Str$(Xpixels) + _
'     '"  by " + Str$(Ypixels)
'    MyForm.Height = Me.Height ' Remember the current size
'    MyForm.Width = Me.Width
''===============================
'
'Set rsDelete = New ADODB.Recordset
'rsDelete.Open "Delete * from DummyTrackerTemp", con, adOpenKeyset, adLockPessimistic
'Set rsDelete = Nothing
'
'Set rsDelete = New ADODB.Recordset
'rsDelete.Open "Delete from DummyTracker Where CFMonth='T'", con, adOpenKeyset, adLockPessimistic
'Set rsDelete = Nothing
'
'
''MDIMain.mnuFile1CrePort1.Enabled = False
'Call FillCombo
''ComboFillup "User_detl", "USER_ID", "UserCD", " USER_TYPE='User'", cboUserCd
'If RS.State = 1 Then RS.Close
'
'blnIsLoading = True
'
'blnIsOptionTempAdd = False
'blnIsFutureTempAdd = False
'cmdSave.ToolTipText = ""
'
'
''MDIMain.cmbPortfolioList.Visible = True
''MDIMain.txtPortfolio.Visible = True
'MDIMain.mnuFileSavePortfolio.Visible = False
'cmdSave.Enabled = False
'
'
'
'LOCKALL
'txtDate.Text = Format(Date, "dd-MMM-yyyy")
'Call ClearAll
'Call SetTabs(strPubMyDesc)
'Call FillDetails(strPubMyDesc)
'Call FillStrike
'Call CalculateSummary
'
'If strPubUseUsercodeInPortfolio = "Y" Then
'    cboUserCd.Visible = True
'    lblUserCd.Visible = True
'    Call FillUserCode
'Else
'    cboUserCd.Visible = False
'    lblUserCd.Visible = False
'End If
'blnIsLoading = False
'cboPortfolioList.Text = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
'
''MDIMain.Toolbar1.Enabled = True
'
'Call MDIMain.EnableToolBar
'MDIMain.Toolbar1.Buttons(typToolBar.int2).Enabled = False
''MDIMain.Toolbar1.Buttons(typToolBar.inttradetrail).Enabled = False
'
'cmdStartCapture.Enabled = True
'cmdStopCapture.Enabled = False
'
'Timer2.Enabled = False
'If blnIsSummaryPortfolioOpenForDisplay = False Then
'    'For Automated Uploading
'    Timer2.Enabled = False
'    If strPubManual = "A" Then
'        If CDate(strPubStartTime) <= CDate(FormatDateTime(Now, vbLongTime)) And CDate(strPubEndTime) >= CDate(FormatDateTime(Now, vbLongTime)) Then
'            Timer2.Enabled = True
'            Timer3.Enabled = False
'            dtEndTime = Now
'            dtStartTime = Now
'        End If
'        cmdManual.Visible = True
'        cmdManual.ZOrder
'        cmdAuto.Visible = False
'    Else
'        cmdManual.Visible = False
'        cmdAuto.Visible = True
'        cmdAuto.ZOrder
'        Timer2.Enabled = False
'        Timer3.Enabled = False
'    End If
''End If
'
'
'End If
'Timer3.Enabled = False
'
''cmdVarAnalysis.Enabled = False
'
'
''''' subclass the listview using the handle of the form
''''    ' if you are using the listview in a user control,
''''    'pass the handle of the usercontrol in the
''''    ' user control initialize sub
''''g_addProcOld = SetWindowLong(hWnd, GWL_WNDPROC, AddressOf WindowProc)
''''
''''
''''ReDim Preserve clr(lstDetails1.ListItems.count, lstDetails1.ColumnHeaders.count)
'''''Initialise the subclassing
''''g_MaxItems = lstDetails1.ListItems.count - 1
''''g_MaxColumns = lstDetails1.ColumnHeaders.count
'End Sub
'
Public Sub SetTabs(strPortfolio As String)
SSTab2.Tabs = 1
SSTab2.Caption = UCase(strPortfolio) & "-"
End Sub

Public Sub FillDetails(strPortfolio As String)
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim strLotSize As String
Dim rsLotSize As ADODB.Recordset

strQ = "Select * From RepFullSheetM Where My_strDesc='" & strPortfolio & "' and IsNull(UserCD)"

Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
strPortfolioName = strPortfolio
If rsQ.EOF = False Then
    Index = rsQ!Index
    SYMBOL = rsQ!Symbolname
    txtExpDt.Text = Format(CDate(rsQ!ExpDt), "dd-mmm-yyyy")
    txtDate.Text = Format(CDate(Date), "dd-mmm-yyyy")
    strScript = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7))
    txtRate.Text = rsQ!MkPrice
    dblPreviousRate = Val(txtRate.Text)
    
    txtDays.Text = DateDiff("D", CDate(txtDate.Text), CDate(txtExpDt.Text))
    
    intRate = rsQ!intRate 'Updated By SSP 02/01/2013
    
    If gblnAutomaticDaysReduce = True Then 'Added By SSP 05/04/2012 'AutomaticDaysReduce
        If intRate = 2 Then 'Added By SSP 02/01/2013
            If Val(txtDays.Text) >= gdblAutomaticDaysReduceCur Then
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
    
    
    
    RateDiff = rsQ!RateDiff
    StAbovetxt = IIf(IsNull(rsQ!StAbovetxt) = True, 0, rsQ!StAbovetxt)
    StBelowtxt = IIf(IsNull(rsQ!StBelowtxt) = True, 0, rsQ!StBelowtxt) ' rsQ!StBelowtxt
    
    
    curLotSize = 0
    If intRate = 2 Then
        intExpense = 2 'Change Here 9/8/2011
        
        fraCurrency.Visible = True
        fraTokens.Visible = False
        
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
        
        txtDomesticIntRate.Text = rsQ!mUp1Bal
        dblPreviousDomesticIntRate = rsQ!mUp1Bal
        txtForeignIntRate.Text = rsQ!mup2Bal
        dblPreviousForeignIntRate = rsQ!mup2Bal
        
        lstDetails1.ColumnHeaders(lstDetails1.ColumnHeaders.count - 1).Width = 1200
        lstDetails1.ColumnHeaders(lstDetails1.ColumnHeaders.count - 2).Width = 1200
        
        lblRhoVal.Visible = True
        txtTotal_RhoVal.Visible = True

    Else
        intExpense = 1 'Change Here 9/8/2011
        
        lstDetails1.ColumnHeaders(lstDetails1.ColumnHeaders.count - 1).Width = 0
        lstDetails1.ColumnHeaders(lstDetails1.ColumnHeaders.count - 2).Width = 0
    
        fraCurrency.Visible = False
        fraTokens.Visible = True
        
        lblRhoVal.Visible = False
        txtTotal_RhoVal.Visible = False
'        txtScriptRhoVal.Visible = False
    End If

    
    
    txtCall.Text = rsQ!Call
    dblPreviousCall = Val(txtCall.Text)
    
    txtPut.Text = rsQ!Put
    dblPreviousPut = Val(txtPut.Text)
    
    MidStrike = IIf(IsNull(rsQ!MidStrike) = True, 0, rsQ!MidStrike)
    
    strPubTokenNo = IIf(IsNull(rsQ!Field4) = True, "", rsQ!Field4)
    strPubTokenNoEQ = IIf(IsNull(rsQ!f_expenses) = True, "", rsQ!f_expenses)
    txtFOToken.Text = strPubTokenNo
    txtEQToken.Text = strPubTokenNoEQ
    If blnIsCaptureStarted = True Then
        Call OnlineRateUpdateForSingleToken
    End If
End If
rsQ.Close
Set rsQ = Nothing

'Change Here 8/9/2011
strQ = "Select * From Exp_Mst Where SrNo=" & intExpense
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    curExpPerCrore = rsQ!Exp_Per_Cr
    curExpenseFutBuy = rsQ!FUTTO + rsQ!FutSD + rsQ!FutSTT + rsQ!FutOEXP + rsQ!FutST + rsQ!FutSEBI
    curExpenseFutSell = rsQ!FUTTO + rsQ!FutSD + rsQ!FutSTTSell + rsQ!FutOEXP + rsQ!FutST + rsQ!FutSEBI
    curExpenseOptBuy = rsQ!OptTO + rsQ!OptSD + rsQ!OptSTT + rsQ!OptOEXP + rsQ!OptST + rsQ!OptSEBI
    curExpenseOptSell = rsQ!OptTO + rsQ!OptSD + rsQ!OptSTTSell + rsQ!OptOEXP + rsQ!OptST + rsQ!OptSEBI
    curExpenseEQDelBuy = rsQ!EqtTO + rsQ!EqtSD + rsQ!EqtSTT + rsQ!EqtOEXP + rsQ!EqtST + rsQ!EqtSEBI
    curExpenseEQNonDelBuy = rsQ!EqtNonDelTO + rsQ!EqtNonDelSD + rsQ!EqtNonDelSTT + rsQ!EqtNonDelOEXP + rsQ!EqtNonDelST + rsQ!EqtNonDelSEBI
End If
rsQ.Close
Set rsQ = Nothing

End Sub

Private Sub tmrAutomaticDaysReduce_Timer()

Dim dblNewDays As Double


If gblnAutomaticDaysReduce = True Then
    Call CalculateAutomaticDaysReduceInterval
    Call CalculateAutomaticDaysReduceIntervalCur 'Added By SSP 02/01/2013
'    txtDays.Text = DateDiff("D", CDate(txtDate.Text), CDate(txtExpDt.Text))
    dblNewDays = DateDiff("D", dtTodaysDate, CDate(txtExpDt.Text))
    If intRate = 2 Then 'Added By SSP 02/01/2013
        dblNewDays = dblNewDays - gdblAutomaticDaysReduceCur
    Else
        dblNewDays = dblNewDays - gdblAutomaticDaysReduce
    End If
    
    If dblNewDays <> Val(txtDays.Text) Then
        txtDays.Text = dblNewDays ' Val(txtDays.Text) - gdblAutomaticDaysReduce
        txtDate.Text = Format(DateAdd("d", -Val(txtDays.Text), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
        Call ClearAll
        Call FillStrike
        Call CalculateSummary
    End If

End If
End Sub

Private Sub txtDomesticIntRate_GotFocus()
txtDomesticIntRate.SelStart = 0
txtDomesticIntRate.SelLength = Len(txtDomesticIntRate.Text)

txtDomesticIntRate.TabStop = True
End Sub

Private Sub txtDomesticIntRate_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab And Shift = 1 Then
    If cboUserCd.Visible = True Then
        cboUserCd.SetFocus
    Else
        txtPut.SetFocus
    End If
ElseIf KeyCode = vbKeyTab Then
    txtForeignIntRate.SetFocus
ElseIf KeyCode = vbKeyDown Then
    txtDays.SetFocus
End If
End Sub


Private Sub txtDomesticIntRate_KeyPress(KeyAscii As Integer)
Dim strQ As String
Dim rsQ As ADODB.Recordset

If Not (KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 13 Or (KeyAscii >= 48 And KeyAscii <= 57)) Then KeyAscii = 0

KeyAscii = CHECKNUMDECI(txtDomesticIntRate, KeyAscii, 4)
If KeyAscii = 13 Then

    If Trim$(txtDomesticIntRate.Text) = "" Then
        MsgBox "Domestic Interest Rate can not be empty value!!!" & vbCrLf & "Inserting last stored Domestic Interest Rate.", vbCritical, "Empty Domestic Interest Rate"
        txtDomesticIntRate.Text = dblPreviousDomesticIntRate
        Exit Sub
    End If
    
    If blnMarketDynamics = False Then
        Set rsQ = New ADODB.Recordset
        strQ = "Select * from RepFullSheetM WHERE IntRate=2 And  MY_STRDESC='" & strPortfolioName & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
        rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
        If rsQ.EOF = False Then
            While Not rsQ.EOF
                rsQ!mUp1Bal = Val(txtDomesticIntRate.Text)
                dblPreviousDomesticIntRate = Val(txtDomesticIntRate.Text)
                rsQ.Update
                rsQ.MoveNext
            Wend
        End If
        rsQ.Close
        Set rsQ = Nothing
    End If
    
    Call ClearAll
    Call FillStrike
    Call CalculateSummary
End If

End Sub


Private Sub txtDomesticIntRate_LostFocus()
Dim strQ As String
Dim rsQ As ADODB.Recordset


If Trim$(txtDomesticIntRate.Text) = "" Then
    MsgBox "Domestic Interest Rate can not be empty value!!!" & vbCrLf & "Inserting last stored Domestic Interest Rate.", vbCritical, "Empty Domestic Interest Rate"
    txtDomesticIntRate.Text = dblPreviousDomesticIntRate
    Exit Sub
End If

If blnIsLoading = False Then
    If blnMarketDynamics = False Then
        Set rsQ = New ADODB.Recordset
        strQ = "Select * from RepFullSheetM WHERE IntRate=2 And MY_STRDESC='" & strPortfolioName & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
        rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
        If rsQ.EOF = False Then
            While Not rsQ.EOF
                rsQ!mUp1Bal = Val(txtDomesticIntRate.Text)
                dblPreviousDomesticIntRate = Val(txtDomesticIntRate.Text)
                rsQ.Update
                rsQ.MoveNext
            Wend
        End If
        rsQ.Close
        Set rsQ = Nothing
    End If
End If

Call ClearAll
Call FillStrike
Call CalculateSummary

txtDomesticIntRate.TabStop = False
End Sub


Private Sub txtForeignIntRate_GotFocus()
txtForeignIntRate.SelStart = 0
txtForeignIntRate.SelLength = Len(txtForeignIntRate.Text)

txtForeignIntRate.TabStop = True
End Sub


Private Sub txtForeignIntRate_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab And Shift = 1 Then
    txtDomesticIntRate.SetFocus
ElseIf KeyCode = vbKeyTab Then
    If cboPortfolioList.Visible = True Then
        cboPortfolioList.SetFocus
    Else
        txtDays.SetFocus
    End If
ElseIf KeyCode = vbKeyDown Then
    txtDays.SetFocus
End If
End Sub

Private Sub txtForeignIntRate_KeyPress(KeyAscii As Integer)
Dim strQ As String
Dim rsQ As ADODB.Recordset

If Not (KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 13 Or (KeyAscii >= 48 And KeyAscii <= 57)) Then KeyAscii = 0

KeyAscii = CHECKNUMDECI(txtForeignIntRate, KeyAscii, 4)
If KeyAscii = 13 Then

'    If Val(txtForeignIntRate.Text) = 0 And Trim$(txtForeignIntRate.Text) <> "" Then
'        MsgBox "Foreign Interest Rate can not be a 0 value!!!" & vbCrLf & "Inserting last stored Foreign Interest Rate.", vbCritical, "Wrong Foreign Interest Rate Inserted"
'        txtForeignIntRate.Text = dblPreviousForeignIntRate
'        Exit Sub
'    Else
    If Trim$(txtForeignIntRate.Text) = "" Then
        MsgBox "Foreign Interest Rate can not be empty value!!!" & vbCrLf & "Inserting last stored Foreign Interest Rate.", vbCritical, "Empty Foreign Interest Rate"
        txtForeignIntRate.Text = dblPreviousForeignIntRate
        Exit Sub
    End If
    
    If blnMarketDynamics = False Then
        Set rsQ = New ADODB.Recordset
        strQ = "Select * from RepFullSheetM WHERE IntRate=2 And   MY_STRDESC='" & strPortfolioName & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
        rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
        If rsQ.EOF = False Then
            While Not rsQ.EOF
                rsQ!mup2Bal = Val(txtForeignIntRate.Text)
                dblPreviousForeignIntRate = Val(txtForeignIntRate.Text)
                rsQ.Update
                rsQ.MoveNext
            Wend
        End If
        rsQ.Close
        Set rsQ = Nothing
    End If
    
    Call ClearAll
    Call FillStrike
    Call CalculateSummary
End If
End Sub


Private Sub txtForeignIntRate_LostFocus()
Dim strQ As String
Dim rsQ As ADODB.Recordset
'If Val(txtForeignIntRate.Text) = 0 And Trim$(txtForeignIntRate.Text) <> "" Then
'    MsgBox "Foreign Interest Rate can not be a 0 value!!!" & vbCrLf & "Inserting last stored Foreign Interest Rate.", vbCritical, "Wrong Foreign Interest Rate Inserted"
'    txtForeignIntRate.Text = dblPreviousForeignIntRate
'    Exit Sub
'Else
If Trim$(txtForeignIntRate.Text) = "" Then
    MsgBox "Foreign Interest Rate can not be empty value!!!" & vbCrLf & "Inserting last stored Foreign Interest Rate.", vbCritical, "Empty Foreign Interest Rate"
    txtForeignIntRate.Text = dblPreviousForeignIntRate
    Exit Sub
End If
If blnIsLoading = False Then
    If blnMarketDynamics = False Then
        Set rsQ = New ADODB.Recordset
        strQ = "Select * from RepFullSheetM WHERE IntRate=2 And  MY_STRDESC='" & strPortfolioName & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
        rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
        If rsQ.EOF = False Then
            While Not rsQ.EOF
                rsQ!mup2Bal = Val(txtForeignIntRate.Text)
                dblPreviousForeignIntRate = Val(txtForeignIntRate.Text)
                rsQ.Update
                rsQ.MoveNext
            Wend
        End If
        rsQ.Close
        Set rsQ = Nothing
    End If
End If
Call ClearAll
Call FillStrike
Call CalculateSummary

txtForeignIntRate.TabStop = False
End Sub

'Public Sub OnlineRateUpdateForSingleToken()
'
'Call MyObj.GetLtpArray(arrLtp)
'If arrLtp(Val(strPubTokenNo)) <> 0 Then
'    txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
'End If
'
''If IntRate = 0.1 Then
''    If strPubUseEqRate = "Y" Then
''        Call MyObj.GetLtpArrayEQ(arrLtpEQ)
''        If arrLtpEQ(Val(strPubTokenNoEQ)) <> 0 Then
''            txtRate.Text = Val(arrLtpEQ(Val(strPubTokenNoEQ))) / 100
'''            Call ClearAllForLtp
'''            Call FillCalculation
'''            Call CalculateExpense
''        End If
''    Else
''        If arrLtp(Val(strPubTokenNo)) <> 0 Then
''            txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
'''            Call ClearAllForLtp
'''            Call FillCalculation
'''            Call CalculateExpense
''        End If
''    End If
''Else
''    If arrLtp(Val(strPubTokenNo)) <> 0 Then
''        txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
'''        Call ClearAllForLtp
'''        Call FillCalculation
'''        Call CalculateExpense
''    End If
''End If
'
'''For Future
''If IntRate = 0 Then
''    If arrLtp(Val(strPubTokenNo)) <> 0 And Val(strPubTokenNo) <> 0 Then
''        strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtp(Val(strPubTokenNo)) / 100 & " Where Field4='" & Val(strPubTokenNo) & "'"
''        Set rsRepQ = New ADODB.Recordset
''        rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
''        Set rsRepQ = Nothing
''    End If
''Else
''    If strPubUseEqRate = "Y" Then
''        Call MyObj.GetLtpArrayEQ(arrLtpEQ)
''        If arrLtpEQ(Val(strPubTokenNoEQ)) <> 0 And Val(strPubTokenNoEQ) <> 0 Then
''            strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtpEQ(Val(strPubTokenNoEQ)) / 100 & " Where f_Expenses=" & Val(strPubTokenNoEQ) & ""
''            Set rsRepQ = New ADODB.Recordset
''            rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
''            Set rsRepQ = Nothing
''        End If
''    Else
''        If arrLtp(Val(strPubTokenNo)) <> 0 And Val(strPubTokenNo) <> 0 Then
''            strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtp(Val(strPubTokenNo)) / 100 & " Where Field4='" & Val(strPubTokenNo) & "'"
''            Set rsRepQ = New ADODB.Recordset
''            rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
''            Set rsRepQ = Nothing
''        End If
''    End If
''End If
'End Sub
'
Public Sub OnlineRateUpdate()
'This is used to update the LTP of all portflios into the database
Dim strQ As String
Dim rsQ As ADODB.Recordset

Dim strRepQ As String
Dim rsRepQ As ADODB.Recordset

'Call MyObj.GetLtpArray(arrLtp)

'''For Future & Stock
''strQ = "Select * From RepFullSheetM where Field4 Is Not Null And CDate(Expdt)>=Cdate('" & Format(Date, "DD/MM/YYYY") & "')"
''Set rsQ = New ADODB.Recordset
''rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
''If rsQ.EOF = False Then
''    While Not rsQ.EOF
''        If arrLtp(Val(rsQ!Field4)) <> 0 Then
''            strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtp(Val(rsQ!Field4)) / 100 & " Where Field4='" & rsQ!Field4 & "'"
''            Set rsRepQ = New ADODB.Recordset
''            rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
''            Set rsRepQ = Nothing
''        End If
''        rsQ.MoveNext
''    Wend
''End If
''rsQ.Close
''Set rsQ = Nothing

'If gstrUseVSATFlag = "Y" Then
'    Call MyObjVSAT.GetLtpVSat(arrLtp)
'    Call MyObjVSAT.GetLtpVSatCur(arrLtpCur)
'    If strPubUseEQ = "Y" Then
'        'For EQ
'        Call MyObjVSAT.GetLtpVSatEQ(arrLtpEQ)
'    End If
'Else
    Call MyObj.GetLtpArray(arrLtp)
    Call MyObj.GetLtpArrayCur(arrLtpCur)
    If strPubUseEQ = "Y" Then
        'For EQ
        Call MyObj.GetLtpArrayEQ(arrLtpEQ)
    End If
'End If

'For Future & Stock
strQ = "Select * From RepFullSheetM where Isnull(UserCD) And CDate(Expdt)>=CDate('" & Format(Date, "DD/MM/YYYY") & "')"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        If rsQ!intRate = 2 Then
            If IsNull(rsQ!Field4) = False Then
                If arrLtpCur(Val(rsQ!Field4)) <> 0 Then
                    strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtpCur(Val(rsQ!Field4)) / 10000000 & " Where Field4='" & rsQ!Field4 & "'"
                    Set rsRepQ = New ADODB.Recordset
                    rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
                    Set rsRepQ = Nothing
                End If
            End If
        Else
            If strPubUseEQ = "Y" Then
                If rsQ!intRate = 0 And IsNull(rsQ!Field4) = False Then
                    If arrLtp(Val(rsQ!Field4)) <> 0 Then
                        strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtp(Val(rsQ!Field4)) / 100 & " Where Field4='" & rsQ!Field4 & "'"
                        Set rsRepQ = New ADODB.Recordset
                        rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
                        Set rsRepQ = Nothing
                    End If
                Else
                    'For EQ
                    If IsNull(rsQ!f_expenses) = False Then
                        If arrLtpEQ(Val(rsQ!f_expenses)) <> 0 Then
                            strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtpEQ(Val(rsQ!f_expenses)) / 100 & " Where F_Expenses=" & rsQ!f_expenses & ""
                            Set rsRepQ = New ADODB.Recordset
                            rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
                            Set rsRepQ = Nothing
                        End If
                    End If
                End If
            Else
                If IsNull(rsQ!Field4) = False Then
                    If arrLtp(Val(rsQ!Field4)) <> 0 Then
                        strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtp(Val(rsQ!Field4)) / 100 & " Where Field4='" & rsQ!Field4 & "'"
                        Set rsRepQ = New ADODB.Recordset
                        rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
                        Set rsRepQ = Nothing
                    End If
                End If
            End If
        End If
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing
End Sub



Public Sub OnlineRateUpdateForSingleToken()

'If gstrUseVSATFlag = "Y" Then
'    Call MyObjVSAT.GetLtpVSat(arrLtp)
'
'    If intRate = 2 Then
'        Call MyObjVSAT.GetLtpVSatCur(arrLtpCur)
'    End If
'
'    If strPubUseEQ = "Y" Then
'        'For EQ
'        Call MyObjVSAT.GetLtpVSatEQ(arrLtpEQ)
'    End If
'Else
    Call MyObj.GetLtpArray(arrLtp)
    
    If intRate = 2 Then
        Call MyObj.GetLtpArrayCur(arrLtpCur)
    End If
    
    If strPubUseEQ = "Y" Then
        'For EQ
        Call MyObj.GetLtpArrayEQ(arrLtpEQ)
    End If
'End If


If intRate = 2 Then
   ' Call MyObj.GetLtpArrayCur(arrLtpCur)
    If arrLtpCur(Val(strPubTokenNo)) <> 0 Then
        txtRate.Text = Val(arrLtpCur(Val(strPubTokenNo))) / 10000000
    End If
Else
    If strPubUseEQ = "Y" Then
        If intRate = 0 Then
           ' Call MyObj.GetLtpArray(arrLtp)
            If arrLtp(Val(strPubTokenNo)) <> 0 Then
                txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
            End If
        Else
            'For EQ
            'Call MyObj.GetLtpArrayEQ(arrLtpEQ)
            If arrLtpEQ(Val(strPubTokenNoEQ)) <> 0 Then
                txtRate.Text = Val(arrLtpEQ(Val(strPubTokenNoEQ))) / 100
            End If
        End If
    Else
        'Call MyObj.GetLtpArray(arrLtp)
        If arrLtp(Val(strPubTokenNo)) <> 0 Then
            txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
        End If
    End If
End If
End Sub

'Private Sub Form_Unload(Cancel As Integer)
'Call SaveListSettingsToDB
'Call MDIMain.DisableToolBar
'If cmdStopCapture.Enabled = True Then
'    Call StopCaptureOnForm
'End If
' If blnIsCaptureStarted = True Then
'     Call OnlineRateUpdate
' End If
' If blnIsOptionTempAdd = True Or blnIsFutureTempAdd = True Then
'     intRes = MsgBox("Are you sure to close this portfolio without saving hand entries? Press Ok to close this form...", vbQuestion + vbOKCancel, "Hand Entries")
'     If intRes = vbCancel Then
'         Cancel = True
'         Exit Sub
'     End If
'     blnIsOptionTempAdd = False
'     blnIsFutureTempAdd = False
'     cmdSave.ToolTipText = ""
'     MDIMain.mnuFileSavePortfolio.Visible = False
' End If
'
' userinfo.SELUSERCD = ""
'MDIMain.Toolbar1.Buttons(typToolBar.int2).Enabled = True
'
'mode = True
'blnPubIsLiveBhavcopyOpen = False
'
'MDIMain.mnuFileNewPortfolio.Enabled = True
'MDIMain.mnuFileModifyPortfolio.Enabled = True
'MDIMain.mnuFileOpenPortfolio.Enabled = True
'MDIMain.mnuFileDeletePortfolio.Enabled = False
'
'MDIMain.mnuMasters.Enabled = True 'Whole Master Menu
'
'MDIMain.mnuView.Enabled = True
'MDIMain.mnuViewUserPortfolioDetails.Enabled = False
'MDIMain.mnuViewLiveBhavcopy.Enabled = True
'
'MDIMain.mnuUpload.Enabled = True
'MDIMain.mnuUploadVolatility.Enabled = True
'MDIMain.mnuUploadBhavcopyFile.Enabled = False
'MDIMain.mnuUploadDeleteUploadedData.Enabled = False
'MDIMain.mnuUploadManualUpload.Enabled = False
'MDIMain.mnuUploadMultipleFileUpload.Enabled = False
'MDIMain.mnuUploadDeleteCurrentlyUploadedData.Enabled = False
'MDIMain.mnuUploadCustomizedFile.Enabled = False
'MDIMain.mnuUploadFurureStockRate.Enabled = True
'
'
'MDIMain.mnuUtility.Enabled = False 'Whole Utility Menu
'
'MDIMain.mnuToolsAddIV.Enabled = True
'MDIMain.mnuToolsDaysReduce.Enabled = True
'MDIMain.mnuToolsHidePortfolio.Enabled = True
'MDIMain.mnuToolsDeleteHandEntries.Enabled = False
'MDIMain.mnuCarryForwardBalance.Enabled = False
'MDIMain.mnuToolsRemoveExpense.Enabled = True
'
'MDIMain.mnuToolsLiveSummaryPortfolio.Enabled = True
''Added By SSP 17/2/2012
'MDIMain.mnuToolsLiveSummaryPortfolioM2M.Enabled = True
'
'MDIMain.mnuToolsLiveBhavcopyWithBuySell_IV.Enabled = True
'MDIMain.mnuToolsLiveIVAnalysis.Enabled = True
'MDIMain.mnuFileClose.Enabled = False
'
'
'MDIMain.mnuToolsLiveBhavcopyScriptwise.Enabled = True
'
''If blnIsTabExceeds = True Then
'    'frmSummaryPortfolio.Show
''Else
''    frmPortfolio.Show
''End If
''UPORTFOLIO = False
'
''MDIMain.cmbPortfolioList.Visible = False
'
'MDIMain.txtPortfolio.Visible = False
'MDIMain.txtPortfolio.Text = "Portfolio List"
'End Sub
'
'
'
'Private Sub OnlineRateUpdate()
''This is used to update the LTP of all portflios into the database
'Dim strQ As String
'Dim rsQ As ADODB.Recordset
'
'Dim strRepQ As String
'Dim rsRepQ As ADODB.Recordset
'
'Call MyObj.GetLtpArray(arrLtp)
'
''For Future & Stock
'strQ = "Select * From RepFullSheetM where Field4 Is Not Null And CDate(Expdt)>=Cdate('" & Format(Date, "DD/MM/YYYY") & "')"
'Set rsQ = New ADODB.Recordset
'rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
'If rsQ.EOF = False Then
'    While Not rsQ.EOF
'        If arrLtp(Val(rsQ!Field4)) <> 0 Then
'            strRepQ = "Update RepFullSheetM Set MkPrice=" & arrLtp(Val(rsQ!Field4)) / 100 & " Where Field4='" & rsQ!Field4 & "'"
'            Set rsRepQ = New ADODB.Recordset
'            rsRepQ.Open strRepQ, con, adOpenKeyset, adLockOptimistic
'            Set rsRepQ = Nothing
'        End If
'        rsQ.MoveNext
'    Wend
'End If
'rsQ.Close
'Set rsQ = Nothing
'End Sub

Private Sub lstDetails1_GotFocus()
lstDetails1.TabStop = True
End Sub

Private Sub lstDetails1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab Then
    txtDays.SetFocus
End If
End Sub

Private Sub lstDetails1_LostFocus()
lstDetails1.TabStop = False
End Sub


Public Sub SSTab2_Click(PreviousTab As Integer)
If blnCmbPortFolio = True Then Exit Sub
Call ClearAll
Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary
blnIsPortfolioLoading = True
blnCmbPortFolio = True

MDIMain.blnIsLoadedOnce = True
MDIMain.cmbPortfolioList.Text = Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)
MDIMain.blnIsLoadedOnce = False
'If blnIsScriptWiseDetails = True Then
'    frmScriptWiseDetails.FillDetails
'End If
blnCmbPortFolio = False
blnIsPortfolioLoading = False
End Sub


'Private Sub lstDetails1_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = vbKeyReturn Then
'    lstDetails1_Click
'End If
'End Sub



Private Sub Timer1_Timer()
On Error GoTo EH



'If gstrUseVSATFlag = "Y" Then
'    Call MyObjVSAT.GetLtpVSat(arrLtp)
'    Call MyObjVSAT.GetLtpVSatCur(arrLtpCur)
'    If strPubUseEQ = "Y" Then
'        'For EQ
'        Call MyObjVSAT.GetLtpVSatEQ(arrLtpEQ)
'    End If
'Else
    Call MyObj.GetLtpArray(arrLtp)
    Call MyObj.GetLtpArrayCur(arrLtpCur)
    If strPubUseEQ = "Y" Then
        'For EQ
        Call MyObj.GetLtpArrayEQ(arrLtpEQ)
    End If
'End If

'Call MyObj.GetLtpArray(arrLtp)
'If strPubUseEQ = "Y" Then
'    Call MyObj.GetLtpArrayEQ(arrLtpEQ)
'End If

If intRate = 2 Then
'    Call MyObj.GetLtpArrayCur(arrLtpCur)
    If arrLtpCur(Val(strPubTokenNo)) <> 0 Then
        txtRate.Text = Val(arrLtpCur(Val(strPubTokenNo))) / 10000000
'        txtRate.Text = 55.2979
        Call ClearAllForLtp
        Call IvCalculation
        Call FillCurrencyCalculation
        Call CalculateSquareOffExpense
        Call LTPCalculationTodays
        Call CalcOptionUN
        
    End If
Else
    If strPubUseEQ = "Y" Then
        If intRate = 0 Then
            If arrLtp(Val(strPubTokenNo)) <> 0 Then
                txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
'                txtRate.Text = "5623.25"
                Call ClearAllForLtp
                Call IvCalculation
                Call LTPCalculation
                Call CalculateSquareOffExpense
                Call LTPCalculationTodays
                Call CalcOptionUN
                
            End If
        Else
            If arrLtpEQ(Val(strPubTokenNoEQ)) <> 0 Then
                txtRate.Text = Val(arrLtpEQ(Val(strPubTokenNoEQ))) / 100
                Call ClearAllForLtp
                Call IvCalculation
                Call LTPCalculation
                Call CalculateSquareOffExpense
                Call LTPCalculationTodays
                Call CalcOptionUN
                
            End If
            
        End If
    Else
       
        If arrLtp(Val(strPubTokenNo)) <> 0 Then
            txtRate.Text = Val(arrLtp(Val(strPubTokenNo))) / 100
            Call ClearAllForLtp
            Call IvCalculation
            Call LTPCalculation
            Call CalculateSquareOffExpense
            Call LTPCalculationTodays
            Call CalcOptionUN
            
        End If
    End If

End If






'Debug.Print "Timer1"

'Call ShowAlert

Exit Sub
EH:
    If Err.Number = 9 Then
        rsQ.Close
        Set rsQ = Nothing

    Else
        MsgBox Err.Number & Err.Description
    End If
End Sub




Public Sub FillCurrencyCalculation()
Dim intCount As Integer

If gstrUseLiveIV = "Y" Then
    Call CurrencyCalculationLTPWithLiveIV
Else
    Call CurrencyCalculationLTP
End If




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

txtTot_Delta.Text = Val(txtDetalC.Text) + Val(txtDetalP.Text) 'Round(Val(txtTotal_DelVal.Text), 0)
txtTot_Theta.Text = Val(txtThetaC.Text) + Val(txtThetaP.Text)
txtTot_Gamma.Text = Round(Val(txtGammaC.Text) + Val(txtGammaP.Text), 4)
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



txtPremium.Text = Round(-Val(txtPremium.Text) * curLotSize, 4)
'txtFSR.Text = Round(-Val(txtFSR.Text), 2)
'txtOR.Text = Round(-Val(txtOR.Text), 2)
txtFSU.Text = Round(-Val(txtFSU.Text) * curLotSize, 4)
txtOU.Text = Round(-Val(txtOU.Text) * curLotSize, 4)
txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text), 4)

If blnIsCloseOut = True Then
    txtBalance.Text = Val(txtBalance.Text) + curCarryForward
End If

txtNetBalance.Text = Val(txtBalance.Text) - Val(txtTotal.Text)
If strPubIsFormatAllowed = "1" Then
    txtFSU.Text = FormatValue(txtFSU)
    txtPremium.Text = FormatValue(txtPremium)
    txtOU.Text = FormatValue(txtOU)
End If

Call ChangeColor


''txtBRFRBL.Text = Val(txtBalance.Text) + Val(txtCarryForword.Text)
'txtBRFRBL.Text = Val(txtBalance.Text) + Val(txtCarryForword.Text)
'txtBRFRBL.Text = Round(txtBRFRBL.Text, 4)

End Sub

Public Sub CurrencyCalculationLTP()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim strCP As String


Dim intStrike As Integer
Dim lngColor As Long

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)

For intStrike = 1 To lstDetails1.ListItems.count
    curStrike = lstDetails1.ListItems(intStrike)
    strCP = lstDetails1.ListItems(intStrike).SubItems(1)
    
    strCall = lstDetails1.ListItems(intStrike).SubItems(8)
    strPut = lstDetails1.ListItems(intStrike).SubItems(8)
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(19)) <> 0 Then
        lstDetails1.ListItems(intStrike).SubItems(5) = arrLtpCur(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 10000000
    End If
    
   If strCP = "C" Then
        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedCallVolatility(Val(txtRate.Text), Val(lstDetails1.ListItems(intStrike)), _
                Val(txtTempDays.Text) / 365, (Val(txtDomesticIntRate.Text) - Val(txtForeignIntRate.Text)) / 100, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting) '6


        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curRate - curStrike
            lstDetails1.ListItems(intStrike).SubItems(9) = 100 / 100 '8
            lstDetails1.ListItems(intStrike).SubItems(11) = 0    '10
            lstDetails1.ListItems(intStrike).SubItems(13) = 0    '12
            lstDetails1.ListItems(intStrike).SubItems(15) = 0    '14
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 50 / 100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-CalculateThetaCallCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(17) = Format(CalculateRhoCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        End If
        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9))), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))) * curLotSize, "0.0000")
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(18) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(17)) * curLotSize, "0.0000")

        txtDetalC.Text = Val(txtDetalC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaC.Text = Val(txtThetaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaC.Text = Val(txtVegaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaC.Text = Val(txtGammaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtCUnits.Text = Val(txtCUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
   
   
   
   If strCP = "P" Then
        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedPutVolatility(Val(txtRate.Text), Val(lstDetails1.ListItems(intStrike)), _
                Val(txtTempDays.Text) / 365, (Val(txtDomesticIntRate.Text) - Val(txtForeignIntRate.Text)) / 100, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting) '6


        
        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curStrike - curRate
            lstDetails1.ListItems(intStrike).SubItems(9) = -100 / 100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = -50 / 100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-CalculateThetaPutCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(17) = Format(CalculateRhoPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        End If

        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9))), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))) * curLotSize, "0.0000")
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(18) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(17)) * curLotSize, "0.0000")
        
        txtDetalP.Text = Val(txtDetalP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaP.Text = Val(txtThetaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaP.Text = Val(txtVegaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaP.Text = Val(txtGammaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtPUnits.Text = Val(txtPUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
    
    'Difference
    If strPubLiveBhavcopyIVDifference = "NewLast" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(5)) - Val(lstDetails1.ListItems(intStrike).SubItems(4)), "0.00")
    ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(4)) - Val(lstDetails1.ListItems(intStrike).SubItems(5)), "0.00")
    End If
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(2)) <> 0 Then
        If Val(lstDetails1.ListItems(intStrike).SubItems(5)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(5)))
        ElseIf Val(lstDetails1.ListItems(intStrike).SubItems(4)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
        End If
    End If
    
    txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
    txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
    txtTotal_RhoVal.Text = Val(txtTotal_RhoVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(18))
    
    txtPremium.Text = Val(txtPremium.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(3)))
    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
    
Next


End Sub

Public Sub CurrencyCalculationLTPWithLiveIV()
Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim strCP As String
Dim strCallTh As String
Dim strPutTh As String

Dim intStrike As Integer
Dim lngColor As Long

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)

For intStrike = 1 To lstDetails1.ListItems.count
    curStrike = lstDetails1.ListItems(intStrike)
    strCP = lstDetails1.ListItems(intStrike).SubItems(1)
    
    strCallTh = lstDetails1.ListItems(intStrike).SubItems(8)
    strPutTh = lstDetails1.ListItems(intStrike).SubItems(8)
    
    strCall = lstDetails1.ListItems(intStrike).SubItems(8)
    strPut = lstDetails1.ListItems(intStrike).SubItems(8)
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(19)) <> 0 Then
        lstDetails1.ListItems(intStrike).SubItems(5) = arrLtpCur(Val(lstDetails1.ListItems(intStrike).SubItems(19))) / 10000000
    End If
    
   If strCP = "C" Then
        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedCallVolatility(Val(txtRate.Text), Val(lstDetails1.ListItems(intStrike)), _
                Val(txtTempDays.Text) / 365, (Val(txtDomesticIntRate.Text) - Val(txtForeignIntRate.Text)) / 100, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting) '6
        
        If Val(lstDetails1.ListItems(intStrike).SubItems(7)) <> 0 Then
            strCall = lstDetails1.ListItems(intStrike).SubItems(7)
        End If

        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curRate - curStrike
            lstDetails1.ListItems(intStrike).SubItems(9) = 100 / 100 '8
            lstDetails1.ListItems(intStrike).SubItems(11) = 0    '10
            lstDetails1.ListItems(intStrike).SubItems(13) = 0    '12
            lstDetails1.ListItems(intStrike).SubItems(15) = 0    '14
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 50 / 100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCallTh), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-CalculateThetaCallCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(17) = Format(CalculateRhoCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        End If
        
        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9))), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))) * curLotSize, "0.0000")
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(18) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(17)) * curLotSize, "0.0000")


        txtDetalC.Text = Val(txtDetalC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaC.Text = Val(txtThetaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaC.Text = Val(txtVegaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaC.Text = Val(txtGammaC.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtCUnits.Text = Val(txtCUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
   
   
   
   If strCP = "P" Then
        lstDetails1.ListItems(intStrike).SubItems(7) = Format(ImpliedPutVolatility(Val(txtRate.Text), Val(lstDetails1.ListItems(intStrike)), _
                Val(txtTempDays.Text) / 365, (Val(txtDomesticIntRate.Text) - Val(txtForeignIntRate.Text)) / 100, Val(lstDetails1.ListItems(intStrike).SubItems(5)), 0) * 100, gstrIvDecimalSetting) '6
        If Val(lstDetails1.ListItems(intStrike).SubItems(7)) <> 0 Then
            strPut = lstDetails1.ListItems(intStrike).SubItems(7)
        End If

        
        If dblT <= 0 And curRate > curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = 0
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate < curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = curStrike - curRate
            lstDetails1.ListItems(intStrike).SubItems(9) = -100 / 100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0    '14
        ElseIf dblT <= 0 And curRate = curStrike Then
            lstDetails1.ListItems(intStrike).SubItems(4) = 0
            lstDetails1.ListItems(intStrike).SubItems(9) = -50 / 100
            lstDetails1.ListItems(intStrike).SubItems(11) = 0
            lstDetails1.ListItems(intStrike).SubItems(13) = 0
            lstDetails1.ListItems(intStrike).SubItems(15) = 0
            lstDetails1.ListItems(intStrike).SubItems(17) = 0
        Else
            lstDetails1.ListItems(intStrike).SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPutTh), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(9) = Format(CalculateDeltaPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(11) = Format(-CalculateThetaPutCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
            lstDetails1.ListItems(intStrike).SubItems(17) = Format(CalculateRhoPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        End If

        'Updated By SSP 06/12/2011
        lstDetails1.ListItems(intStrike).SubItems(10) = Format(-(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(9))), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(12) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * (-Val(lstDetails1.ListItems(intStrike).SubItems(11))) * curLotSize, "0.0000")
        lstDetails1.ListItems(intStrike).SubItems(14) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
        lstDetails1.ListItems(intStrike).SubItems(16) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(15)), "0.0000") '* curLotSize
        lstDetails1.ListItems(intStrike).SubItems(18) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(17)) * curLotSize, "0.0000")
        
        txtDetalP.Text = Val(txtDetalP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
        txtThetaP.Text = Val(txtThetaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
        txtVegaP.Text = Val(txtVegaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
        txtGammaP.Text = Val(txtGammaP.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
        txtPUnits.Text = Val(txtPUnits.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(2))
    End If
    
    'Difference
    If strPubLiveBhavcopyIVDifference = "NewLast" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(5)) - Val(lstDetails1.ListItems(intStrike).SubItems(4)), "0.00")
    ElseIf strPubLiveBhavcopyIVDifference = "ThPrice" Then
        lstDetails1.ListItems(intStrike).SubItems(6) = Format(Val(lstDetails1.ListItems(intStrike).SubItems(4)) - Val(lstDetails1.ListItems(intStrike).SubItems(5)), "0.00")
    End If
    
    If Val(lstDetails1.ListItems(intStrike).SubItems(2)) <> 0 Then
        If Val(lstDetails1.ListItems(intStrike).SubItems(5)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(5)))
        ElseIf Val(lstDetails1.ListItems(intStrike).SubItems(4)) <> 0 Then
            txtOptionUN.Text = Val(txtOptionUN.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
        End If
    End If
    
    txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(10))
    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(12))
    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(14))
    txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(16))
    txtTotal_RhoVal.Text = Val(txtTotal_RhoVal.Text) + Val(lstDetails1.ListItems(intStrike).SubItems(18))
    
    txtPremium.Text = Val(txtPremium.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(3)))
    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intStrike).SubItems(2)) * Val(lstDetails1.ListItems(intStrike).SubItems(4)))
    
Next


End Sub






'Private Sub txtLast_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = vbKeyReturn Then
'    Call cmdOk_Click
'End If
'End Sub
Public Sub CalcOptionUN()

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
strCall = txtCall.Text
strPut = txtPut.Text
If strPubIsNewIVForCurrency = "1" Then
    Set rsQ2 = New ADODB.Recordset
    Set cmd2 = New ADODB.Command
    cmd2.ActiveConnection = con
    cmd2.CommandType = adCmdStoredProc
    cmd2.CommandText = "QryGetNewIV"
    cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
    cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
    cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(strPortfolioName, Len(strPortfolioName) - 7)))
    cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))
    rsQ2.CursorLocation = adUseClient
    rsQ2.CursorType = adOpenStatic
    rsQ2.LockType = adLockReadOnly
    Set rsQ2 = cmd2.Execute
    If rsQ2.EOF = False Then
        strCall = rsQ2!NewIV
        strPut = rsQ2!NewIV
    End If
    rsQ2.Close
    Set rsQ2 = Nothing
    Set cmd2 = Nothing
End If

If strCP = "C" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = curRate - curStrike
        List.SubItems(9) = 100 / 100
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = 0
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = 50 / 100
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
        List.SubItems(17) = 0
    Else
        List.SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(9) = Format(CalculateDeltaCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(11) = Format(-(CalculateThetaCallCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), "0.0000") 'Theta
        List.SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
        List.SubItems(17) = Format(CalculateRhoCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
    End If
    List.SubItems(8) = Val(strCall) 'lv
    
    'Updated By SSP 06/12/2011
    List.SubItems(10) = Format(-(Val(List.SubItems(2)) * Val(List.SubItems(9))), "0.0000") '* curLotSize
    List.SubItems(12) = Format(Val(List.SubItems(2)) * (-Val(List.SubItems(11))) * curLotSize, "0.0000")
    List.SubItems(14) = Format(Val(List.SubItems(2)) * Val(List.SubItems(13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
    List.SubItems(16) = Format(Val(List.SubItems(2)) * Val(List.SubItems(15)), "0.0000") '* curLotSize
    List.SubItems(18) = Format(Val(List.SubItems(2)) * Val(List.SubItems(17)) * curLotSize, "0.0000")
    
    txtDetalC.Text = Val(txtDetalC.Text) + Val(List.SubItems(10))
    txtThetaC.Text = Val(txtThetaC.Text) + Val(List.SubItems(12))
    txtVegaC.Text = Val(txtVegaC.Text) + Val(List.SubItems(14))
    txtGammaC.Text = Val(txtGammaC.Text) + Val(List.SubItems(16))
    txtCUnits.Text = Val(txtCUnits.Text) + Val(List.SubItems(2))
    
End If

If strCP = "P" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = 0
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = curStrike - curRate
        List.SubItems(9) = -100 / 100
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
        List.SubItems(9) = -50 / 100
        List.SubItems(11) = 0
        List.SubItems(13) = 0
        List.SubItems(15) = 0
        List.SubItems(17) = 0
    Else
        List.SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(9) = Format(CalculateDeltaPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(11) = Format(-(CalculateThetaPutCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), "0.0000")
        List.SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
        List.SubItems(17) = Format(CalculateRhoPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
    End If
    List.SubItems(8) = Val(strPut)
    
    'Updated By SSP 06/12/2011
    List.SubItems(10) = Format(-(Val(List.SubItems(2)) * Val(List.SubItems(9))), "0.0000") '* curLotSize
    List.SubItems(12) = Format(Val(List.SubItems(2)) * (-Val(List.SubItems(11))) * curLotSize, "0.0000")
    List.SubItems(14) = Format(Val(List.SubItems(2)) * Val(List.SubItems(13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* curLotSize'Mod.On17/10/2011
    List.SubItems(16) = Format(Val(List.SubItems(2)) * Val(List.SubItems(15)), "0.0000") '* curLotSize
    List.SubItems(18) = Format(Val(List.SubItems(2)) * Val(List.SubItems(17)) * curLotSize, "0.0000")
    
    txtDetalP.Text = Val(txtDetalP.Text) + Val(List.SubItems(10))
    txtThetaP.Text = Val(txtThetaP.Text) + Val(List.SubItems(12))
    txtVegaP.Text = Val(txtVegaP.Text) + Val(List.SubItems(14))
    txtGammaP.Text = Val(txtGammaP.Text) + Val(List.SubItems(16))
    txtPUnits.Text = Val(txtPUnits.Text) + Val(List.SubItems(2))
End If

txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(List.SubItems(10))
txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(List.SubItems(12))
txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(List.SubItems(14))
txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(List.SubItems(16))
txtTotal_RhoVal.Text = Val(txtTotal_RhoVal.Text) + Val(List.SubItems(18))

txtPremium.Text = Val(txtPremium.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(3)))
txtOU.Text = Val(txtOU.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(4)))

'Filling Color
List.ListSubItems(4).ForeColor = lngColor1
List.ListSubItems(4).Bold = True
List.ListSubItems(5).ForeColor = lngColor1
List.ListSubItems(5).Bold = True
List.ListSubItems(6).ForeColor = lngColor1
List.ListSubItems(6).Bold = True
List.ListSubItems(7).ForeColor = lngColor1
List.ListSubItems(7).Bold = True
List.ListSubItems(8).ForeColor = lngColor1
List.ListSubItems(8).Bold = True
List.ListSubItems(9).ForeColor = lngColor1
List.ListSubItems(9).Bold = True
List.ListSubItems(10).ForeColor = lngColor1
List.ListSubItems(10).Bold = True
List.ListSubItems(11).ForeColor = lngColor1
List.ListSubItems(11).Bold = True
List.ListSubItems(12).ForeColor = lngColor1
List.ListSubItems(12).Bold = True
List.ListSubItems(13).ForeColor = lngColor1
List.ListSubItems(13).Bold = True
List.ListSubItems(14).ForeColor = lngColor1
List.ListSubItems(14).Bold = True
List.ListSubItems(15).ForeColor = lngColor1
List.ListSubItems(15).Bold = True
List.ListSubItems(16).ForeColor = lngColor1
List.ListSubItems(16).Bold = True
List.ListSubItems(17).ForeColor = lngColor1
List.ListSubItems(17).Bold = True
List.ListSubItems(18).ForeColor = lngColor1
List.ListSubItems(18).Bold = True
End Sub


Private Sub CurrencyCalculationTodays(List As ListItem, curStrike As Double, strCP As String)

Dim curRate As Currency
Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim rsQ2 As ADODB.Recordset
Dim cmd2 As ADODB.Command

curRate = Val(txtRate.Text)
dblT = Round(Val(txtDays.Text) / 365, 6)

strCall = txtCall.Text
strPut = txtPut.Text
If strPubIsNewIVForCurrency = "1" Then
    Set rsQ2 = New ADODB.Recordset
    Set cmd2 = New ADODB.Command
    cmd2.ActiveConnection = con
    cmd2.CommandType = adCmdStoredProc
    cmd2.CommandText = "QryGetNewIV"
    cmd2.Parameters.Append cmd2.CreateParameter("Strike", adVarChar, adParamInput, 50, curStrike)
    cmd2.Parameters.Append cmd2.CreateParameter("CP", adVarChar, adParamInput, 50, strCP)
    cmd2.Parameters.Append cmd2.CreateParameter("ScriptName", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 8)))
    cmd2.Parameters.Append cmd2.CreateParameter("ExpiryDate", adDate, adParamInput, 8, Format(CDate(txtExpDt.Text), "DD/MM/YYYY"))
    rsQ2.CursorLocation = adUseClient
    rsQ2.CursorType = adOpenStatic
    rsQ2.LockType = adLockReadOnly
    Set rsQ2 = cmd2.Execute
    If rsQ2.EOF = False Then
        strCall = rsQ2!NewIV
        strPut = rsQ2!NewIV
    End If
    rsQ2.Close
    Set rsQ2 = Nothing
    Set cmd2 = Nothing
End If

If strCP = "C" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = curRate - curStrike
'        List.SubItems(9) = 100 / 100
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
'        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = 0
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
'        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = 50 / 100
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
'        List.SubItems(17) = 0
    Else
        List.SubItems(4) = Format(CalculateLastCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
'        List.SubItems(9) = Format(CalculateDeltaCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
'        List.SubItems(11) = Format(-(CalculateThetaCallCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0)), "0.0000") 'Theta
'        List.SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
'        List.SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
'        List.SubItems(17) = Format(CalculateRhoCallCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strCall), 0), "0.0000")
    End If
    List.SubItems(8) = Val(strCall) 'lv
    
'    List.SubItems(10) = -(Val(List.SubItems(2)) * Val(List.SubItems(9))) '* curLotSize
'    List.SubItems(12) = Val(List.SubItems(2)) * (-Val(List.SubItems(11))) * curLotSize
'    List.SubItems(14) = Val(List.SubItems(2)) * Val(List.SubItems(13)) * curLotSize
'    List.SubItems(16) = Val(List.SubItems(2)) * Val(List.SubItems(15)) '* curLotSize
'    List.SubItems(18) = Val(List.SubItems(2)) * Val(List.SubItems(17)) * curLotSize
    
'    txtDetalC.Text = Val(txtDetalC.Text) + Val(List.SubItems(10))
'    txtThetaC.Text = Val(txtThetaC.Text) + Val(List.SubItems(12))
'    txtVegaC.Text = Val(txtVegaC.Text) + Val(List.SubItems(14))
'    txtGammaC.Text = Val(txtGammaC.Text) + Val(List.SubItems(16))
'    txtCUnits.Text = Val(txtCUnits.Text) + Val(List.SubItems(2))
    
End If

If strCP = "P" Then
    If dblT <= 0 And curRate > curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = 0
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
'        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate < curStrike Then
        List.SubItems(4) = curStrike - curRate
'        List.SubItems(9) = -100 / 100
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
'        List.SubItems(17) = 0
    ElseIf dblT <= 0 And curRate = curStrike Then
        List.SubItems(4) = 0
'        List.SubItems(9) = -50 / 100
'        List.SubItems(11) = 0
'        List.SubItems(13) = 0
'        List.SubItems(15) = 0
'        List.SubItems(17) = 0
    Else
        List.SubItems(4) = Format(CalculateLastPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
'        List.SubItems(9) = Format(CalculateDeltaPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
'        List.SubItems(11) = Format(-(CalculateThetaPutCur(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0)), "0.0000")
'        List.SubItems(13) = Format(CalculateVegaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
'        List.SubItems(15) = Format(CalculateGammaCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
'        List.SubItems(17) = Format(CalculateRhoPutCurrency(Val(txtRate.Text), Val(txtForeignIntRate.Text), Val(txtDomesticIntRate.Text), CDbl(curStrike), Val(txtDays.Text), Val(strPut), 0), "0.0000")
    End If
    List.SubItems(8) = Val(strPut)
    
End If

'txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(List.SubItems(10))
'txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(List.SubItems(12))
'txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(List.SubItems(14))
'txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(List.SubItems(16))
'txtTotal_RHOVal.Text = Val(txtTotal_RHOVal.Text) + Val(List.SubItems(18))

txtTodaysPremium.Text = Val(txtTodaysPremium.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(3)))
txtTodaysOU.Text = Val(txtTodaysOU.Text) + (Val(List.SubItems(2)) * Val(List.SubItems(4)))

End Sub



Public Sub Calculation()
'New Code is included for optimiz~n
'25/1/2009

On Error GoTo ErrHand

lstDetails1.ListItems.Clear
lstDetailsTodays.ListItems.Clear
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

Dim strCloseOut  As String
Dim rsCloseOut As ADODB.Recordset


Dim strExpiryDate As String
Dim strPrevExpiryDate As String

ReDim strArrPreviousExpiry(20) As String
ReDim curArrPreviousExpiryUnits(20) As Currency
ReDim curArrPreviousExpiryRate(20) As Currency



Dim intCount As Integer
Dim intIndex As Integer

Set rsQ = New ADODB.Recordset
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc

txtOR.Text = "0"
txtNTrade.Text = "0"
txtTradeFutu.Text = "0"
txtFSR.Text = "0"
txtTFutu.Text = "0"
txtPFutu.Text = "0"
txtTradeStock.Text = "0"
txtTStock.Text = "0"
txtPStock.Text = "0"

txtTodaysBal.Text = "0"
txtTodaysFSR.Text = "0"
txtTodaysOR.Text = "0"
txtTodaysPremium.Text = "0"
txtTodaysOU.Text = "0"
txtTodaysFSU.Text = "0"
txtTodaysM2MBalanceWithoutExpense.Text = "0"

If Val(txtRate.Text) <= 0 Then
    txtRate.Text = GetRate(Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
End If

If Val(txtCall.Text) <= 0 Then
    txtCall.Text = GetCall(Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
End If

If Val(txtPut.Text) <= 0 Then
    txtPut.Text = GetPut(Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
End If

'This Procedure is used to fill all strikes present in the ssytem
'This Procedure is also used to calculate Option Realized
If userinfo.SELUSERCD = "" Then
'    cmd.CommandText = "QryOrderedUnitsTradedSummary"
    If intRate = 2 Then
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryCurrencyStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
        
    Else
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
        
    End If

Else
'    cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
    If intRate = 2 Then
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeCurrencyStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
        
    Else
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCodeWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        
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
            lvItem.SubItems(1) = rsQ!CP
            
            lvItem.ForeColor = lngColor
            lvItem.ListSubItems(1).ForeColor = lngColor

            If rsQ!OPTIONQTY = 0 Then
                lvItem.SubItems(2) = 0
                lvItem.SubItems(3) = 0
                
                'Calculating Option Realized
                txtOR.Text = Val(txtOR.Text) + Val(rsQ!OPTIONVAL)
                FUTUREQTYS = Val(rsQ!OPTIONQTY)
            
            Else

                curOptionQty = Val(rsQ!OPTIONQTY)
                curOptionVal = Val(rsQ!OPTIONVAL)
                lvItem.SubItems(2) = Val(lvItem.SubItems(2)) + curOptionQty
                If intRate = 2 Then
                    lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, "0.0000")
                Else
                    lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, strPubFormatTraded)
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

            
            If intRate = 2 Then
                Call CurrencyCalculation(lvItem, rsQ!Strike, rsQ!CP, lngColor)
            Else
                Call GreeksCalculation(lvItem, rsQ!Strike, rsQ!CP, lngColor)
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

'Calculate Todays Option
Set rsQ = New ADODB.Recordset
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then

    If intRate = 2 Then
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryUnitsTradedCurrencyTodaysStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryUnitsTradedCurrencyTodaysWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryUnitsTradedCurrencyTodays"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        
    Else
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryUnitsTradedTodaysStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryUnitsTradedTodaysWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryUnitsTradedTodays"
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        
    End If
Else
    If intRate = 2 Then
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryUnitsTradedUserCodeCurrencyTodaysStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryUnitsTradedUserCodeCurrencyTodaysWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryUnitsTradedUserCodeCurrencyTodays"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        
    Else
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryUnitsTradedUserCodeWiseTodaysStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryUnitsTradedUserCodeWiseTodaysWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryUnitsTradedUserCodeWiseTodays"
            cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
            cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
            cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
        End If
        
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
            
            Set lvItem = lstDetailsTodays.ListItems.Add(, , rsQ!Strike)
            lvItem.SubItems(1) = rsQ!CP


            If rsQ!OPTIONQTY = 0 Then
                lvItem.SubItems(2) = 0
                lvItem.SubItems(3) = 0
                
                'Calculating Option Realized
                txtTodaysOR.Text = Val(txtTodaysOR.Text) + Val(rsQ!OPTIONVAL)
                FUTUREQTYS = Val(rsQ!OPTIONQTY)
            Else

                curOptionQty = Val(rsQ!OPTIONQTY)
                curOptionVal = Val(rsQ!OPTIONVAL)
                lvItem.SubItems(2) = Val(lvItem.SubItems(2)) + curOptionQty
                If intRate = 2 Then
                    lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, "0.0000")
                Else
                    lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, strPubFormatTraded)
                End If
            End If
          
            If intRate = 2 Then
                Call CurrencyCalculationTodays(lvItem, rsQ!Strike, rsQ!CP)
            Else
                Call GreeksCalculationTodays(lvItem, rsQ!Strike, rsQ!CP)
            End If
            
        End If
        rsQ.MoveNext
    Wend
    
    If intRate = 2 Then
        txtTodaysOR.Text = Round(-Val(txtTodaysOR.Text) * curLotSize, 4)
        txtTodaysOU.Text = Round(Val(txtTodaysOU.Text) * curLotSize, 4)
        txtTodaysPremium.Text = Round(-Val(txtTodaysPremium.Text) * curLotSize, 4)
    Else
        txtTodaysOR.Text = Round(-Val(txtTodaysOR.Text), 0)
        txtTodaysOU.Text = Round(Val(txtTodaysOU.Text), 0)
        txtTodaysPremium.Text = Round(-Val(txtTodaysPremium.Text), 0)
    End If
End If
rsQ.Close
Set rsQ = Nothing
Set cmd = Nothing

If gstrSortByCallPut = "Y" Then 'Added By SSP 7/11/2011
    lstDetailsTodays.SortKey = 1
    lstDetailsTodays.Sorted = True
Else
    lstDetailsTodays.Sorted = False
End If
'Calculate Future
If intRate = 2 Then
    Set cmd = New ADODB.Command
    FUTURESA = 0
    FUTURESD = 0
    FUTURESQTYA = 0
    FUTURESQTYD = 0
    cmd.ActiveConnection = con
    cmd.CommandType = adCmdStoredProc
    If userinfo.SELUSERCD = "" Then
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryFutureCurrencyStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(strPortfolioName, Len(strPortfolioName) - 7))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryFutureCurrencyWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(strPortfolioName, Len(strPortfolioName) - 7))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryFutureCurrency"
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(strPortfolioName, Len(strPortfolioName) - 7))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        End If
        
    Else
        If mintStrategyID > 0 Then
            cmd.CommandText = "QryFutureUserCodeWiseCurrencyStrategywise"
            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(strPortfolioName, Len(strPortfolioName) - 7))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
            cmd.CommandText = "QryFutureUserCodeWiseCurrencyWithNoneStrategy"
            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(strPortfolioName, Len(strPortfolioName) - 7))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        Else
            cmd.CommandText = "QryFutureUserCodeWiseCurrency"
            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(strPortfolioName, Len(strPortfolioName) - 7))
            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
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
    FUTURES = FUTURESA + FUTURESD
    FUTURES = FUTURESA + FUTURESD
    FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)
    If FUTUREQTYS <> 0 Then
        'Trade Future
        txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 4)
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
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesForCloseOutInDateRangeStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
                        
                    Else
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRangeStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRangeWithNoneStrategy"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                        Else
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutInDateRange"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strPrevExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                        End If
                        
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
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesForCloseOutStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
                        
                    Else
                        If mintStrategyID > 0 Then
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutStrategywise"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                            cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                        ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
                            cmd.CommandText = "QryFuturesUserCodeForCloseOutWithNoneStrategy"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                        Else
                            cmd.CommandText = "QryFuturesUserCodeForCloseOut"
                            cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                            cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                            cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                        End If
                        
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
                If mintStrategyID > 0 Then
                    cmd.CommandText = "QryFutureInDateRangeStrategywise"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
                
            Else
                If mintStrategyID > 0 Then
                    cmd.CommandText = "QryFutureUserCodeInDateRangeStrategywise"
                    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adVarChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT1", adDate, adParamInput, 8, Format(CDate(strExpiryDate), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("TradeDT2", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
                    cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
                    cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
                ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
                
            Else
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
                
            End If
            Set rsFuture = New ADODB.Recordset
            Set rsFuture = cmd.Execute
            If rsFuture.EOF = False Then
                Do Until rsFuture.EOF
               ' Commented for null value 24/11/2016
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
                    'End If
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
            
        Else
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
'
'
'Debug.Print "3"
'Debug.Print Now


'Calculating Stock
Set cmd = New ADODB.Command
STOCKSA = 0
STOCKSD = 0
STOCKSQTYA = 0
STOCKSQTYD = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    If mintStrategyID > 0 Then
        cmd.CommandText = "QryStockStrategywise"
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
    ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
    
Else
    If mintStrategyID > 0 Then
        cmd.CommandText = "QryStockUserCodeWiseStrategywise"
        cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
        cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
        cmd.Parameters.Append cmd.CreateParameter("StrategyID", adInteger, adParamInput, 4, mintStrategyID)
    ElseIf mintStrategyID = -1 Then   ''Added by AAP on 16/11/2012
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
            'End If
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
    
    If intRate = 2 Then
        'Net Trade
        txtNTrade.Text = Round(cur3, 4)
    Else
        'Net Trade
        txtNTrade.Text = Round(cur3, 2)
    End If
End If

'Todays Trade
cur1 = FUTURESA + STOCKSA '+ FUTURESD + STOCKSD
curTAvg = FUTURESQTYA + STOCKSQTYA '+ FUTURESQTYD + STOCKSQTYD
If curTAvg <> 0 Then
    curTTrade = Round(cur1 / curTAvg, 2)
End If


If Val(txtNTrade.Text) = 0 Then
    'Future Stock Realized
    txtFSR.Text = FUTURESA + STOCKSA + FUTURESD + STOCKSD
End If

dblFUTURES = FUTURESQTYA + STOCKSQTYA
If dblFUTURES = 0 Then
    'Future Stock Realized
    If intRate = 2 Then
        txtTodaysFSR.Text = Round((-(FUTURESA + STOCKSA) * curLotSize), 0) '+ FUTURESD + STOCKSD
    Else
        txtTodaysFSR.Text = Round(-(FUTURESA + STOCKSA), 0) '+ FUTURESD + STOCKSD
    End If
End If
If intRate = 2 Then
    txtTodaysFSU.Text = Round((-((curTAvg * (curTTrade - Val(txtRate.Text)))) * curLotSize), 0)
    txtTodaysBal.Text = Round(Val(txtTodaysFSR.Text) + Val(txtTodaysFSU.Text) + Val(txtTodaysPremium.Text) + Val(txtTodaysOR.Text) + Val(txtTodaysOU.Text), 4)
Else
    txtTodaysFSU.Text = Round(-((curTAvg * (curTTrade - Val(txtRate.Text)))), 0)
    txtTodaysBal.Text = Round(Val(txtTodaysFSR.Text) + Val(txtTodaysFSU.Text) + Val(txtTodaysPremium.Text) + Val(txtTodaysOR.Text) + Val(txtTodaysOU.Text), 0)
End If

'txtTodaysM2MBalanceWithoutExpense.Text
If strPubIsFormatAllowed = "1" Then
    'Todays
    txtTodaysBal.Text = FormatValue(txtTodaysBal)
    txtTodaysPremium.Text = FormatValue(txtTodaysPremium)
    txtTodaysFSR.Text = FormatValue(txtTodaysFSR)
    txtTodaysOR.Text = FormatValue(txtTodaysOR)
    txtTodaysFSU.Text = FormatValue(txtTodaysFSU)
    txtTodaysOU.Text = FormatValue(txtTodaysOU)
End If

Exit Sub
ErrHand:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error-Calculation"

End Sub

Public Sub CalculationForLTP()
'New Code is included for optimiz~n
'25/1/2009

On Error GoTo ErrHand

'lstDetails1.ListItems.Clear
Dim strQ As String

Dim rsQ As ADODB.Recordset
Dim rsOR As ADODB.Recordset

Dim cmd As ADODB.Command
Dim lvItem As ListItem
Dim lngColor As Long
Dim intStrike As Integer

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

Set rsQ = New ADODB.Recordset
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc

txtOR.Text = "0"
txtNTrade.Text = "0"
txtTradeFutu.Text = "0"
txtFSR.Text = "0"
txtTFutu.Text = "0"
txtPFutu.Text = "0"
txtTradeStock.Text = "0"
txtTStock.Text = "0"
txtPStock.Text = "0"


For intStrike = 1 To lstDetails1.ListItems.count
    If lstDetails1.ListItems(intStrike).SubItems(1) = "C" Then
        lngColor = lngColor1
    ElseIf rsQ!CP = "P" Then
        lngColor = lngColor2
    End If
    Call GreeksCalculation(lvItem, rsQ!Strike, rsQ!CP, lngColor)

Next


'''This Procedure is used to fill all strikes present in the ssytem
'''This Procedure is also used to calculate Option Realized
''If userinfo.SELUSERCD = "" Then
''    cmd.CommandText = "QryOrderedUnitsTradedSummary"
''    cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
''    cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7)))
''    cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
''Else
''    cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
''    cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
''    cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
''    cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
''    cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))
''End If
''lngColor = &H2E4E30

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
            
            
            Call GreeksCalculation(lvItem, rsQ!Strike, rsQ!CP, lngColor)
            
            If rsQ!OPTIONQTY = 0 Then
                lvItem.SubItems(2) = 0
                lvItem.SubItems(3) = 0
            Else
                curOptionQty = Val(rsQ!OPTIONQTY)
                curOptionVal = Val(rsQ!OPTIONVAL)
                lvItem.SubItems(2) = Val(lvItem.SubItems(2)) + curOptionQty
                lvItem.SubItems(3) = Format(curOptionVal / curOptionQty, strPubFormatTraded) 'Round(curOptionVal / curOptionQty, 2)

                lvItem.SubItems(8) = -(Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(7) / 100))
                lvItem.SubItems(10) = Val(lvItem.SubItems(2)) * (-Val(lvItem.SubItems(9)))
                lvItem.SubItems(12) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(11))
                lvItem.SubItems(14) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(13))
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

'Calculate Future
Set cmd = New ADODB.Command
FUTURESA = 0
FUTURESD = 0
FUTURESQTYA = 0
FUTURESQTYD = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryFuture"
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryFutureUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If

Set rsFuture = New ADODB.Recordset
Set rsFuture = cmd.Execute
If rsFuture.EOF = False Then
    Do Until rsFuture.EOF
'        If Trim$(rsFuture!CP) = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
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
'        End If
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

'Calculating Stock
Set cmd = New ADODB.Command
STOCKSA = 0
STOCKSD = 0
STOCKSQTYA = 0
STOCKSQTYD = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryStock"
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryStockUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
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
    txtNTrade.Text = Round(cur3, 2)
End If

If Val(txtNTrade.Text) = 0 Then
    'Future Stock Realized
    txtFSR.Text = FUTURESA + STOCKSA + FUTURESD + STOCKSD
End If

Exit Sub
ErrHand:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error-Calculation"

End Sub













Private Sub Timer2_Timer()
Dim lngTimeInterval As Long
Dim lngRateTimeInterval As Long


If CDate(strPubStartTime) <= CDate(FormatDateTime(Now, vbLongTime)) And CDate(strPubEndTime) <= CDate(FormatDateTime(Now, vbLongTime)) Then
    Timer2.Enabled = False
'    Timer2.Interval = 1000
'    Timer2.Enabled = True
'    cmdManual.Visible = False
'    cmdAuto.Visible = True
    Exit Sub
End If

If Right(strPubTimeInetrval, 4) = "Sec." Then
    lngTimeInterval = Left(strPubTimeInetrval, Len(strPubTimeInetrval) - 4)
ElseIf Right(strPubTimeInetrval, 4) = "Min." Then
    lngTimeInterval = Left(strPubTimeInetrval, Len(strPubTimeInetrval) - 4) * 60
End If

intInterval = DateDiff("s", dtStartTime, dtEndTime)
dtEndTime = Now

If intInterval >= lngTimeInterval Then
    Timer2.Enabled = False
'    If blnIsCaptureStarted = True Then
'        Call StopCaptureOnForm
'    End If
    Call MDIMain.UploadFile
    
    'Added code by ssk dated 16-02-2016
    '-------------------------------------------------------
'     Dim iniFilePath As String
'    Dim lpSectionName As String
'    Dim lpKeyName As String
'    Dim lpValue As String
'    Dim lpFileName As String
'    Dim lpReturnedString As String
'    Dim nsize As Long
'
'    Dim strFolderPath As String
'    Dim strFilePathINI As String
'    Dim strUserNm As String
'
'    'used for db checking
'    Dim fso As New FileSystemObject
'    Dim strDbPath As String
'
'    'lblTime.Caption = "Updating Files.."
'
'    strFilePathINI = App.path & "\" & "FileSettings.ini"
'
'    lpFileName = strFilePathINI
'
'    'lpReturnedString = Space$(255)
'    lpReturnedString = Space$(500)
'    nsize = Len(lpReturnedString)
'    nsize = GetPrivateProfileString("Filepathsetting", "Path", _
'       " ", lpReturnedString, 250, lpFileName)
'    lpReturnedString = Mid(lpReturnedString, 1, nsize)
'    strFolderPath = lpReturnedString
'
'    'set folder path in variable
'    lpValue = Trim(strFolderPath)
'
'    lpReturnedString = Space$(500)
'    nsize = Len(lpReturnedString)
'    nsize = GetPrivateProfileString("UserDetails", "UserName", _
'       " ", lpReturnedString, 250, lpFileName)
'    lpReturnedString = Mid(lpReturnedString, 1, nsize)
'    strUserNm = lpReturnedString
'
'    strDbPath = App.path & "\Delta.mdb"
'
'    'If (FSO.FolderExists(lpValue) = True) Then
'            'Function calling to update Calculated IV database value in file
'            'Call readCalculatedIv(lpValue)
'            Call readCalculateIVUsingFSO(lpValue, UCase(strUserNm))
'
'            'Function calling to update RepFullSheetM database value in file
'            'Call readRepFullSheetM(lpValue)
'            Call readStrikePortfolioUsingFSO(lpValue, UCase(strUserNm))
'    'End If
'
    '------------------------------------------------------
    
'    If blnIsCaptureStarted = True Then
'        Call StartCaptureOnForm
'    End If
    
'    Call MDIMain.UploadFile
    intInterval = 0
    dtEndTime = Now
    dtStartTime = Now
    
    Timer2.Enabled = True
End If




End Sub



Private Sub txtCall_GotFocus()
txtCall.SelStart = 0
txtCall.SelLength = Len(txtCall.Text)

txtCall.TabStop = True
End Sub

Private Sub txtCall_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab And Shift = 1 Then
    txtRate.SetFocus
ElseIf KeyCode = vbKeyTab Then
    txtPut.SetFocus
ElseIf KeyCode = vbKeyDown Then
    lstDetails1.SetFocus
End If
End Sub


Private Sub txtCall_KeyPress(KeyAscii As Integer)
Dim strQ As String
Dim rsQ As ADODB.Recordset

If Not (KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 13 Or (KeyAscii >= 48 And KeyAscii <= 57)) Then KeyAscii = 0

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
    
    Set rsQ = New ADODB.Recordset
    strQ = "Select * from RepFullSheetM WHERE MY_STRDESC='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 1) & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    If rsQ.EOF = False Then
        While Not rsQ.EOF
            rsQ!Call = txtCall.Text
            dblPreviousCall = Val(txtCall.Text)
            rsQ.Update
            rsQ.MoveNext
        Wend
    End If
    rsQ.Close
    Set rsQ = Nothing
    
    Call ClearAll
'    Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
End If
End Sub

Private Sub txtCall_LostFocus()
Dim strQ As String
Dim rsQ As ADODB.Recordset

If Val(txtCall.Text) = 0 And Trim$(txtCall.Text) <> "" Then
    MsgBox "Call Volatility can not be a 0 value!!!" & vbCrLf & "Inserting last stored Call Volatility.", vbCritical, "Wrong Call Volatility"
    txtCall.Text = dblPreviousCall
    Exit Sub
ElseIf Trim$(txtCall.Text) = "" Then
    MsgBox "Call Volatility can not be empty!!!" & vbCrLf & "Inserting last stored Call Volatility.", vbCritical, "Empty Call Volatility"
    txtCall.Text = dblPreviousCall
    Exit Sub
End If

Set rsQ = New ADODB.Recordset
strQ = "Select * from RepFullSheetM WHERE MY_STRDESC='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 1) & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = False Then
    While Not rsQ.EOF
        rsQ!Call = txtCall.Text
        dblPreviousCall = Val(txtCall.Text)
        rsQ.Update
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing
  
Call ClearAll
'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary


txtCall.TabStop = False
End Sub

Private Sub txtChange_Change()
'Dim strChange As String
'Dim intCount As Integer
'strChange = Trim$(txtChange.Text)
'If strChange = "" Then Exit Sub
'
'For intCount = 0 To cboPortfolioList.ListCount - 1
'    If Len(strChange) < Len(cboPortfolioList.List(intCount)) Then
'        If UCase(Left(cboPortfolioList.List(intCount), Len(strChange))) = UCase(strChange) Then
'            cboPortfolioList.Text = cboPortfolioList.List(intCount)
'            GoTo Exit_Proc
'        End If
'    End If
'Next
'
'If Len(strChange) > 1 Then
'    strChange = Right(strChange, 1) ' Trim$(Text1.Text)
'    If strChange = "" Then Exit Sub
'    txtChange.Text = strChange
'End If
'
'
''For intCount = 0 To cboPortfolioList.ListCount - 1
''    If Len(strChange) < Len(cboPortfolioList.List(intCount)) Then
''        If UCase(Left(cboPortfolioList.List(intCount), Len(strChange))) = UCase(strChange) Then
''            cboPortfolioList.Text = cboPortfolioList.List(intCount)
''            txtChange.Text = strChange
''            GoTo Exit_Proc
''        End If
''    End If
''Next
'
'txtChange.Text = ""
'Exit_Proc:
Dim strChange As String

Dim intCount As Integer
strChange = Trim$(txtChange.Text)
'Debug.Print strChange
If strChange = "" Then Exit Sub

ComeHere:
For intCount = 0 To cboPortfolioList.ListCount - 1
    If Len(strChange) < Len(cboPortfolioList.List(intCount)) Then
        If UCase(Left(cboPortfolioList.List(intCount), Len(strChange))) = UCase(strChange) Then
            cboPortfolioList.Text = cboPortfolioList.List(intCount)
'            cboPortfolioList.SelText
            strSelectedPortfolio = cboPortfolioList.Text
            GoTo Exit_Proc
        End If
    End If
Next

If Len(strChange) > 1 Then
    strChange = Right(strChange, 1) ' Trim$(Text1.Text)
    If strChange = "" Then Exit Sub
End If


For intCount = 0 To cboPortfolioList.ListCount - 1
    If Len(strChange) < Len(cboPortfolioList.List(intCount)) Then
        If UCase(Left(cboPortfolioList.List(intCount), Len(strChange))) = UCase(strChange) Then
            cboPortfolioList.Text = cboPortfolioList.List(intCount)
            txtChange.Text = strChange
            GoTo Exit_Proc
        End If
    End If
Next


'If Len(strChange) > 1 Then
'    strChange = Right(strChange, 1) ' Trim$(Text1.Text)
'    If strChange = "" Then
'       txtChange.Text = ""
'    End If
'    GoTo ComeHere
'End If
Exit_Proc:
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

Private Sub txtDays_Change()
If Val(txtDays.Text) = 0 Or txtDays.Text = "" Then
    txtTempDays.Text = 1
Else
    txtTempDays.Text = Val(txtDays.Text)
End If

End Sub

Private Sub txtDays_GotFocus()
txtDays.SelStart = 0
txtDays.SelLength = Len(txtDays.Text)

txtDays.TabStop = True
End Sub

Private Sub txtDays_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab And Shift = 1 Then
'    MDIMain.blnPortfoliosLoading = False
'    MDIMain.cmbPortfolioList.SetFocus
    cboPortfolioList.SetFocus
ElseIf KeyCode = vbKeyTab Then
    txtRate.SetFocus
ElseIf KeyCode = vbKeyDown Then
    lstDetails1.SetFocus
End If
End Sub

Private Sub txtDays_KeyPress(KeyAscii As Integer)
If Not (KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 13 Or (KeyAscii >= 48 And KeyAscii <= 57)) Then KeyAscii = 0

If KeyAscii = 13 Then

    If Val(txtDays.Text) < 0 Then
        txtDays.Text = 0
    End If
    'Updated By SSP 10/11/2011
    txtDate.Text = Format(DateAdd("d", -GetIntPart(Val(txtDays.Text)), CDate(txtExpDt.Text)), "dd-MMM-yyyy")

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
'Updated By SSP 10/11/2011
txtDate.Text = Format(DateAdd("d", -GetIntPart(Val(txtDays.Text)), CDate(txtExpDt.Text)), "dd-MMM-yyyy")
If blnIsLoading = False Then
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
    
End If

txtDays.TabStop = False
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

txtPut.TabStop = True
End Sub

Private Sub txtPut_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = vbKeyTab And Shift = 1 Then
'    txtCall.SetFocus
'ElseIf KeyCode = vbKeyTab Then
'    cboPortfolioList.SetFocus
'ElseIf KeyCode = vbKeyDown Then
'    lstDetails1.SetFocus
'End If
If KeyCode = vbKeyTab And Shift = 1 Then
    txtCall.SetFocus
ElseIf KeyCode = vbKeyTab Then
'    MDIMain.blnPortfoliosLoading = False
'    MDIMain.cmbPortfolioList.SetFocus
    If intRate = 2 Then
        If cboUserCd.Visible = True Then
            cboUserCd.SetFocus
        Else
            txtDomesticIntRate.SetFocus
        End If
    Else
        If cboUserCd.Visible = True Then
            cboUserCd.SetFocus
        Else
            If cboPortfolioList.Visible = True Then
                cboPortfolioList.SetFocus
            Else
                txtDays.SetFocus
            End If
        End If
    End If
ElseIf KeyCode = vbKeyDown Then
    lstDetails1.SetFocus
End If
End Sub


Private Sub txtput_KeyPress(KeyAscii As Integer)
Dim strQ As String
Dim rsQ As ADODB.Recordset
If Not (KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 13 Or (KeyAscii >= 48 And KeyAscii <= 57)) Then KeyAscii = 0


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
    
    Set rsQ = New ADODB.Recordset
    strQ = "Select * from RepFullSheetM WHERE MY_STRDESC='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 1) & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    If rsQ.EOF = False Then
        While Not rsQ.EOF
            rsQ!Put = txtPut.Text
            dblPreviousPut = Val(txtPut.Text)
            rsQ.Update
            rsQ.MoveNext
        Wend
    End If
    rsQ.Close
    Set rsQ = Nothing
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
    
End If
End Sub

Private Sub txtPut_LostFocus()
Dim strQ As String
Dim rsQ As ADODB.Recordset

If Val(txtPut.Text) = 0 And Trim$(txtPut.Text) <> "" Then
    MsgBox "Put Volatility can not be a 0 value!!!" & vbCrLf & "Inserting last stored Put Volatility.", vbCritical, "Wrong Put Volatility"
    txtPut.Text = dblPreviousPut
    Exit Sub
ElseIf Trim$(txtPut.Text) = "" Then
    MsgBox "Put Volatility can not be empty!!!" & vbCrLf & "Inserting last stored Put Volatility.", vbCritical, "Empty Put Volatility"
    txtPut.Text = dblPreviousPut
    Exit Sub
End If

Set rsQ = New ADODB.Recordset
strQ = "Select * from RepFullSheetM WHERE MY_STRDESC='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 1) & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = False Then
    While Not rsQ.EOF
        rsQ!Put = txtPut.Text
        dblPreviousPut = Val(txtPut.Text)
        rsQ.Update
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing

Call ClearAll
'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary

txtPut.TabStop = False
End Sub



Public Sub ClearAll()

txtSquareOffExpense.Text = 0
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

txtOptionUN.Text = 0
txtBalanceN.Text = 0

txtM2MTodays.Text = "0"
txtM2MTodaysOU.Text = "0"

txtTotal_RhoVal.Text = "0"
'txtDomesticIntRate.Text = 0
'txtForeignIntRate.Text = 0
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
End Sub
Public Sub FillNewPortfolioCombo()
Dim strPortfolio As String
Dim rsPortfolio As ADODB.Recordset

If blnIsCurrencyFeatureEnabled = True Then
    If blnIsHidePortfolio = True Then
        strPortfolio = "Select * From RepFullSheetM Where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd) and Balance=0  Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
    Else
        strPortfolio = "Select * From RepFullSheetM Where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd) Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
    End If
Else
    If blnIsHidePortfolio = True Then
        strPortfolio = "Select * From RepFullSheetM Where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd) and Balance=0 and intrate<>2 Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
    Else
        strPortfolio = "Select * From RepFullSheetM Where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd) and intrate<>2 Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
    End If
End If

Set rsPortfolio = New ADODB.Recordset
rsPortfolio.Open strPortfolio, con, adOpenStatic, adLockReadOnly
If rsPortfolio.EOF = False Then
    cboPortfolioList.Clear
    While Not rsPortfolio.EOF
        cboPortfolioList.AddItem rsPortfolio!My_strDesc
        rsPortfolio.MoveNext
    Wend
End If
rsPortfolio.Close
Set rsPortfolio = Nothing

End Sub
Private Sub txtRate_GotFocus()
txtRate.SelStart = 0
txtRate.SelLength = Len(txtRate.Text)

txtRate.TabStop = True
End Sub

Private Sub txtRate_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab And Shift = 1 Then
    txtDays.SetFocus
ElseIf KeyCode = vbKeyTab Then
    txtCall.SetFocus
ElseIf KeyCode = vbKeyDown Then
    lstDetails1.SetFocus
End If
End Sub


Private Sub txtRate_KeyPress(KeyAscii As Integer)
Dim strQ As String
Dim rsQ As ADODB.Recordset

If Not (KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 13 Or (KeyAscii >= 48 And KeyAscii <= 57)) Then KeyAscii = 0

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
    
    If blnMarketDynamics = False Then
        If strPubApplyCurrentMonthsFutureRate = "Y" Then
            Set rsQ = New ADODB.Recordset
            strQ = "Update RepFullSheetM Set MkPrice=" & Val(txtRate.Text) & " WHERE Left(MY_STRDESC,Len(My_StrDesc)-7)='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8) & "'" ' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
            rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
            Set rsQ = Nothing
        Else
            Set rsQ = New ADODB.Recordset
            strQ = "Select * from RepFullSheetM WHERE MY_STRDESC='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 1) & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
            rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
            If rsQ.EOF = False Then
                While Not rsQ.EOF
                    rsQ!MkPrice = txtRate.Text
                    dblPreviousRate = Val(txtRate.Text)
                    rsQ.Update
                    rsQ.MoveNext
                Wend
            End If
            rsQ.Close
            Set rsQ = Nothing
        End If
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

'If blnIsLoading = False Then

    If blnMarketDynamics = False Then
        If strPubApplyCurrentMonthsFutureRate = "Y" Then
            Set rsQ = New ADODB.Recordset
            strQ = "Update RepFullSheetM Set MkPrice=" & Val(txtRate.Text) & " WHERE Left(MY_STRDESC,Len(My_StrDesc)-7)='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8) & "'" ' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
            rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
            Set rsQ = Nothing
        Else
            Set rsQ = New ADODB.Recordset
            strQ = "Select * from RepFullSheetM WHERE MY_STRDESC='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 1) & "' AND CDATE(expdt) ='" & Format(CDate(txtExpDt.Text), "dd/mm/yyyy") & "'"
            rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
            If rsQ.EOF = False Then
                While Not rsQ.EOF
                    rsQ!MkPrice = txtRate.Text
                    dblPreviousRate = Val(txtRate.Text)
                    rsQ.Update
                    rsQ.MoveNext
                Wend
            End If
            rsQ.Close
            Set rsQ = Nothing
        End If
    End If
    
    Call ClearAll
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
'End If

txtRate.TabStop = False
End Sub



Public Sub ChangeColor()
'Balance
Dim lngColorNew As Long

lngColorNew = &HFFFF00

If Val(txtPremium.Text) < 0 Then
    txtPremium.ForeColor = vbRed
Else
    txtPremium.ForeColor = lngColorNew
End If

If Val(txtFSR.Text) < 0 Then
    txtFSR.ForeColor = vbRed
Else
    txtFSR.ForeColor = lngColorNew
End If

If Val(txtOR.Text) < 0 Then
    txtOR.ForeColor = vbRed
Else
    txtOR.ForeColor = lngColorNew
End If

If Val(txtFSU.Text) < 0 Then
    txtFSU.ForeColor = vbRed
Else
    txtFSU.ForeColor = lngColorNew
End If

If Val(txtOU.Text) < 0 Then
    txtOU.ForeColor = vbRed
Else
    txtOU.ForeColor = lngColorNew
End If

If Val(txtBalance.Text) < 0 Then
    txtBalance.ForeColor = vbRed
Else
    txtBalance.ForeColor = lngColorNew
End If

'Expense
If Val(txtExposure.Text) < 0 Then
    txtExposure.ForeColor = vbRed
Else
    txtExposure.ForeColor = lngColorNew
End If


If Val(txtIntMargin.Text) < 0 Then
    txtIntMargin.ForeColor = vbRed
Else
    txtIntMargin.ForeColor = lngColorNew
End If

If Val(txtExp_Margin.Text) < 0 Then
    txtExp_Margin.ForeColor = vbRed
Else
    txtExp_Margin.ForeColor = lngColorNew
End If

If Val(txtEquity.Text) < 0 Then
    txtEquity.ForeColor = vbRed
Else
    txtEquity.ForeColor = lngColorNew
End If

If Val(txtCashTotal.Text) < 0 Then
    txtCashTotal.ForeColor = vbRed
Else
    txtCashTotal.ForeColor = lngColorNew
End If

If Val(txtPrvBalance.Text) < 0 Then
    txtPrvBalance.ForeColor = vbRed
Else
    txtPrvBalance.ForeColor = lngColorNew
End If

If Val(txtTExpense.Text) < 0 Then
    txtTExpense.ForeColor = vbRed
Else
    txtTExpense.ForeColor = lngColorNew
End If

If Val(txtTotal.Text) < 0 Then
    txtTotal.ForeColor = vbRed
Else
    txtTotal.ForeColor = lngColorNew
End If

If Val(txtNetBalance.Text) < 0 Then
    txtNetBalance.ForeColor = vbRed
Else
    txtNetBalance.ForeColor = lngColorNew
End If

'
If Val(txtInShares.Text) < 0 Then
    txtInShares.ForeColor = vbRed
Else
    txtInShares.ForeColor = lngColorNew
End If

If Val(txtTotal_DelVal.Text) < 0 Then
    txtTotal_DelVal.ForeColor = vbRed
Else
    txtTotal_DelVal.ForeColor = lngColorNew
End If

If Val(txtTotal_ThetaVal.Text) < 0 Then
    txtTotal_ThetaVal.ForeColor = vbRed
Else
    txtTotal_ThetaVal.ForeColor = lngColorNew
End If

If Val(txtTotal_VGVal.Text) < 0 Then
    txtTotal_VGVal.ForeColor = vbRed
Else
    txtTotal_VGVal.ForeColor = lngColorNew
End If

If Val(txtTotal_GMVal.Text) < 0 Then
    txtTotal_GMVal.ForeColor = vbRed
Else
    txtTotal_GMVal.ForeColor = lngColorNew
End If


If Val(txtTotal_RhoVal.Text) < 0 Then
    txtTotal_RhoVal.ForeColor = vbRed
Else
    txtTotal_RhoVal.ForeColor = lngColorNew
End If

'Stock
If Val(txtPStock.Text) < 0 Then
    txtPStock.ForeColor = vbRed
Else
    txtPStock.ForeColor = lngColorNew
End If

If Val(txtNStock.Text) < 0 Then
    txtNStock.ForeColor = vbRed
Else
    txtNStock.ForeColor = lngColorNew
End If

If Val(txtTStock.Text) < 0 Then
    txtTStock.ForeColor = vbRed
Else
    txtTStock.ForeColor = lngColorNew
End If

If Val(txtTradeStock.Text) < 0 Then
    txtTradeStock.ForeColor = vbRed
Else
    txtTradeStock.ForeColor = lngColorNew
End If

'Future
If Val(txtPFutu.Text) < 0 Then
    txtPFutu.ForeColor = vbRed
Else
    txtPFutu.ForeColor = lngColorNew
End If

If Val(txtNFutu.Text) < 0 Then
    txtNFutu.ForeColor = vbRed
Else
    txtNFutu.ForeColor = lngColorNew
End If

If Val(txtTFutu.Text) < 0 Then
    txtTFutu.ForeColor = vbRed
Else
    txtTFutu.ForeColor = lngColorNew
End If

If Val(txtTradeFutu.Text) < 0 Then
    txtTradeFutu.ForeColor = vbRed
Else
    txtTradeFutu.ForeColor = lngColorNew
End If

'Average
If Val(txtPAvg.Text) < 0 Then
    txtPAvg.ForeColor = vbRed
Else
    txtPAvg.ForeColor = lngColorNew
End If

If Val(txtTAvg.Text) < 0 Then
    txtTAvg.ForeColor = vbRed
Else
    txtTAvg.ForeColor = lngColorNew
End If

If Val(txtNAvg.Text) < 0 Then
    txtNAvg.ForeColor = vbRed
Else
    txtNAvg.ForeColor = lngColorNew
End If

If Val(txtNTrade.Text) < 0 Then
    txtNTrade.ForeColor = vbRed
Else
    txtNTrade.ForeColor = lngColorNew
End If

'C
If Val(txtDetalC.Text) < 0 Then
    txtDetalC.ForeColor = vbRed
Else
    txtDetalC.ForeColor = lngColorNew
End If

If Val(txtThetaC.Text) < 0 Then
    txtThetaC.ForeColor = vbRed
Else
    txtThetaC.ForeColor = lngColorNew
End If

If Val(txtVegaC.Text) < 0 Then
    txtVegaC.ForeColor = vbRed
Else
    txtVegaC.ForeColor = lngColorNew
End If

If Val(txtGammaC.Text) < 0 Then
    txtGammaC.ForeColor = vbRed
Else
    txtGammaC.ForeColor = lngColorNew
End If

If Val(txtCUnits.Text) < 0 Then
    txtCUnits.ForeColor = vbRed
Else
    txtCUnits.ForeColor = lngColorNew
End If


'P
If Val(txtDetalP.Text) < 0 Then
    txtDetalP.ForeColor = vbRed
Else
    txtDetalP.ForeColor = lngColorNew
End If

If Val(txtThetaP.Text) < 0 Then
    txtThetaP.ForeColor = vbRed
Else
    txtThetaP.ForeColor = lngColorNew
End If

If Val(txtVegaP.Text) < 0 Then
    txtVegaP.ForeColor = vbRed
Else
    txtVegaP.ForeColor = lngColorNew
End If

If Val(txtGammaP.Text) < 0 Then
    txtGammaP.ForeColor = vbRed
Else
    txtGammaP.ForeColor = lngColorNew
End If

If Val(txtPUnits.Text) < 0 Then
    txtPUnits.ForeColor = vbRed
Else
    txtPUnits.ForeColor = lngColorNew
End If

'Total
If Val(txtTot_Delta.Text) < 0 Then
    txtTot_Delta.ForeColor = vbRed
Else
    txtTot_Delta.ForeColor = lngColorNew
End If

If Val(txtTot_Theta.Text) < 0 Then
    txtTot_Theta.ForeColor = vbRed
Else
    txtTot_Theta.ForeColor = lngColorNew
End If

If Val(txtTot_Vega.Text) < 0 Then
    txtTot_Vega.ForeColor = vbRed
Else
    txtTot_Vega.ForeColor = lngColorNew
End If

If Val(txtTot_Gamma.Text) < 0 Then
    txtTot_Gamma.ForeColor = vbRed
Else
    txtTot_Gamma.ForeColor = lngColorNew
End If

If Val(txtTUnits.Text) < 0 Then
    txtTUnits.ForeColor = vbRed
Else
    txtTUnits.ForeColor = lngColorNew
End If

End Sub

Public Sub ChangeColorM2M()
'Balance
Dim lngColorNew As Long

lngColorNew = &HFFFF00

If Val(txtTodaysBal.Text) < 0 Then
    txtTodaysBal.ForeColor = vbRed
Else
    txtTodaysBal.ForeColor = lngColorNew
End If

If Val(txtM2MTodays.Text) < 0 Then
    txtM2MTodays.ForeColor = vbRed
Else
    txtM2MTodays.ForeColor = lngColorNew
End If

If Val(txtBalanceN.Text) < 0 Then
    txtBalanceN.ForeColor = vbRed
Else
    txtBalanceN.ForeColor = lngColorNew
End If

If Val(txtM2MTodaysOU.Text) < 0 Then
    txtM2MTodaysOU.ForeColor = vbRed
Else
    txtM2MTodaysOU.ForeColor = lngColorNew
End If

If Val(txtOptionUN.Text) < 0 Then
    txtOptionUN.ForeColor = vbRed
Else
    txtOptionUN.ForeColor = lngColorNew
End If


End Sub

Public Sub CalculateSummary()
Dim strQ As String
Dim rsQ As ADODB.Recordset



'For intCount = 1 To lstDetails1.ListItems.count
'    If lstDetails1.ListItems(intCount).SubItems(1) = "C" And Val(lstDetails1.ListItems(intCount).SubItems(2)) <> 0 Then
'        txtDetalC.Text = Val(txtDetalC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(10))
'        txtThetaC.Text = Val(txtThetaC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(12))
'        txtVegaC.Text = Val(txtVegaC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(14))
'        txtGammaC.Text = Val(txtGammaC.Text) + Val(lstDetails1.ListItems(intCount).SubItems(16))
'        txtCUnits.Text = Val(txtCUnits.Text) + Val(lstDetails1.ListItems(intCount).SubItems(2))
'    ElseIf lstDetails1.ListItems(intCount).SubItems(1) = "P" And Val(lstDetails1.ListItems(intCount).SubItems(2)) <> 0 Then
'        txtDetalP.Text = Val(txtDetalP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(10))
'        txtThetaP.Text = Val(txtThetaP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(12))
'        txtVegaP.Text = Val(txtVegaP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(14))
'        txtGammaP.Text = Val(txtGammaP.Text) + Val(lstDetails1.ListItems(intCount).SubItems(16))
'        txtPUnits.Text = Val(txtPUnits.Text) + Val(lstDetails1.ListItems(intCount).SubItems(2))
'    End If
'    txtTotal_RHOVal.Text = Val(txtTotal_RHOVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(18))
'    txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(10))
'    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(12))
'    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(14))
'    'txtTotal_GMVal.Text = Round(Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(15)), 2)
'    txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text) + Val(lstDetails1.ListItems(intCount).SubItems(16))
'    txtPremium.Text = Val(txtPremium.Text) + (Val(lstDetails1.ListItems(intCount).SubItems(2)) * Val(lstDetails1.ListItems(intCount).SubItems(3)))
'    txtOU.Text = Val(txtOU.Text) + (Val(lstDetails1.ListItems(intCount).SubItems(2)) * Val(lstDetails1.ListItems(intCount).SubItems(4)))
'Next

If intRate = 2 Then
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
    
    
    
    txtPremium.Text = Round(-Val(txtPremium.Text), 0)
    txtFSR.Text = Round(-Val(txtFSR.Text), 0)
    txtOR.Text = Round(-Val(txtOR.Text), 0)
    txtFSU.Text = Round(-Val(txtFSU.Text), 0)
    txtOU.Text = Round(-Val(txtOU.Text), 0)
    txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text), 0)

End If

'Call CalculateExpense

curCarryForward = 0
If blnIsCloseOut = True Then
    strQ = "Select * From RepFullSheetM Where CDate(ExpDt)>=cdate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') and My_strDesc='" & Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)) & "'"
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    If rsQ.EOF = False Then
        If IsNull(rsQ!Field1) = False Then
            If CDate(rsQ!Field1) <= CDate(txtDate.Text) Then
                curCarryForward = IIf(IsNull(rsQ!mDn1MktPrice) = True, 0, rsQ!mDn1MktPrice)
            End If
        End If
    End If
    rsQ.Close
    Set rsQ = Nothing
    lblBalance.Caption = "Br.Fr.Bal."
    txtBalance.Text = Val(txtBalance.Text) + curCarryForward
Else
    lblBalance.Caption = "Balance"
End If

Call CalculateExpense

If strPubIsFormatAllowed = "1" Then
    Call FormatTextBoxValues_4_Portfolio
End If

Call ChangeColor
Call ChangeColorM2M

If strShowNetPosZero = "N" Then
ComeHere:
    For intCount = 1 To lstDetails1.ListItems.count
        If lstDetails1.ListItems(intCount).SubItems(2) = 0 Then
            lstDetails1.ListItems.Remove intCount
            GoTo ComeHere
        End If
    Next
End If

Call CalculateSquareOffExpense
End Sub

Public Sub CalculateTrade()
Dim dblFUTURES As Double
Dim dblSTOCKS As Double
Dim cmd As ADODB.Command
Dim STOCKSA As Double
Dim STOCKSQTYA As Double
Dim STOCKSD As Double
Dim STOCKSQTYD As Double
Dim FUTURESA As Double
Dim FUTURESQTYA As Double
Dim FUTURESD As Double
Dim rsCNT As ADODB.Recordset

txtNTrade.Text = "0"
STOCKSA = 0

Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryTodaysStock"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryTodaysStockUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If

Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
Do Until rsCNT.EOF
    If Left(rsCNT!Cashtype, 1) = "E" Or Left(rsCNT!Cashtype, 1) = "O" Then
       If rsCNT!CP = "" Or IsNull(rsCNT!CP) Or rsCNT!CP = "1" Then
            If IsNull(rsCNT!STOCKQTY) Then
            Else
                'Code Changes 21/09/2008
                STOCKSA = STOCKSA + rsCNT!Stock
                STOCKSQTYA = Val(STOCKSQTYA) + rsCNT!STOCKQTY
            End If
        End If
    End If
    rsCNT.MoveNext
    Loop
End If
rsCNT.Close
Set rsCNT = Nothing
Set cmd.ActiveConnection = Nothing

STOCKSD = 0
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryPreviousStock"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryPreviousStockUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If

Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
    Do Until rsCNT.EOF
        If Left(rsCNT!Cashtype, 1) = "E" Or Left(rsCNT!Cashtype, 1) = "O" Then
           If rsCNT!CP = "" Or IsNull(rsCNT!CP) Or rsCNT!CP = "1" Then
                If IsNull(rsCNT!STOCKQTY) Then
                Else
                    'Code Changes 21/09/2008
                    STOCKSD = STOCKSD + rsCNT!Stock
                    STOCKSQTYD = Val(STOCKSQTYD) + rsCNT!STOCKQTY
                End If
            End If
        End If
        rsCNT.MoveNext
    Loop
End If
rsCNT.Close
Set rsCNT = Nothing
Set cmd.ActiveConnection = Nothing
'====

'====
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryTodaysFuture"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryTodaysFutureUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If
Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
    Do Until rsCNT.EOF
        If rsCNT!CP = "" Or IsNull(rsCNT!CP) Or rsCNT!CP = "1" Then
            If IsNull(rsCNT!OPTIONVALP) Then
            
            Else
                FUTURESA = FUTURESA + rsCNT!OPTIONVALP
'                If Val(rsCNT!OPTIONPQTY) <> 0 Then
                    FUTURESQTYA = Val(FUTURESQTYA) + rsCNT!OPTIONPQTY
'                End If
            End If
        End If
        rsCNT.MoveNext
    Loop
End If
rsCNT.Close
Set rsCNT = Nothing
Set cmd.ActiveConnection = Nothing
'====

'====
FUTURESD = 0
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryPreviousFuture"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryPreviousFutureUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If
Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
    Do Until rsCNT.EOF
        If rsCNT!CP = "" Or IsNull(rsCNT!CP) Or rsCNT!CP = "1" Then
            If IsNull(rsCNT!OPTIONVALP) Then
            Else
                FUTURESD = FUTURESD + rsCNT!OPTIONVALP
                If Val(rsCNT!OPTIONPQTY) <> 0 Then
                    FUTURESQTYD = Val(FUTURESQTYD) + rsCNT!OPTIONPQTY
                End If
            End If
        End If
        rsCNT.MoveNext
    Loop
End If
rsCNT.Close
Set rsCNT = Nothing
Set cmd.ActiveConnection = Nothing

dblFUTURES = Val(FUTURESQTYA) + Val(FUTURESQTYD)
dblSTOCKS = Val(STOCKSQTYA) + Val(STOCKSQTYD)

If Val(dblFUTURES) = 0 And Val(dblSTOCKS) = 0 Then
    txtFSR.Text = Val(txtFSR.Text) + Val(FUTURESA) + Val(STOCKSA) + Val(FUTURESD) + Val(STOCKSD)
End If

If (Val(FUTURESQTYA) + Val(STOCKSQTYA) + Val(FUTURESQTYD) + Val(STOCKSQTYD)) = 0 Then
Else
    txtNTrade.Text = Round((FUTURESA + STOCKSA + FUTURESD + STOCKSD) / (Val(FUTURESQTYA) + Val(STOCKSQTYA) + Val(FUTURESQTYD) + Val(STOCKSQTYD)), 2)
End If

If Val(txtNTrade.Text) = 0 Then
    txtFSR.Text = Val(FUTURESA) + Val(STOCKSA) + Val(FUTURESD) + Val(STOCKSD)
End If


End Sub

Public Sub CalculateOption()
Dim cmd As ADODB.Command
Dim rsOR As ADODB.Recordset
Dim FUTUREQTYS As Double

txtOR.Text = "0"
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryUnitsTradedSummary"
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.USERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryUnitsTradedUserCodeWiseSummary"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If

Set rsOR = New ADODB.Recordset
Set rsOR = cmd.Execute
If rsOR.EOF = False Then
    Do Until rsOR.EOF
        If rsOR!CP = "" Or IsNull(rsOR!CP) Or rsOR!CP = "1" Then
        Else
            If Val(rsOR!OPTIONQTY) <> 0 Then
            Else
                txtOR.Text = Val(txtOR.Text) + Val(rsOR!OPTIONVAL)
                FUTUREQTYS = Val(rsOR!OPTIONQTY)
            End If
        End If
        rsOR.MoveNext
    Loop
End If
rsOR.Close
Set rsOR = Nothing
Set cmd.ActiveConnection = Nothing

End Sub

Public Sub CalculateStock()
'CODING FOR Stock(CASHLOTS)

Dim cmd As ADODB.Command
Dim STOCKSA As Double
Dim STOCKSD As Double
Dim STOCKQTYS As Double
Dim STOCKS As Double
Dim rsStock As ADODB.Recordset

txtTradeStock.Text = "0"
txtTStock.Text = "0"
txtPStock.Text = "0"
        
'For Todays Stock
Set cmd = New ADODB.Command
STOCKSA = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryTodaysStock"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryTodaysStockUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If

Set rsStock = New ADODB.Recordset
Set rsStock = cmd.Execute
If rsStock.EOF = False Then
    Do Until rsStock.EOF
        If Left(rsStock!Cashtype, 1) = "E" Then
           If rsStock!CP = "" Or IsNull(rsStock!CP) Or rsStock!CP = "1" Then
                If IsNull(rsStock!STOCKQTY) = False Then
                    'Code Chnages 21/08/2008
                    STOCKSA = STOCKSA + rsStock!Stock
                    txtTStock.Text = Val(txtTStock.Text) + Val(rsStock!STOCKQTY)
                End If
            End If
        End If
        rsStock.MoveNext
    Loop
End If
rsStock.Close
Set rsStock = Nothing
Set cmd.ActiveConnection = Nothing

'For Previous Stock
STOCKSD = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryPreviousStock"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDT", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryPreviousStockUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If
Set rsStock = New ADODB.Recordset
Set rsStock = cmd.Execute
If rsStock.EOF = False Then
    Do Until rsStock.EOF
    If Left(rsStock!Cashtype, 1) = "E" Then
       If rsStock!CP = "" Or IsNull(rsStock!CP) Or rsStock!CP = "1" And Left(rsStock!Cashtype, 1) = "E" Then
            If IsNull(rsStock!STOCKQTY) = False Then
                'Code Chnages 21/08/2008
                STOCKSD = STOCKSD + rsStock!Stock
                txtPStock.Text = Val(txtPStock.Text) + Val(rsStock!STOCKQTY)
            End If
        End If
    End If
    rsStock.MoveNext
    Loop
End If
rsStock.Close
Set rsStock = Nothing
Set cmd.ActiveConnection = Nothing
      
STOCKS = STOCKSA + STOCKSD
STOCKQTYS = Val(txtTStock.Text) + Val(txtPStock.Text)
       
If STOCKQTYS <> 0 Then
    txtTradeStock.Text = Round(STOCKS / STOCKQTYS, 2)
End If

txtNStock.Text = Val(txtTStock.Text) + Val(txtPStock.Text)
End Sub


Public Sub CalculateFuture()
'CODING FOR FUTURE(CASHLOTS)
Dim FUTURESA As Double
Dim FUTURESD As Double
Dim FUTURES As Double
Dim FUTUREQTYS As Double

Dim cmd As ADODB.Command
Dim rsFuture As ADODB.Recordset

txtTradeFutu.Text = "0"
txtFSR.Text = "0"
txtTFutu.Text = "0"
txtPFutu.Text = "0"

'For Todays Future
Set cmd = New ADODB.Command
FUTURESA = 0
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryTodaysFuture"
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryTodaysFutureUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If
Set rsFuture = New ADODB.Recordset
Set rsFuture = cmd.Execute
If rsFuture.EOF = False Then
    Do Until rsFuture.EOF
        If rsFuture!CP = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
            If IsNull(rsFuture!OPTIONVALP) = False Then
                FUTURESA = FUTURESA + Val(rsFuture!OPTIONVALP)
                txtTFutu.Text = Val(txtTFutu.Text) + Val(rsFuture!OPTIONPQTY) 'Todays Future
            End If
        End If
        rsFuture.MoveNext
    Loop
End If
rsFuture.Close
Set rsFuture = Nothing
Set cmd.ActiveConnection = Nothing



'For Previous Future
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
FUTURESD = 0

If userinfo.SELUSERCD = "" Then
    cmd.CommandText = "QryPreviousFuture"
    cmd.Parameters.Append cmd.CreateParameter("MEXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
Else
    cmd.CommandText = "QryPreviousFutureUserCodeWise"
    cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
    cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
    cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
    cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(CDate(txtDate.Text), "DD/MM/YYYY"))
End If
Set rsFuture = New ADODB.Recordset
Set rsFuture = cmd.Execute
If rsFuture.EOF = False Then
    Do Until rsFuture.EOF
        If rsFuture!CP = "" Or IsNull(rsFuture!CP) Or rsFuture!CP = "1" Then
            If IsNull(rsFuture!OPTIONVALP) = False Then
                FUTURESD = FUTURESD + Val(rsFuture!OPTIONVALP)
                txtPFutu.Text = Val(txtPFutu.Text) + Val(rsFuture!OPTIONPQTY)
            End If
        End If
        rsFuture.MoveNext
    Loop
End If
rsFuture.Close
Set rsFuture = Nothing
Set cmd.ActiveConnection = Nothing
    
FUTURES = 0
FUTUREQTYS = 0
FUTURES = Val(FUTURESA) + Val(FUTURESD)
FUTUREQTYS = Val(txtTFutu.Text) + Val(txtPFutu.Text)

If FUTUREQTYS <> 0 Then
    txtTradeFutu.Text = Round(FUTURES / FUTUREQTYS, 2)
End If

txtNFutu.Text = Val(txtTFutu.Text) + Val(txtPFutu.Text)
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
Dim rsExp As ADODB.Recordset

strScript = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 7))
strPortfolio = Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
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

If intRate = 2 Then
    txtIntMargin.Text = Round((curExposureMargin * curLotSize) / 10000000, 4)
Else
    txtIntMargin.Text = Round(curExposureMargin / 10000000, 2)
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
txtCashTotal.ToolTipText = txtCashTotal.Text
txtCashTotal.Text = Round(Val(txtCashTotal.Text) / 10000000, 2)
'============================


'============================
'Previous Balance
Set rsPrevBal = New ADODB.Recordset
If userinfo.SELUSERCD = "" Then
    rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where closing<>0 And isnull(USERCD) and Descr='" & strPortfolio & "' and Cdate(tr_date)<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
Else
    rsPrevBal.Open "Select max(tr_date) as maxdate from Exp_Detl where closing<>0 And Usercd='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and Cdate(tr_date)<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
End If
If IsNull(rsPrevBal!MaxDate) = False Then
    MaxDT = rsPrevBal!MaxDate
    
    Set rsPrevBal2 = New ADODB.Recordset
    If userinfo.SELUSERCD = "" Then
        rsPrevBal2.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
    Else
        rsPrevBal2.Open "Select * from Exp_Detl where Usercd='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
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

'If Val(txtDays.Text) = 0 Then
'    GoTo ExpenseOnExpiry
'End If


'============================
'Calculating Todays Expense
If strPubIgnorePortfolio = "Y" Then
    
    Set rsExpMst = New ADODB.Recordset
    'Change Here 8/9/2011
    strExpMst = "Select * from exp_mst Where SrNo=" & intExpense
    rsExpMst.Open strExpMst, con, adOpenKeyset, adLockOptimistic
    If rsExpMst.EOF = False Then
        Exp_Per_Cr = Val(rsExpMst!Exp_Per_Cr)
        
        If userinfo.SELUSERCD = "" Then

            
            'Update - 1/3/11
            strQ = "SELECT Sum(Units) AS punits, Sum(Abs(Units)*Traded) AS UniTrd, InType, CashType" & _
                   " From DummyTracker " & _
                   " Where Script ='" & strScript & "' And CDate(ExpDt) = CDate('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & _
                   "') And CDate(TradeDt) = CDate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') " & _
                   "  And InDesc<>'CloseOut' " & _
                   " GROUP BY InType, CashType "
            Set rsQ = New ADODB.Recordset
            rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
        Else
            'Update - 1/3/11
            strQ = "SELECT Sum(Units) AS punits, Sum(Abs(Units)*Traded) AS UniTrd, InType, CashType" & _
                   " From DummyTracker " & _
                   " Where Script ='" & strScript & "' And CDate(ExpDt) = CDate('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & _
                   "') And CDate(TradeDt) = CDate('" & Format(txtDate.Text, "DD/MM/YYYY") & "') " & _
                   " And UserCD='" & userinfo.SELUSERCD & "' And InDesc<>'CloseOut' " & _
                   " GROUP BY InType, CashType "
            Set rsQ = New ADODB.Recordset
            rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
        End If
        If rsQ.EOF = False Then
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
            'Update - 1/3/11
            rsTodaysExpense.Open "Select strike,cp,sum(units) as punit,sum(units* traded) as ptraded from Dummytracker where left(cashtype,1)='O' AND FIELD2='E' AND Script ='" & strScript & "' AND CDATE(tradedt)<=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & "') And InDesc<>'CloseOut'  group by strike,cp", con, adOpenStatic, adLockReadOnly
        Else
            'Update - 1/3/11
            rsTodaysExpense.Open "Select strike,cp,sum(units) as punit,sum(units* traded) as ptraded from Dummytracker where Usercd='" & userinfo.SELUSERCD & "' And left(cashtype,1)='O' AND FIELD2='E' AND Script ='" & strScript & "' AND CDATE(tradedt)<=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') AND CDATE(EXPDT)=CDATE('" & Format(CDate(txtExpDt.Text), "DD/MM/YYYY") & "')  And InDesc<>'CloseOut' group by strike,cp", con, adOpenStatic, adLockReadOnly
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


'============================
ShowTodayExpense:

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
    
'txtTotal.Text = Round(Val(txtTExpense.Text) + Val(txtPrvBalance.Text))

'Calculating Total Expense
txtTotal.Text = Round(Val(txtTExpense.Text) + Val(txtPrvBalance.Text))

'Save closing
Set rsExp = New ADODB.Recordset
If userinfo.SELUSERCD = "" Then
    rsExp.Open "Select * from Exp_Detl where isnull(USERCD) and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockOptimistic
Else
    rsExp.Open "Select * from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='" & strPortfolio & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "')", con, adOpenKeyset, adLockOptimistic
End If
If Not rsExp.EOF Then
'    rsExp!TodaysExpenses = TodaysExpense
    If userinfo.SELUSERCD <> "" Then
        rsExp!USERCD = userinfo.SELUSERCD
    End If
    rsExp!Closing = Val(txtTotal.Text)
    rsExp.Update
Else
    rsExp.AddNew
    rsExp!SYMBOL = "EX"
    rsExp!Descr = strPortfolio
    rsExp!Tr_date = Format(CDate(txtDate.Text), "DD/MM/YYYY")
'    rsExp!TodaysExpenses = TodaysExpense
    rsExp!Closing = Val(txtTotal.Text)
    If userinfo.SELUSERCD <> "" Then
        rsExp!USERCD = userinfo.SELUSERCD
    End If
    rsExp.Update
End If
rsExp.Close
Set rsExp = Nothing
        
'If lngOriginalDays - intPubNoOfDaysToBeReduced >= 0 Then
'    If lngOriginalDays - intPubNoOfDaysToBeReduced = Val(txtDays.Text) Then
'        mcurPrevBal = Val(txtTotal.Text)
'    ElseIf lngOriginalDays - intPubNoOfDaysToBeReduced > Val(txtDays.Text) Then
'        txtPrvBalance.Text = mcurPrevBal
'        txtTotal.Text = Round(Val(txtTExpense.Text) + Val(txtPrvBalance.Text))
'    End If
'End If
'============================

'If strPubIsFormatAllowed = "1" Then
'    'Cash Flow
'    txtIntMargin.Text = FormatValue(txtIntMargin)
'    txtExp_Margin.Text = FormatValue(txtExp_Margin)
'    txtEquity.Text = FormatValue(txtEquity)
'    txtCashTotal.Text = FormatValue(txtCashTotal)
'
'    'Expense
'    txtPrvBalance.Text = FormatValue(txtPrvBalance)
'    txtTExpense.Text = FormatValue(txtTExpense)
'    txtTotal.Text = FormatValue(txtTotal)
'End If

'============================
'Calculating Net Balance
NetBalance:
If blnIsCloseOut = True Then
    txtNetBalance.Text = Round(Val(txtBalance.Text) - Val(txtTotal.Text))
Else
    txtNetBalance.Text = Round(Val(txtBalance.Text) - Val(txtTotal.Text))
End If
'============================
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Public Sub CalculateSquareOffExpense()
On Error GoTo EH

Dim intCount As Integer
Dim TodaysExpense As Currency
Dim curTraded As Currency
Dim curUnits As Currency
Dim lngColorNew As Long

'For Option
For intCount = 1 To lstDetails1.ListItems.count
    If Val(lstDetails1.ListItems(intCount).SubItems(2)) <> 0 Then
        If Val(lstDetails1.ListItems(intCount).SubItems(5)) <> 0 Then
            curTraded = Val(lstDetails1.ListItems(intCount).SubItems(5))
        Else
            curTraded = Val(lstDetails1.ListItems(intCount).SubItems(4))
        End If
        
        curUnits = Val(lstDetails1.ListItems(intCount).SubItems(2))
        If Val(curUnits) > 0 Then
            TodaysExpense = TodaysExpense + (Abs(curUnits) * curTraded) * (curExpenseOptSell / curExpPerCrore)
        Else
            TodaysExpense = TodaysExpense + (Abs(curUnits) * curTraded) * (curExpenseOptBuy / curExpPerCrore)
        End If
    End If
Next

'For Future
If Val(txtNFutu.Text) <> 0 Then
    If Val(txtNFutu.Text) > 0 Then
        TodaysExpense = TodaysExpense + (Abs(Val(txtNFutu.Text)) * Val(txtRate.Text)) * (curExpenseFutSell / curExpPerCrore)
    Else
        TodaysExpense = TodaysExpense + (Abs(Val(txtNFutu.Text)) * Val(txtRate.Text)) * (curExpenseFutBuy / curExpPerCrore)
    End If
End If

''For Stock
'If Val(txtNStock.Text) <> 0 Then
'    If Val(txtNStock.Text) > 0 Then
'        TodaysExpense = TodaysExpense + (Abs(Val(txtNStock.Text)) * Val(txtRate.Text)) * (curExpenseEQDelBuy / curExpPerCrore)
'    Else
'        TodaysExpense = TodaysExpense + (Abs(Val(txtNStock.Text)) * Val(txtRate.Text)) * (curExpenseEQDelBuy / curExpPerCrore)
'    End If
'End If

      
If intRate = 2 Then
    txtSquareOffExpense.Text = Round(TodaysExpense, 4)
Else
    txtSquareOffExpense.Text = Round(TodaysExpense, 0)
End If



lngColorNew = &HFFFF00

If Val(txtSquareOffExpense.Text) < 0 Then
    txtSquareOffExpense.ForeColor = vbRed
Else
    txtSquareOffExpense.ForeColor = lngColorNew
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub



Public Sub FillCombo()
'Dim strFill As String
'Dim rsFill As New ADODB.Recordset
'Dim intUserCount1 As Integer
'strFill = "Select * From User_detl Where User_Type='User'"
'rsFill.Open strFill, con, adOpenKeyset, adLockOptimistic
'If rsFill.EOF = False Then
'    cmbUserName.Clear
'    intUserCount1 = 0
'    While Not rsFill.EOF
'        If intUserCount1 >= intPubTotalRegisteredUsers Then
'            Exit Sub
'        End If
'        cmbUserName.AddItem IIf(IsNull(rsFill!USERCD) = True, "", rsFill!USERCD)
'        intUserCount1 = intUserCount1 + 1
'        rsFill.MoveNext
'    Wend
'End If
'rsFill.Close
End Sub





Private Sub ShowAlert()
Dim strQ As String
Dim rsQ As ADODB.Recordset
Dim curStrike As Currency
Dim curValue As Currency
Dim strCP As String
Dim intListCount As Integer

strQ = "Select * From MstAlert"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
If rsQ.EOF = False Then
    While Not rsQ.EOF
        curStrike = rsQ!Strike
        strCP = rsQ!CallPut
        curValue = rsQ!AlertValue
        For intListCount = 1 To lstDetails1.ListItems.count
            If Val(lstDetails1.ListItems(intListCount)) = curStrike And lstDetails1.ListItems(intListCount).SubItems(1) = strCP _
            And curValue > Val(lstDetails1.ListItems(intListCount).SubItems(7)) Then
                frmAlertWindow.intAlertCount = frmAlertWindow.intAlertCount + 1
                frmAlertWindow.msfAlert.TextMatrix(frmAlertWindow.intAlertCount, 0) = "New IV of " & Trim$(str(curStrike)) & strCP & " have " & Val(lstDetails1.ListItems(intListCount).SubItems(7)) - curValue & " increment."
                frmAlertWindow.msfAlert.TextMatrix(frmAlertWindow.intAlertCount, 1) = Format(Now, vbShortTime)
                frmAlertWindow.msfAlert.Rows = frmAlertWindow.msfAlert.Rows + 1
                
                GoTo ComeHere
                
            End If
        Next
ComeHere:
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing


End Sub

'Private Sub StoreAlert()
'Dim strQ As String
'Dim rsQ As ADODB.Recordset
'Dim curStrike As Currency
'Dim curValue As Currency
'Dim strCP As String
'Dim intListCount As Integer
'
'strQ = "Select * From MstAlert"
'Set rsQ = New ADODB.Recordset
'rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
'If rsQ.EOF = False Then
'    intAlertCount = 0
'    While Not rsQ.EOF
'        ArrMstAlert(intAlertCount).strAlertName = rsQ!AlertName
'        ArrMstAlert(intAlertCount).strAlertCondition = rsQ!AlertCondition
'        ArrMstAlert(intAlertCount).strAlertType = rsQ!AlertType
'        ArrMstAlert(intAlertCount).strToken = rsQ!token
'        ArrMstAlert(intAlertCount).curAlertValue = rsQ!AlertValue
'        intAlertCount = intAlertCount + 1
'        rsQ.MoveNext
'    Wend
'End If
'rsQ.Close
'Set rsQ = Nothing
'End Sub


Public Sub FillPortfolio()
Dim strQ As String
Dim rsQ As ADODB.Recordset

'strQ = "Select Distinct(Script) as Scripts,Expdt  From DummyTracker Where TradeID='0' AND CDate(Tradedt)<=CDate('" & Format(Date, "DD/MM/YYYY") & "') and CDate(expdt)>=CDate('" & Format(Date, "DD/MM/YYYY") & "')"
If blnIsHidePortfolio = True Then
    strQ = "Select * From RepFullSheetM Where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd) and Balance=0 And IntRate<>2 Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
Else
    strQ = "Select * From RepFullSheetM Where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd) And IntRate<>2 Order By Left(My_Strdesc,Len(My_StrDesc)-7),CDate(ExpDt)"
End If
cboPortfolioList.Clear
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
If rsQ.EOF = False Then
    While Not rsQ.EOF
        cboPortfolioList.AddItem (rsQ!My_strDesc) '& " " & Format(rsQ!ExpDt, "MMM-YY") & ""
        strExpDt1 = Format(rsQ!ExpDt, "DD/MM/YYYY")
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing

End Sub


Public Sub StartCaptureOnForm()
On Error GoTo EH
Dim blnResult As Boolean
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "D:\DLL\udp.txt", strPubPacCapDLL)
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort)
'blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ)
'If strPubUseEQ = "Y" Then
'    blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ)
'Else
'    blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, "")
'End If
'If gstrUseVSATFlag = "Y" Then
'blnResult = MyObjVSAT.StartCapture(Me.hwnd, strPubIPAddress, "C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, strPubDestPort, strPubDestPortEQ, strPubDestPortCur)
'Else
blnResult = MyObj.StartCapture(Me.hwnd, strPubIPAddress, _
"C:\DLL\udp.txt", strPubPacCapDLL, strPubDestIP, _
strPubDestPort, strPubDestPortEQ, strPubDestPortCur, _
strCreateSpotFlag, strSpotFilePath, glngMaxFOToken, glngMaxEQToken, glngMaxCurToken)
'End If

If blnResult = True Then
'    MsgBox "Capture has been started!!!", vbInformation
    Timer1.Enabled = True
    cmdStartCapture.Enabled = False
    cmdStopCapture.Enabled = True
    cmdStopCapture.ZOrder
    'cmdVarAnalysis.Enabled = True
    Me.Refresh
    MDIMain.txtPortfolio.Text = "Live: ON"
    MDIMain.txtPortfolio.Refresh
Else
'    MsgBox "Capture has not been started!!!", vbInformation
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Public Sub StopCaptureOnForm()
On Error GoTo EH
Dim blnResult As Boolean

'If gstrUseVSATFlag = "Y" Then
'    blnResult = MyObjVSAT.StopCapture
'Else
    blnResult = MyObj.StopCapture
'End If

If blnResult = True Then
'    MsgBox "Capture has been stopped!!!", vbInformation
    Timer1.Enabled = False
    cmdStartCapture.Enabled = True
    cmdStopCapture.Enabled = False
    cmdStartCapture.ZOrder
    'cmdVarAnalysis.Enabled = False
    Me.Refresh
    MDIMain.txtPortfolio.Text = "Live: OFF"
    MDIMain.txtPortfolio.Refresh
Else
'    MsgBox "Capture has not been stopped!!!", vbInformation
End If

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Public Function GetLtpArrayFromLiveBhavcopy(ByRef arrLtptoSend() As Long)
arrLtptoSend = arrLtp
End Function

Public Function GetLtpCurrencyArrayFromLiveBhavcopy(ByRef arrLtpCurtoSend() As Long)
arrLtpCurtoSend = arrLtpCur
End Function


