VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmPortfolio_UserName 
   Caption         =   "PortFolio- UserName:"
   ClientHeight    =   10980
   ClientLeft      =   1980
   ClientTop       =   615
   ClientWidth     =   15210
   Icon            =   "frmPortfolio_UserName.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   10980
   ScaleWidth      =   15210
   WindowState     =   2  'Maximized
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
      TabIndex        =   10
      Top             =   0
      Width           =   18240
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
         Left            =   14670
         Picture         =   "frmPortfolio_UserName.frx":1F8FA
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Close"
         Top             =   60
         Width           =   390
      End
      Begin VB.Frame Frame1 
         Height          =   7185
         Left            =   60
         TabIndex        =   13
         Top             =   960
         Width           =   15000
         Begin Crystal.CrystalReport CrystalReport1 
            Left            =   195
            Top             =   6930
            _ExtentX        =   741
            _ExtentY        =   741
            _Version        =   348160
            PrintFileLinesPerPage=   60
         End
         Begin VB.CommandButton cmdReport 
            Height          =   315
            Left            =   30
            Picture         =   "frmPortfolio_UserName.frx":1F9F4
            Style           =   1  'Graphical
            TabIndex        =   8
            ToolTipText     =   "Print Report"
            Top             =   6405
            Width           =   345
         End
         Begin VB.CommandButton cmdCalculator 
            Height          =   375
            Left            =   10890
            Picture         =   "frmPortfolio_UserName.frx":1FDAA
            Style           =   1  'Graphical
            TabIndex        =   5
            ToolTipText     =   "Calculator..."
            Top             =   150
            Width           =   405
         End
         Begin VB.CommandButton cmdExcelList 
            Height          =   375
            Left            =   11325
            Picture         =   "frmPortfolio_UserName.frx":202C2
            Style           =   1  'Graphical
            TabIndex        =   6
            ToolTipText     =   "Export to Excel"
            Top             =   150
            Width           =   405
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
            TabIndex        =   75
            Top             =   105
            Width           =   3090
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
               TabIndex        =   90
               TabStop         =   0   'False
               Top             =   300
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
               TabIndex        =   89
               TabStop         =   0   'False
               Top             =   675
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
               TabIndex        =   88
               TabStop         =   0   'False
               Top             =   1057
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
               TabIndex        =   87
               TabStop         =   0   'False
               Top             =   1439
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
               TabIndex        =   86
               TabStop         =   0   'False
               Top             =   1821
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
               TabIndex        =   85
               TabStop         =   0   'False
               Top             =   2205
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
               TabIndex        =   84
               TabStop         =   0   'False
               Top             =   2850
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
               TabIndex        =   83
               TabStop         =   0   'False
               Top             =   3240
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
               TabIndex        =   82
               TabStop         =   0   'False
               Top             =   3615
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
               TabIndex        =   81
               TabStop         =   0   'False
               Top             =   4005
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
               TabIndex        =   80
               TabStop         =   0   'False
               Top             =   4560
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
               TabIndex        =   79
               TabStop         =   0   'False
               Top             =   4935
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
               TabIndex        =   78
               TabStop         =   0   'False
               Top             =   5325
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
               TabIndex        =   77
               TabStop         =   0   'False
               Top             =   5700
               Width           =   1650
            End
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
               TabIndex        =   76
               TabStop         =   0   'False
               Top             =   6075
               Width           =   1650
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
               TabIndex        =   107
               Top             =   5925
               Width           =   1260
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
               TabIndex        =   106
               Top             =   3165
               Width           =   1365
               WordWrap        =   -1  'True
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
               TabIndex        =   105
               Top             =   3630
               Width           =   615
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
               TabIndex        =   104
               Top             =   4005
               Width           =   495
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
               TabIndex        =   103
               Top             =   4590
               Width           =   1275
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
               TabIndex        =   102
               Top             =   4950
               Width           =   705
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
               TabIndex        =   101
               Top             =   5295
               Width           =   495
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
               TabIndex        =   100
               Top             =   5655
               Width           =   1155
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
               TabIndex        =   99
               Top             =   2880
               Width           =   1065
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
               TabIndex        =   98
               Top             =   750
               Width           =   1170
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
               TabIndex        =   97
               Top             =   1095
               Width           =   990
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
               TabIndex        =   96
               Top             =   1485
               Width           =   1125
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
               TabIndex        =   95
               Top             =   1860
               Width           =   1005
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
               TabIndex        =   94
               Top             =   2220
               Width           =   765
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
               TabIndex        =   93
               Top             =   315
               Width           =   870
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
               TabIndex        =   92
               Top             =   2640
               Width           =   975
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
               TabIndex        =   91
               Top             =   4365
               Width           =   825
            End
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
            TabIndex        =   2
            Top             =   210
            Width           =   1335
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
            Left            =   9240
            Locked          =   -1  'True
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   210
            Width           =   1410
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
            Left            =   7050
            Locked          =   -1  'True
            TabIndex        =   11
            TabStop         =   0   'False
            Top             =   210
            Width           =   1410
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
            TabIndex        =   4
            Top             =   195
            Width           =   945
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
            TabIndex        =   3
            Top             =   195
            Width           =   945
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
            TabIndex        =   1
            Top             =   210
            Width           =   615
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
            TabIndex        =   18
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
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1665
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
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1665
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
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   6675
            Width           =   1590
         End
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
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   6660
            Width           =   1575
         End
         Begin MSComctlLib.ListView lstDetails1 
            Height          =   5835
            Left            =   45
            TabIndex        =   7
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
            NumItems        =   14
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
               Text            =   "lv"
               Object.Width           =   882
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   6
               Text            =   "Delta"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   7
               Text            =   "Del Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   8
               Text            =   "Theta"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   9
               Text            =   "Theta Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   10
               Text            =   "Vega"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   11
               Text            =   "Vg Val"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   12
               Text            =   "Gamma"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   13
               Text            =   "Gm Val"
               Object.Width           =   1764
            EndProperty
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
            Left            =   8595
            TabIndex        =   51
            Top             =   210
            Width           =   690
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
            Left            =   6450
            TabIndex        =   50
            Top             =   210
            Width           =   690
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
            TabIndex        =   49
            Top             =   210
            Width           =   375
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
            TabIndex        =   48
            Top             =   210
            Width           =   375
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
            TabIndex        =   47
            Top             =   210
            Width           =   495
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
            TabIndex        =   46
            Top             =   210
            Width           =   480
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
            TabIndex        =   25
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
            TabIndex        =   24
            Top             =   6435
            Width           =   930
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
            TabIndex        =   23
            Top             =   6435
            Width           =   1095
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
            TabIndex        =   22
            Top             =   6435
            Width           =   855
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
            TabIndex        =   21
            Top             =   6735
            Width           =   735
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
            TabIndex        =   20
            Top             =   6735
            Width           =   1215
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
            Left            =   1905
            TabIndex        =   19
            Top             =   6420
            Width           =   2295
         End
      End
      Begin VB.Frame Frame4 
         Height          =   1545
         Left            =   90
         TabIndex        =   33
         Top             =   8175
         Width           =   7800
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
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   1125
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
            TabIndex        =   60
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
            TabIndex        =   59
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
            TabIndex        =   58
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
            TabIndex        =   57
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
            TabIndex        =   56
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
            TabIndex        =   55
            TabStop         =   0   'False
            Top             =   1140
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
            TabIndex        =   54
            TabStop         =   0   'False
            Top             =   750
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
            TabIndex        =   53
            TabStop         =   0   'False
            Top             =   1125
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
            TabIndex        =   52
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
            TabIndex        =   38
            TabStop         =   0   'False
            Top             =   750
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
            TabIndex        =   37
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
            TabIndex        =   36
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
            TabIndex        =   35
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
         End
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
            TabIndex        =   34
            TabStop         =   0   'False
            Top             =   375
            Width           =   1485
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
            TabIndex        =   45
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
            TabIndex        =   44
            Top             =   135
            Width           =   735
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
            TabIndex        =   43
            Top             =   135
            Width           =   735
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
            TabIndex        =   42
            Top             =   135
            Width           =   855
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
            TabIndex        =   41
            Top             =   390
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
            TabIndex        =   40
            Top             =   750
            Width           =   255
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
            TabIndex        =   39
            Top             =   1110
            Width           =   255
         End
      End
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
         TabIndex        =   26
         Top             =   8145
         Width           =   7200
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
            TabIndex        =   74
            TabStop         =   0   'False
            Top             =   1155
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
            TabIndex        =   73
            TabStop         =   0   'False
            Top             =   435
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
            TabIndex        =   72
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
            TabIndex        =   71
            TabStop         =   0   'False
            Top             =   1155
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
            TabIndex        =   70
            TabStop         =   0   'False
            Top             =   795
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
            TabIndex        =   69
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
            TabIndex        =   68
            TabStop         =   0   'False
            Top             =   1155
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
            TabIndex        =   67
            TabStop         =   0   'False
            Top             =   435
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
            TabIndex        =   66
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
            TabIndex        =   65
            TabStop         =   0   'False
            Top             =   1155
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
            TabIndex        =   64
            TabStop         =   0   'False
            Top             =   795
            Width           =   1530
         End
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
            TabIndex        =   63
            TabStop         =   0   'False
            Top             =   435
            Width           =   1530
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
            TabIndex        =   62
            Top             =   1155
            Width           =   975
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
            TabIndex        =   32
            Top             =   780
            Width           =   855
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
            TabIndex        =   31
            Top             =   435
            Width           =   855
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
            TabIndex        =   30
            Top             =   210
            Width           =   615
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
            TabIndex        =   29
            Top             =   210
            Width           =   375
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
            TabIndex        =   28
            Top             =   180
            Width           =   780
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
            TabIndex        =   27
            Top             =   210
            Width           =   1425
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   9735
         Left            =   0
         TabIndex        =   0
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
         TabPicture(0)   =   "frmPortfolio_UserName.frx":2064A
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "CommonDialog1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin MSComDlg.CommonDialog CommonDialog1 
            Left            =   8925
            Top             =   465
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
      End
   End
End
Attribute VB_Name = "frmPortfolio_UserName"
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
Dim blnIsLoading As Boolean

'Variables For Resolution
'=====================
Dim MyForm As FRMSIZE
Dim DesignX As Integer
Dim DesignY As Integer

Dim dblPreviousCall As Double
Dim dblPreviousPut As Double
Dim dblPreviousRate As Double



Public Sub CLEARALL()

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



Public Sub FillStrike()
'Procedure For Filling Strike with required calculation Present in a TextFile
lstDetails1.ListItems.Clear
Dim strQ As String
Dim rsQ As ADODB.Recordset

Dim cmd As ADODB.Command
Dim lvItem As ListItem
Dim lngColor As Long

Const lngColor1 As Long = &H40C0&
Const lngColor2 As Long = &H400040

Set rsQ = New ADODB.Recordset
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
cmd.CommandText = "QryOrderedUnitsTradedSummaryUserCode"
cmd.Parameters.Append cmd.CreateParameter("UserCD", adVarChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("ExpDt", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("Script", adVarChar, adParamInput, 50, Trim$(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 7)))
cmd.Parameters.Append cmd.CreateParameter("TradeDt", adDate, adParamInput, 8, Format(txtDate.Text, "DD/MM/YYYY"))

lngColor = &H2E4E30

rsQ.CursorLocation = adUseClient
rsQ.CursorType = adOpenKeyset
rsQ.LockType = adLockOptimistic
Set rsQ = cmd.Execute
If rsQ.EOF = False Then
    While Not rsQ.EOF
        If rsQ!strike <> 0 Then
        
            If rsQ!cp = "C" Then
                lngColor = lngColor1
            ElseIf rsQ!cp = "P" Then
                lngColor = lngColor2
            End If
            
            Set lvItem = lstDetails1.ListItems.Add(, , rsQ!strike)
            
            lvItem.ForeColor = lngColor
            lvItem.Bold = True
            
            lvItem.SubItems(1) = rsQ!cp
            
            lvItem.ListSubItems(1).ForeColor = lngColor
            lvItem.ListSubItems(1).Bold = True
            
            Call CalculationForExtraEntries(lvItem, rsQ!strike, rsQ!cp, lngColor)
            
            If rsQ!OPTIONQTY = 0 Then
                lvItem.SubItems(2) = 0
                lvItem.SubItems(3) = 0
            Else
                lvItem.SubItems(2) = Val(lvItem.SubItems(2)) + rsQ!OPTIONQTY
                lvItem.SubItems(3) = Round((rsQ!OPTIONVAL) / (rsQ!OPTIONQTY), 2)
                lvItem.SubItems(7) = -(Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(6) / 100))
                lvItem.SubItems(9) = Val(lvItem.SubItems(2)) * (-Val(lvItem.SubItems(8)))
                lvItem.SubItems(11) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(10))
                lvItem.SubItems(13) = Val(lvItem.SubItems(2)) * Val(lvItem.SubItems(12))
            End If
            
            If Val(lvItem.SubItems(2)) < 0 Then
                lvItem.ListSubItems(2).ForeColor = vbRed
            Else
                lvItem.ListSubItems(2).ForeColor = vbBlue
            End If
        
            If Val(lvItem.SubItems(3)) < 0 Then
                lvItem.ListSubItems(3).ForeColor = vbRed
            Else
                lvItem.ListSubItems(3).ForeColor = vbBlue
            End If
        End If
        rsQ.MoveNext
    Wend
End If
rsQ.Close
Set rsQ = Nothing
Set cmd = Nothing

End Sub


Private Sub CalculationForExtraEntries(List As ListItem, curStrike As Currency, strCP As String, lngColor1 As Long)

Dim I, DELTAD1C, S, K, lnofSK, s1c, s1p, t, r, d1C, d1P, d2C, d2P As Double
Dim a, b, C As Long

S = Val(txtRate.Text)
K = curStrike
lnofSK = (Log(S / K)) / (Log(2.718282)) 'it is natural log
lnofSKGamma = Round((Log((S + 1) / K)) / (Log(2.718282)), 8) 'it is natural log
t = Round(Val(txtDays.Text) / 365, 6)
tTheta = Round((Val(txtDays.Text) - 1) / 365, 6) 'theta calculation eg. if t=16 then tTheta 15
s1c = (Val(txtCall.Text) / 100) ' 'Volitility CALL
s1cVega = s1c + 0.01 'problem in vega
s1p = Val(txtPut.Text) / 100 'volitility Put
s1pVega = s1p + 0.01
r = IntRate

If t <= 0 And S > K Then
    DELTAD1C = S - K
    DELTAD1CTheta = 0
    DELTAD1CVega = 0
    DELTAD2C = 0
    DELTAD2CTheta = 0
    DELTAD2CVega = 0
    DELTAD2CGamma = 0
ElseIf t <= 0 And S < K Then
    DELTAD1C = 0
    DELTAD1CTheta = 0
    DELTAD1CVega = 0
    DELTAD2C = 0
    DELTAD2CTheta = 0
    DELTAD2CVega = 0
    DELTAD2CGamma = 0
ElseIf t <= 0 And S = K Then
    DELTAD1C = 0
    DELTAD1CTheta = 0
    DELTAD1CVega = 0
    DELTAD2C = 0
    DELTAD2CTheta = 0
    DELTAD2CVega = 0
    DELTAD2CGamma = 0
Else
    If Val(txtDays.Text) = 1 Then
        DELTAD1C = Round(CND((lnofSK + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))), 8) 'Delta=N(d1)
        'DELTAD1CTheta = Round(cnd((lnofSK + ((r + s1c * s1c * 0.5) * tTheta)) / (s1c * Sqr(tTheta))), 8) 'Delta=N(d1)
        DELTAD1CVega = Round(CND((lnofSK + ((r + s1cVega * s1cVega * 0.5) * t)) / (s1cVega * Sqr(t))), 8) 'Delta=N(d1)  for Vega
        DELTAD1CGamma = Round(CND((lnofSKGamma + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))), 8) 'Delta=N(d1) For gamma
        DELTAD2C = Round(CND(((lnofSK + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))) - s1c * Sqr(t)), 8) 'Delta=N(d2)
        'DELTAD2CTheta = Round(cnd(((lnofSK + ((r + s1c * s1c * 0.5) * tTheta)) / (s1c * Sqr(tTheta))) - s1c * Sqr(tTheta)), 8) 'Delta=N(d2)
        DELTAD2CVega = Round(CND(((lnofSK + ((r + s1cVega * s1cVega * 0.5) * t)) / (s1cVega * Sqr(t))) - s1cVega * Sqr(t)), 8) 'Delta=N(d2)
        DELTAD2CGamma = Round(CND(((lnofSKGamma + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))) - s1c * Sqr(t)), 8) 'Delta=N(d2) for gamma
    Else
        DELTAD1C = Round(CND((lnofSK + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))), 8) 'Delta=N(d1)
        DELTAD1CTheta = Round(CND((lnofSK + ((r + s1c * s1c * 0.5) * tTheta)) / (s1c * Sqr(tTheta))), 8) 'Delta=N(d1)
        DELTAD1CVega = Round(CND((lnofSK + ((r + s1cVega * s1cVega * 0.5) * t)) / (s1cVega * Sqr(t))), 8) 'Delta=N(d1)  for Vega
        DELTAD1CGamma = Round(CND((lnofSKGamma + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))), 8) 'Delta=N(d1) For gamma
        DELTAD2C = Round(CND(((lnofSK + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))) - s1c * Sqr(t)), 8) 'Delta=N(d2)
        DELTAD2CTheta = Round(CND(((lnofSK + ((r + s1c * s1c * 0.5) * tTheta)) / (s1c * Sqr(tTheta))) - s1c * Sqr(tTheta)), 8) 'Delta=N(d2)
        DELTAD2CVega = Round(CND(((lnofSK + ((r + s1cVega * s1cVega * 0.5) * t)) / (s1cVega * Sqr(t))) - s1cVega * Sqr(t)), 8) 'Delta=N(d2)
        DELTAD2CGamma = Round(CND(((lnofSKGamma + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))) - s1c * Sqr(t)), 8) 'Delta=N(d2) for gamma
    End If
End If

If t <= 0 And S > K Then
    DELTAD1P = 0
    DELTAD1PTheta = 0
    DELTAD1PVega = 0
    DELTAD1PGamma = 0
    DELTAD2P = 0
    DELTAD2PTheta = 0
    DELTAD2PVega = 0
    DELTAD2PGamma = 0
ElseIf t <= 0 And S < K Then
    DELTAD1C = K - S
    DELTAD1P = 0
    DELTAD1PTheta = 0
    DELTAD1PVega = 0
    DELTAD1PGamma = 0
    DELTAD2P = 0
    DELTAD2PTheta = 0
    DELTAD2PVega = 0
    DELTAD2PGamma = 0
ElseIf t <= 0 And S = K Then
    DELTAD1C = K - S
    DELTAD1P = 0
    DELTAD1PTheta = 0
    DELTAD1PVega = 0
    DELTAD1PGamma = 0
    DELTAD2P = 0
    DELTAD2PTheta = 0
    DELTAD2PVega = 0
    DELTAD2PGamma = 0
Else
    'Calculation of Put
    If txtDays = 1 Then
        DELTAD1P = Round(CND((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))), 8) 'Delta=N(d1)
    '    DELTAD1PTheta = Round(cnd((lnofSK + ((r + s1p * s1p * 0.5) * tTheta)) / (s1p * Sqr(tTheta))), 8) 'Delta=N(d1)
        DELTAD1PVega = Round(CND((lnofSK + ((r + s1pVega * s1pVega * 0.5) * t)) / (s1pVega * Sqr(t))), 8)   'Vega
        DELTAD1PGamma = Round(CND((lnofSKGamma + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))), 8) 'Delta=N(d1) 'gamma
        DELTAD2P = Round(CND(((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t)), 8) 'Delta=N(d2)
     '   DELTAD2PTheta = Round(cnd(((lnofSK + ((r + s1p * s1p * 0.5) * tTheta)) / (s1p * Sqr(tTheta))) - s1p * Sqr(tTheta)), 8) 'Delta=N(d2)
        DELTAD2PVega = Round(CND(((lnofSK + ((r + s1pVega * s1pVega * 0.5) * t)) / (s1pVega * Sqr(t))) - s1pVega * Sqr(t)), 8)     'Delta=N(d2)
        DELTAD2PGamma = Round(CND(((lnofSKGamma + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t)), 8) 'Delta=N(d2) for Gamma
    Else
        DELTAD1P = Round(CND((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))), 8) 'Delta=N(d1)
        DELTAD1PTheta = Round(CND((lnofSK + ((r + s1p * s1p * 0.5) * tTheta)) / (s1p * Sqr(tTheta))), 8) 'Delta=N(d1)
        DELTAD1PVega = Round(CND((lnofSK + ((r + s1pVega * s1pVega * 0.5) * t)) / (s1pVega * Sqr(t))), 8)   'Vega
        DELTAD1PGamma = Round(CND((lnofSKGamma + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))), 8) 'Delta=N(d1) 'gamma
        DELTAD2P = Round(CND(((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t)), 8) 'Delta=N(d2)
        DELTAD2PTheta = Round(CND(((lnofSK + ((r + s1p * s1p * 0.5) * tTheta)) / (s1p * Sqr(tTheta))) - s1p * Sqr(tTheta)), 8) 'Delta=N(d2)
        DELTAD2PVega = Round(CND(((lnofSK + ((r + s1pVega * s1pVega * 0.5) * t)) / (s1pVega * Sqr(t))) - s1pVega * Sqr(t)), 8)     'Delta=N(d2)
        DELTAD2PGamma = Round(CND(((lnofSKGamma + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t)), 8) 'Delta=N(d2) for Gamma
    End If
End If

If strCP = "C" Then
                                
    List.SubItems(2) = 0
    List.ListSubItems(2).ForeColor = lngColor1
    List.ListSubItems(2).Bold = True
            '------------------
                
    List.SubItems(3) = 0
    List.ListSubItems(3).ForeColor = lngColor1
    List.ListSubItems(3).Bold = True
    '------------------
                
    If t <= 0 And S > K Then
        List.SubItems(4) = S - K
        List.ListSubItems(4).ForeColor = lngColor1
        List.ListSubItems(4).Bold = True
        '------------------
        
        List.SubItems(6) = 100
        List.ListSubItems(6).ForeColor = lngColor1
        List.ListSubItems(6).Bold = True
        '------------------
                        
        List.SubItems(7) = 0
        List.ListSubItems(7).ForeColor = lngColor1
        List.ListSubItems(7).Bold = True
        '------------------
        
        List.SubItems(8) = 0
        List.ListSubItems(8).ForeColor = lngColor1
        List.ListSubItems(8).Bold = True
        '------------------
                        
        List.SubItems(9) = 0
        List.ListSubItems(9).ForeColor = lngColor1
        List.ListSubItems(9).Bold = True
        '------------------
        
        List.SubItems(10) = 0
        List.ListSubItems(10).ForeColor = lngColor1
        List.ListSubItems(10).Bold = True
        '------------------
                        
        List.SubItems(11) = 0
        List.ListSubItems(11).ForeColor = lngColor1
        List.ListSubItems(11).Bold = True
        '------------------
        
        List.SubItems(12) = 0
        List.ListSubItems(12).ForeColor = lngColor1
        List.ListSubItems(12).Bold = True
        '------------------
        
        List.SubItems(13) = 0
        List.ListSubItems(13).ForeColor = lngColor1
        List.ListSubItems(13).Bold = True
        '------------------
                    
        ElseIf t <= 0 And S < K Then
            List.SubItems(4) = 0
            List.ListSubItems(4).ForeColor = lngColor1
            List.ListSubItems(4).Bold = True
            '------------------
            
            List.SubItems(6) = 0
            List.ListSubItems(6).ForeColor = lngColor1
            List.ListSubItems(6).Bold = True
            '------------------
            
            List.SubItems(7) = 0
            List.ListSubItems(7).ForeColor = lngColor1
            List.ListSubItems(7).Bold = True
            '------------------
            
            List.SubItems(8) = 0
            List.ListSubItems(8).ForeColor = lngColor1
            List.ListSubItems(8).Bold = True
            '------------------
            
            List.SubItems(9) = 0
            List.ListSubItems(9).ForeColor = lngColor1
            List.ListSubItems(9).Bold = True
            '------------------
            
            List.SubItems(10) = 0
            List.ListSubItems(10).ForeColor = lngColor1
            List.ListSubItems(10).Bold = True
            '------------------
            
            List.SubItems(11) = 0
            List.ListSubItems(11).ForeColor = lngColor1
            List.ListSubItems(11).Bold = True
            '------------------
            
            List.SubItems(12) = 0
            List.ListSubItems(12).ForeColor = lngColor1
            List.ListSubItems(12).Bold = True
            '------------------
            
            List.SubItems(13) = 0
            List.ListSubItems(13).ForeColor = lngColor1
            List.ListSubItems(13).Bold = True
            '------------------
            
        ElseIf t <= 0 And S = K Then
            List.SubItems(4) = 0
            List.ListSubItems(4).ForeColor = lngColor1
            List.ListSubItems(4).Bold = True
            '------------------
            
            List.SubItems(6) = 50
            List.ListSubItems(6).ForeColor = lngColor1
            List.ListSubItems(6).Bold = True
            '------------------
            
            List.SubItems(7) = 0
            List.ListSubItems(7).ForeColor = lngColor1
            List.ListSubItems(7).Bold = True
            '------------------
            
            List.SubItems(8) = 0
            List.ListSubItems(8).ForeColor = lngColor1
            List.ListSubItems(8).Bold = True
            '------------------
            
            List.SubItems(9) = 0
            List.ListSubItems(9).ForeColor = lngColor1
            List.ListSubItems(9).Bold = True
            '------------------
            
            List.SubItems(10) = 0
            List.ListSubItems(10).ForeColor = lngColor1
            List.ListSubItems(10).Bold = True
            '------------------
            
            List.SubItems(11) = 0
            List.ListSubItems(11).ForeColor = lngColor1
            List.ListSubItems(11).Bold = True
            '------------------
            
            List.SubItems(12) = 0
            List.ListSubItems(12).ForeColor = lngColor1
            List.ListSubItems(12).Bold = True
            '------------------
            
            List.SubItems(13) = 0
            List.ListSubItems(13).ForeColor = lngColor1
            List.ListSubItems(13).Bold = True
            '------------------
            
        Else
            List.SubItems(4) = Round((S * DELTAD1C - (K * Exp(-r * t) * DELTAD2C)), 3) 'Last
            List.ListSubItems(4).ForeColor = lngColor1
            List.ListSubItems(4).Bold = True
            '------------------
            
            List.SubItems(6) = Round(Round(CND((lnofSK + ((r + s1c * s1c * 0.5) * t)) / (s1c * Sqr(t))), 8) * 100, 1) 'Round(cnd(d1C), 8) * 100 'delta
            List.ListSubItems(6).ForeColor = lngColor1
            List.ListSubItems(6).Bold = True
            '------------------
            
            List.SubItems(7) = 0
            List.ListSubItems(7).ForeColor = lngColor1
            List.ListSubItems(7).Bold = True
            '------------------
            
          
            'List.SubItems(8) = Round((S * DELTAD1C - (K * Exp(-r * t) * DELTAD2C)) - (S * DELTAD1CTheta - (K * Exp(-r * tTheta) * DELTAD2CTheta)), 3)
            If Val(txtDays.Text) = 1 Then
                'List.SubItems(8) = Round(Val(List.SubItems(4)) - ((S * DELTAD1C - (K * Exp(-r * tTheta) * DELTAD2C))), 3) ' theta
                If S > K Then
                    List.SubItems(8) = Round(-Val(List.SubItems(4)) - (Val(K) - Val(S)), 3) ' theta

                    List.SubItems(8) = -Val(List.SubItems(8))
                    List.ListSubItems(8).ForeColor = lngColor1
                    List.ListSubItems(8).Bold = True
                    '------------------
                    
                ElseIf S < K Then
                    List.SubItems(8) = Round(Val(List.SubItems(4)), 3) ' theta
                    List.ListSubItems(8).ForeColor = lngColor1
                    List.ListSubItems(8).Bold = True
                    '------------------
                    
                Else
                    List.SubItems(8) = Round(Val(List.SubItems(4)), 3) ' theta
                    List.ListSubItems(8).ForeColor = lngColor1
                    List.ListSubItems(8).Bold = True
                    '------------------
                    
                End If
            Else
                List.SubItems(8) = Round(Val(List.SubItems(4)) - ((S * DELTAD1CTheta - (K * Exp(-r * tTheta) * DELTAD2CTheta))), 3) ' theta
                List.ListSubItems(8).ForeColor = lngColor1
                List.ListSubItems(8).Bold = True
                '------------------
            
            End If
         'List.SubItems(8) = Val(Left(List.SubItems(8), 5))
        List.SubItems(9) = 0
        List.ListSubItems(9).ForeColor = lngColor1
        List.ListSubItems(9).Bold = True
        '------------------
        
        List.SubItems(10) = -(Round(List.SubItems(4) - (Round((S * DELTAD1CVega - (K * Exp(-r * t) * DELTAD2CVega)), 3)), 3))  ' vega
        List.ListSubItems(10).ForeColor = lngColor1
        List.ListSubItems(10).Bold = True
        '------------------
            
        List.SubItems(11) = 0
        List.ListSubItems(11).ForeColor = lngColor1
        List.ListSubItems(11).Bold = True
        '------------------
        
        List.SubItems(12) = -(Round(DELTAD1C - DELTAD1CGamma, 4)) ' Gamma
        List.ListSubItems(12).ForeColor = lngColor1
        List.ListSubItems(12).Bold = True
        '------------------
        
        List.SubItems(13) = 0
        List.ListSubItems(13).ForeColor = lngColor1
        List.ListSubItems(13).Bold = True
        '------------------
    End If
        
        List.SubItems(5) = Val(txtCall.Text) 'lv
        List.ListSubItems(5).ForeColor = lngColor1
        List.ListSubItems(5).Bold = True
        '------------------
End If

If strCP = "P" Then
                                
    List.SubItems(2) = 0
    List.ListSubItems(2).ForeColor = lngColor1
    List.ListSubItems(2).Bold = True
    '----------------
    
    List.SubItems(3) = 0
    List.ListSubItems(3).ForeColor = lngColor1
    List.ListSubItems(3).Bold = True
    '----------------
                
    If t <= 0 And S > K Then
        List.SubItems(4) = 0
        List.ListSubItems(4).ForeColor = lngColor1
        List.ListSubItems(4).Bold = True
        '----------------
    
        List.SubItems(6) = 0
        List.ListSubItems(6).ForeColor = lngColor1
        List.ListSubItems(6).Bold = True
        '----------------
        
        List.SubItems(7) = 0
        List.ListSubItems(7).ForeColor = lngColor1
        List.ListSubItems(7).Bold = True
        '----------------
        
        List.SubItems(8) = 0
        List.ListSubItems(8).ForeColor = lngColor1
        List.ListSubItems(8).Bold = True
        '----------------
        
        List.SubItems(9) = 0
        List.ListSubItems(9).ForeColor = lngColor1
        List.ListSubItems(9).Bold = True
        '----------------
        
        List.SubItems(10) = 0
        List.ListSubItems(10).ForeColor = lngColor1
        List.ListSubItems(10).Bold = True
        '----------------
        
        List.SubItems(11) = 0
        List.ListSubItems(11).ForeColor = lngColor1
        List.ListSubItems(11).Bold = True
        '----------------
        
        List.SubItems(12) = 0
        List.ListSubItems(12).ForeColor = lngColor1
        List.ListSubItems(12).Bold = True
        '----------------
        
        List.SubItems(13) = 0
        List.ListSubItems(13).ForeColor = lngColor1
        List.ListSubItems(13).Bold = True
        '----------------
        
    ElseIf t <= 0 And S < K Then
        List.SubItems(4) = K - S
        List.ListSubItems(4).ForeColor = lngColor1
        List.ListSubItems(4).Bold = True
        '----------------
        
        List.SubItems(6) = -100
        List.ListSubItems(6).ForeColor = lngColor1
        List.ListSubItems(6).Bold = True
        '----------------
        
        List.SubItems(7) = 0
        List.ListSubItems(7).ForeColor = lngColor1
        List.ListSubItems(7).Bold = True
        '----------------
        
        List.SubItems(8) = 0
        List.ListSubItems(8).ForeColor = lngColor1
        List.ListSubItems(8).Bold = True
        '----------------
        
        List.SubItems(9) = 0
        List.ListSubItems(9).ForeColor = lngColor1
        List.ListSubItems(9).Bold = True
        '----------------
        
        List.SubItems(10) = 0
        List.ListSubItems(10).ForeColor = lngColor1
        List.ListSubItems(10).Bold = True
        '----------------
        
        List.SubItems(11) = 0
        List.ListSubItems(11).ForeColor = lngColor1
        List.ListSubItems(11).Bold = True
        '----------------
        
        List.SubItems(12) = 0
        List.ListSubItems(12).ForeColor = lngColor1
        List.ListSubItems(12).Bold = True
        '----------------
        
        List.SubItems(13) = 0
        List.ListSubItems(13).ForeColor = lngColor1
        List.ListSubItems(13).Bold = True
        '----------------
        
    ElseIf t <= 0 And S = K Then
        List.SubItems(4) = 0
        List.ListSubItems(4).ForeColor = lngColor1
        List.ListSubItems(4).Bold = True
        '----------------
        
        List.SubItems(6) = -50
        List.ListSubItems(6).ForeColor = lngColor1
        List.ListSubItems(6).Bold = True
        '----------------
        
        List.SubItems(7) = 0
        List.ListSubItems(7).ForeColor = lngColor1
        List.ListSubItems(7).Bold = True
        '----------------
        
        List.SubItems(8) = 0
        List.ListSubItems(8).ForeColor = lngColor1
        List.ListSubItems(8).Bold = True
        '----------------
        
        List.SubItems(9) = 0
        List.ListSubItems(9).ForeColor = lngColor1
        List.ListSubItems(9).Bold = True
        '----------------
        
        List.SubItems(10) = 0
        List.ListSubItems(10).ForeColor = lngColor1
        List.ListSubItems(10).Bold = True
        '----------------
        
        List.SubItems(11) = 0
        List.ListSubItems(11).ForeColor = lngColor1
        List.ListSubItems(11).Bold = True
        '----------------
        
        List.SubItems(12) = 0
        List.ListSubItems(12).ForeColor = lngColor1
        List.ListSubItems(12).Bold = True
        '----------------
        
        List.SubItems(13) = 0
        List.ListSubItems(13).ForeColor = lngColor1
        List.ListSubItems(13).Bold = True
        '----------------
        
    Else
        List.SubItems(4) = Round((K * Exp(-r * (t)) * Round(CND(-(((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t))), 8)) - (S * Round(CND(-((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t)))), 8)), 3)
        'List.SubItems(4) = Round((K * Exp(-r * (t)) * Round(cnd(-(((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t))), 8)) - (S * Round(cnd(-((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t)))), 8)), 3)
        'List.SubItems(4) = Val(Left(List.SubItems(4), 5))
        'Debug.Print Round((K * Exp(-r * (t)) * Round(CND(-(((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t))), 8)) - (S * Round(CND(-((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t)))), 8)), 3)
        List.ListSubItems(4).ForeColor = lngColor1
        List.ListSubItems(4).Bold = True
        '----------------
        
        List.SubItems(6) = Round(Round((DELTAD1P - 1), 8) * 100, 1) '(Round(cnd(d21P), 8) - 1) * 100
        List.ListSubItems(6).ForeColor = lngColor1
        List.ListSubItems(6).Bold = True
        '----------------
        
        List.SubItems(7) = 0
        List.ListSubItems(7).ForeColor = lngColor1
        List.ListSubItems(7).Bold = True
        '----------------
                    
'                If K = 2900 Then
'                MsgBox "F"
'                End If
        If Val(txtDays.Text) = 1 And List.SubItems(1) = "P" Then
            If S > K Then
                List.SubItems(8) = Round(Val(List.SubItems(4)), 3) ' theta
                List.ListSubItems(8).ForeColor = lngColor1
                List.ListSubItems(8).Bold = True
                '----------------
                
            ElseIf S < K Then
                List.SubItems(8) = Round((Val(K) - Val(S)) - Val(List.SubItems(4)), 3) ' theta
                List.SubItems(8) = -Val(List.SubItems(8))
                List.ListSubItems(8).ForeColor = lngColor1
                List.ListSubItems(8).Bold = True
                '----------------
            Else
                List.SubItems(8) = Round(Val(List.SubItems(4)), 3) ' theta
                List.ListSubItems(8).ForeColor = lngColor1
                List.ListSubItems(8).Bold = True
                '----------------
            End If
        'List.SubItems(8) = Round(List.SubItems(4) - Round((K * Exp(-r * (t)) * Round(cnd(-(((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))) - s1p * Sqr(t))), 8)) - (S * Round(cnd(-((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t)))), 8)), 5), 3)  'Theta
        Else
            List.SubItems(8) = Round(List.SubItems(4) - Round((K * Exp(-r * (tTheta)) * Round(CND(-(((lnofSK + ((r + s1p * s1p * 0.5) * tTheta)) / (s1p * Sqr(tTheta))) - s1p * Sqr(tTheta))), 8)) - (S * Round(CND(-((lnofSK + ((r + s1p * s1p * 0.5) * tTheta)) / (s1p * Sqr(tTheta)))), 8)), 5), 3)  'Theta
            List.ListSubItems(8).ForeColor = lngColor1
            List.ListSubItems(8).Bold = True
            '----------------
        End If
        'List.SubItems(8) = Val(Left(List.SubItems(8), 5))
        'd = List.SubItems(8)
        List.SubItems(9) = 0
        List.ListSubItems(9).ForeColor = lngColor1
        List.ListSubItems(9).Bold = True
        '----------------
            
        List.SubItems(10) = -(Round(List.SubItems(4) - Round((K * Exp(-r * (t)) * Round(CND(-(((lnofSK + ((r + s1pVega * s1pVega * 0.5) * t)) / (s1pVega * Sqr(t))) - s1pVega * Sqr(t))), 8)) - (S * Round(CND(-((lnofSK + ((r + s1pVega * s1pVega * 0.5) * t)) / (s1pVega * Sqr(t)))), 8)), 3), 3))  'Vega
        List.ListSubItems(10).ForeColor = lngColor1
        List.ListSubItems(10).Bold = True
        '----------------
        
        List.SubItems(11) = 0
        List.ListSubItems(11).ForeColor = lngColor1
        List.ListSubItems(11).Bold = True
        '----------------
        
        List.SubItems(12) = -(Round(DELTAD1P - DELTAD1PGamma, 4)) ' Gamma
        List.ListSubItems(12).ForeColor = lngColor1
        List.ListSubItems(12).Bold = True
        '----------------
        
        List.SubItems(13) = 0
        List.ListSubItems(13).ForeColor = lngColor1
        List.ListSubItems(13).Bold = True
        '----------------
        
    End If
    List.SubItems(5) = Val(txtPut.Text)
    List.ListSubItems(5).ForeColor = lngColor1
    List.ListSubItems(5).Bold = True
    '--------------- Upto Here............
    'List.SubItems(6) = Round(Round(cnd((lnofSK + ((r + s1p * s1p * 0.5) * t)) / (s1p * Sqr(t))), 8) * 100, 1) 'Round(cnd(d1C), 8) * 100 'delta
End If
End Sub



Private Sub cmdCalculator_Click()
On Error Resume Next
Shell "calc.exe", vbNormalFocus
End Sub

Private Sub cmdclose_Click()
Unload Me
End Sub

Private Sub cmdExcelList_Click()
Call ExporttoExcelFromListview(CommonDialog1, lstDetails1)
End Sub


Public Sub MenusOnLoad()
'File Menus


MDIMain.mnuFileOpenPortfolio.Enabled = False
MDIMain.mnuFileSavePortfolio.Enabled = False
MDIMain.mnuFileDeletePortfolio.Enabled = False
MDIMain.mnuFileClose.Enabled = True

MDIMain.mnuUpload.Enabled = False 'Whole Upload Menu
MDIMain.mnuUtility.Enabled = False 'Whole Utility Menu
MDIMain.mnuCheckStrike.Enabled = False

MDIMain.mnuReports.Enabled = False 'Whole Report Menu
MDIMain.mnuMasters.Enabled = False 'Whole Master Menu

End Sub


Private Sub Form_Load()
Dim rsDelete As ADODB.Recordset

Call MenusOnLoad

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



'Deleting Records from DummytrackerTemp
Set rsDelete = New ADODB.Recordset
rsDelete.Open "Delete * from DummyTrackerTemp", con, adOpenKeyset, adLockPessimistic
Set rsDelete = Nothing

    
blnPubIsUserPortfolioOpen = True

frmPortfolio_UserCode.Caption = frmPortfolio_UserCode.Caption & "-" & userinfo.SELUSERCD


Call LOCKALL
    
txtDate.Text = Format(Date, "dd-MMM-yyyy")
    

MDIMain.Toolbar1.Enabled = False
MDIMain.cmbPortfolioList.Visible = False
MDIMain.txtPortfolio.Visible = False
        
Call SetTabs
Call CLEARALL
Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1))
Call FillStrike
Call CalculateSummary

End Sub

Private Sub Form_Unload(Cancel As Integer)
blnPubIsUserPortfolioOpen = False



If blnPubUserSummaryPortfolioOpen = True Then
    frmUserSummaryPortfolio.Show
    frmUserSummaryPortfolio.MenusOnLoad
    Exit Sub
End If

If blnPubUsersTotalSummary = True And blnPubUserSummaryPortfolioOpen = False Then
    frmUserTotalSummary.Show
    frmUserSummaryPortfolio.MenusOnLoad
    Exit Sub
End If

MDIMain.EnabledOnFirstLoad

'    Dim intRes As Integer
'
'    If blnPubIsUsersDetailPortfolioOpen = True Then
'         blnPubIsPortfolioOpen = False
'         Exit Sub
'    End If
'
'   If blnIsOptionTempAdd = True Or blnIsFutureTempAdd = True Then
'        intRes = MsgBox("Are you sure to close this portfolio without saving hand entries? Press Ok to close this form...", vbQuestion + vbOKCancel, "Hand Entries")
'        If intRes = vbCancel Then
'            Cancel = True
'            Exit Sub
'        End If
'        blnIsOptionTempAdd = False
'        blnIsFutureTempAdd = False
'        cmdSave.ToolTipText = ""
'        MDIMain.mnuFileSavePortfolio.Visible = False
'   End If
'   blnPubIsPortfolioOpen = False
'   MDIMain.cmbPortfolioList.Visible = False
'   MDIMain.mnuSettingsCarryForward.Enabled = False
'   MDIMain.mnuViewMultiContract.Enabled = False
'   MDIMain.mnuUploadBhavcopyFile.Enabled = False
'   MDIMain.txtPortfolio.Visible = False
'    MDIMain.cmbPortfolioList.Visible = False
'   If blnIsPortfolioMIS = True Then
'        Exit Sub
'   End If
'   If blnIsTabExceeds = True Then
'        'Load frmSummaryPortfolio
'        frmSummaryPortfolio.Show
'        'frmSummaryPortfolio.MenusOnLoad
'        MDIMain.Toolbar1.Enabled = False
'        Exit Sub
'   End If
'   Call MDIMain.EnabledOnFirstLoad
End Sub






Public Sub SSTab2_Click(PreviousTab As Integer)
Call CLEARALL
Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1))
Call FillStrike
Call CalculateSummary
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

    Call CLEARALL
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

  
Call CLEARALL
'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary

End Sub

Private Sub txtDate_GotFocus()
txtDate.SelStart = 0
txtDate.SelLength = Len(txtDate.Text)
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

    Call CLEARALL
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
    
    Call CLEARALL
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
    
End If
End Sub


Private Sub txtExpDt_Change()
txtExpDt.Text = Format(CDate(txtExpDt.Text), "dd-MMM-yyyy")
End Sub

Private Sub txtExpDt_GotFocus()
txtExpDt.SelStart = 0
txtExpDt.SelLength = Len(txtExpDt.Text)
End Sub

Private Sub txtPut_GotFocus()
txtPut.SelStart = 0
txtPut.SelLength = Len(txtPut.Text)
End Sub

Private Sub txtPut_KeyPress(KeyAscii As Integer)


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
    
    Call CLEARALL
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


Call CLEARALL
'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
Call FillStrike
Call CalculateSummary
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
    
    
    
    Call CLEARALL
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
    
    
    Call CLEARALL
    'Call FillDetails(Left(SSTab2.Caption, Len(SSTab2.Caption) - 1))
    Call FillStrike
    Call CalculateSummary
End If
End Sub





Public Sub SetTabs()
Dim strTab As String
Dim rsTab As ADODB.Recordset
Dim I As Integer
Dim cmd As ADODB.Command
Dim rsCMD As ADODB.Recordset

Dim intTabCount As Integer


Set rsCMD = New ADODB.Recordset
rsCMD.CursorType = adOpenKeyset
rsCMD.LockType = adLockOptimistic
Set cmd = New ADODB.Command
cmd.ActiveConnection = con
cmd.CommandType = adCmdStoredProc
cmd.CommandText = "QrySelectUsersScript"
cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))
Set rsCMD = cmd.Execute
intTabCount = 1
If rsCMD.EOF = False Then
    If blnIsUserTabExceeds = False Then
        While Not rsCMD.EOF
            SSTab2.Tabs = intTabCount
            If intTabCount > 1 Then
                SSTab2.Tab = SSTab2.Tab + 1
            End If
            
            SSTab2.Caption = UCase(rsCMD!Script) & " " & UCase(Format(CDate(rsCMD!ExpDt), "MMM-YY")) & "-" & userinfo.SELUSERCD
            intTabCount = intTabCount + 1
            rsCMD.MoveNext
        Wend
    Else
        SSTab2.Tabs = 1
        SSTab2.Caption = UCase(rsCMD!Script) & " " & UCase(Format(CDate(rsCMD!ExpDt), "MMM-YY")) & "-" & userinfo.SELUSERCD
    End If
    SSTab2.Tab = 0
End If
rsCMD.Close
Set rsCMD = Nothing
Set cmd = Nothing

'ComboFillup "RepFullSheetM", "Index", "My_strDesc", " cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') and isnull(usercd)", MDIMain.cmbPortfolioList
'blnCmbPortFolio = True
'MDIMain.cmbPortfolioList.Text = Left(SSTab2.Caption, Len(SSTab2.Caption) - 1)
'blnCmbPortFolio = False
End Sub


Public Sub FillDetails(strPortfolio As String)
Dim strQ As String
Dim rsQ As ADODB.Recordset
strQ = "Select * From RepFullSheetM Where My_strDesc='" & strPortfolio & "' and IsNull(UserCD)"
Set rsQ = New ADODB.Recordset
rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic

If rsQ.EOF = False Then
    Index = rsQ!Index
    SYMBOL = rsQ!Symbolname
    txtExpDt.Text = Format(CDate(rsQ!ExpDt), "dd-mmm-yyyy")
    txtDate.Text = Format(CDate(Date), "dd-mmm-yyyy")
    
    txtRate.Text = rsQ!MkPrice
    dblPreviousRate = Val(txtRate.Text)
    
    txtDays.Text = DateDiff("D", CDate(txtDate.Text), CDate(txtExpDt.Text))
    RateDiff = rsQ!RateDiff
    StAbovetxt = rsQ!StAbovetxt
    StBelowtxt = rsQ!StBelowtxt
    IntRate = rsQ!IntRate
    txtCall.Text = rsQ!Call
    dblPreviousCall = Val(txtCall.Text)
    
    txtPut.Text = rsQ!Put
    dblPreviousPut = Val(txtPut.Text)
    
    MidStrike = rsQ!MidStrike
End If
rsQ.Close
Set rsQ = Nothing
End Sub

Public Sub CalculateSummary()

Call CalculateFuture
Call CalculateStock
Call CalculateOption
Call CalculateTrade

For intCount = 1 To lstDetails1.ListItems.count
    If lstDetails1.ListItems(intCount).SubItems(1) = "C" And lstDetails1.ListItems(intCount).SubItems(2) <> 0 Then
        txtDetalC.Text = Val(txtDetalC.Text) + lstDetails1.ListItems(intCount).SubItems(7)
        txtThetaC.Text = Val(txtThetaC.Text) + lstDetails1.ListItems(intCount).SubItems(9)
        txtVegaC.Text = Val(txtVegaC.Text) + lstDetails1.ListItems(intCount).SubItems(11)
        txtGammaC.Text = Round(Val(txtGammaC.Text) + lstDetails1.ListItems(intCount).SubItems(13), 2)
        txtCUnits.Text = Val(txtCUnits.Text) + lstDetails1.ListItems(intCount).SubItems(2)
    ElseIf lstDetails1.ListItems(intCount).SubItems(1) = "P" And lstDetails1.ListItems(intCount).SubItems(2) <> 0 Then
        txtDetalP.Text = Val(txtDetalP.Text) + lstDetails1.ListItems(intCount).SubItems(7)
        txtThetaP.Text = Val(txtThetaP.Text) + lstDetails1.ListItems(intCount).SubItems(9)
        txtVegaP.Text = Val(txtVegaP.Text) + lstDetails1.ListItems(intCount).SubItems(11)
        txtGammaP.Text = Round(Val(txtGammaP.Text) + lstDetails1.ListItems(intCount).SubItems(13), 2)
        txtPUnits.Text = Val(txtPUnits.Text) + lstDetails1.ListItems(intCount).SubItems(2)
    End If

    txtTotal_DelVal.Text = Val(txtTotal_DelVal.Text) + lstDetails1.ListItems(intCount).SubItems(7)
    txtTotal_ThetaVal.Text = Val(txtTotal_ThetaVal.Text) + lstDetails1.ListItems(intCount).SubItems(9)
    txtTotal_VGVal.Text = Val(txtTotal_VGVal.Text) + lstDetails1.ListItems(intCount).SubItems(11)
    txtTotal_GMVal.Text = Round(Val(txtTotal_GMVal.Text) + lstDetails1.ListItems(intCount).SubItems(13), 2)
    txtPremium.Text = Val(txtPremium.Text) + (lstDetails1.ListItems(intCount).SubItems(2) * lstDetails1.ListItems(intCount).SubItems(3))
    txtOU.Text = Val(txtOU.Text) + (lstDetails1.ListItems(intCount).SubItems(2) * lstDetails1.ListItems(intCount).SubItems(4))
Next

txtTotal_DelVal.Text = Round(Val(txtTotal_DelVal.Text), 0)
txtTotal_ThetaVal.Text = Round(Val(txtTotal_ThetaVal.Text), 0)
txtTotal_VGVal.Text = Round(Val(txtTotal_VGVal.Text), 0)
txtTotal_GMVal.Text = Val(txtTotal_GMVal.Text)

txtDetalC.Text = Round(Val(txtDetalC.Text), 0)
txtThetaC.Text = Round(Val(txtThetaC.Text), 0)
txtVegaC.Text = Round(Val(txtVegaC.Text), 0)
txtGammaC.Text = Round(Val(txtGammaC.Text), 2)

txtDetalP.Text = Round(Val(txtDetalP.Text), 0)
txtThetaP.Text = Round(Val(txtThetaP.Text), 0)
txtVegaP.Text = Round(Val(txtVegaP.Text), 0)
txtGammaP.Text = Round(Val(txtGammaP.Text), 2)

txtTot_Delta.Text = Val(txtDetalC.Text) + Val(txtDetalP.Text) 'Round(Val(txtTotal_DelVal.Text), 0)
txtTot_Theta.Text = Val(txtThetaC.Text) + Val(txtThetaP.Text)
txtTot_Gamma.Text = Val(txtGammaC.Text) + Val(txtGammaP.Text)
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

If Val(txtPremium.Text) < 0 Then
    txtPremium.ForeColor = vbBlue
Else
    txtPremium.ForeColor = vbRed
End If
If Val(txtFSR.Text) < 0 Then
    txtFSR.ForeColor = vbBlue
Else
    txtFSR.ForeColor = vbRed
End If
If Val(txtOR.Text) < 0 Then
    txtOR.ForeColor = vbBlue
Else
    txtOR.ForeColor = vbRed
End If
If Val(txtFSU.Text) < 0 Then
    txtFSU.ForeColor = vbBlue
Else
    txtFSU.ForeColor = vbRed
End If

If Val(txtOU.Text) < 0 Then
    txtOU.ForeColor = vbBlue
Else
    txtOU.ForeColor = vbRed
End If

txtPremium.Text = Round(-Val(txtPremium.Text), 2)
txtFSR.Text = Round(-Val(txtFSR.Text), 2)
txtOR.Text = Round(-Val(txtOR.Text), 2)
txtFSU.Text = Round(-Val(txtFSU.Text), 2)
txtOU.Text = Round(-Val(txtOU.Text), 2)
txtBalance.Text = Round(Val(txtPremium.Text) + Val(txtFSR.Text) + Val(txtOR.Text) + Val(txtOU.Text) + Val(txtFSU.Text), 2)

If Val(txtBalance.Text) < 0 Then
    txtBalance.ForeColor = vbRed
Else
    txtBalance.ForeColor = vbBlue
End If

Call CalculateExpense
    
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
cmd.CommandText = "QryTodaysStockUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))


Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
Do Until rsCNT.EOF
    If Left(rsCNT!cashtype, 1) = "E" Or Left(rsCNT!cashtype, 1) = "O" Then
       If rsCNT!cp = "" Or IsNull(rsCNT!cp) Or rsCNT!cp = "1" Then
            If IsNull(rsCNT!STOCKQTY) Then
            Else
                'Code Changes 21/09/2008
                STOCKSA = STOCKSA + rsCNT!STOCK
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
cmd.CommandText = "QryPreviousStockUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
    Do Until rsCNT.EOF
        If Left(rsCNT!cashtype, 1) = "E" Or Left(rsCNT!cashtype, 1) = "O" Then
           If rsCNT!cp = "" Or IsNull(rsCNT!cp) Or rsCNT!cp = "1" Then
                If IsNull(rsCNT!STOCKQTY) Then
                Else
                    'Code Changes 21/09/2008
                    STOCKSD = STOCKSD + rsCNT!STOCK
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
cmd.CommandText = "QryTodaysFutureUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
    Do Until rsCNT.EOF
        If rsCNT!cp = "" Or IsNull(rsCNT!cp) Or rsCNT!cp = "1" Then
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
cmd.CommandText = "QryPreviousFutureUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsCNT = New ADODB.Recordset
Set rsCNT = cmd.Execute
If rsCNT.EOF = False Then
    Do Until rsCNT.EOF
        If rsCNT!cp = "" Or IsNull(rsCNT!cp) Or rsCNT!cp = "1" Then
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
cmd.CommandText = "QryUnitsTradedUserCodeWiseSummary"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsOR = New ADODB.Recordset
Set rsOR = cmd.Execute
If rsOR.EOF = False Then
    Do Until rsOR.EOF
        If rsOR!cp = "" Or IsNull(rsOR!cp) Or rsOR!cp = "1" Then
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
cmd.CommandText = "QryTodaysStockUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsStock = New ADODB.Recordset
Set rsStock = cmd.Execute
If rsStock.EOF = False Then
    Do Until rsStock.EOF
        If Left(rsStock!cashtype, 1) = "E" Then
           If rsStock!cp = "" Or IsNull(rsStock!cp) Or rsStock!cp = "1" Then
                If IsNull(rsStock!STOCKQTY) = False Then
                    'Code Chnages 21/08/2008
                    STOCKSA = STOCKSA + rsStock!STOCK
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
cmd.CommandText = "QryPreviousStockUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsStock = New ADODB.Recordset
Set rsStock = cmd.Execute
If rsStock.EOF = False Then
    Do Until rsStock.EOF
    If Left(rsStock!cashtype, 1) = "E" Then
       If rsStock!cp = "" Or IsNull(rsStock!cp) Or rsStock!cp = "1" And Left(rsStock!cashtype, 1) = "E" Then
            If IsNull(rsStock!STOCKQTY) = False Then
                'Code Chnages 21/08/2008
                STOCKSD = STOCKSD + rsStock!STOCK
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
cmd.CommandText = "QryTodaysFutureUserCodeWise"
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))
Set rsFuture = New ADODB.Recordset
Set rsFuture = cmd.Execute
If rsFuture.EOF = False Then
    Do Until rsFuture.EOF
        If rsFuture!cp = "" Or IsNull(rsFuture!cp) Or rsFuture!cp = "1" Then
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
cmd.CommandText = "QryPreviousFutureUserCodeWise"
FUTURESD = 0
cmd.Parameters.Append cmd.CreateParameter("Usercd", adChar, adParamInput, 50, Trim$(userinfo.SELUSERCD))
cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(txtExpDt.Text, "DD/MM/YYYY"))
cmd.Parameters.Append cmd.CreateParameter("SCRIPT", adChar, adParamInput, 50, Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 8))
cmd.Parameters.Append cmd.CreateParameter("TradeDate", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))

Set rsFuture = New ADODB.Recordset
Set rsFuture = cmd.Execute
If rsFuture.EOF = False Then
    Do Until rsFuture.EOF
        If rsFuture!cp = "" Or IsNull(rsFuture!cp) Or rsFuture!cp = "1" Then
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
On Error GoTo ErrorHandler

txtExposure.Text = 0
txtIntMargin.Text = 0
txtExp_Margin.Text = 0
txtEquity.Text = 0
txtCashTotal.Text = 0
txtPrvBalance.Text = 0
txtTExpense.Text = 0

If RS.State = 1 Then RS.Close
RS.Open "Select * from RepFullSheetM where My_strDesc='" & Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1) & "' and isnull(usercd) and cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "')", con, adOpenKeyset, adLockPessimistic
If Not RS.EOF Then
    Index = RS!Index
    Symbolname = RS!Symbolname
End If
RS.Close

Symbolname = Left(SSTab2.Caption, Len(SSTab2.Caption) - Len(userinfo.SELUSERCD) - 1)

RST2.Open "Select * from exp_mst", con, adOpenKeyset, adLockPessimistic
Exp_Per_Cr = Val(RST2!Exp_Per_Cr)
RST2.Close

RST2.Open "Select max(tr_date) as maxdate from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='" & Symbolname & "' and tr_date<cdate('" & Format(txtDate.Text, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
MaxDT = RST2!MaxDate
RST2.Close

If IsNull(MaxDT) Then
    txtPrvBalance.Text = 0
Else
    'MaxDT = Format(DateAdd("d", -1, CDate(MaxDT)), "dd-MMM-yyyy")
    RST2.Open "Select * from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='" & Symbolname & "' and tr_date=cdate('" & Format(MaxDT, "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt.Text, 2), con, adOpenKeyset, adLockPessimistic
    If Not RST2.EOF Then
        txtPrvBalance.Text = Val(RST2!closing)
    End If
    RST2.Close
End If



'logic for expense detl where we are showing todays expense in txtTExpense
RST2.Open "Select * from Exp_Detl where USERCD='" & userinfo.SELUSERCD & "' and Descr='" & Symbolname & "' and tr_date=cdate('" & Format(CDate(txtDate.Text), "dd/mm/yyyy") & "') and right(descr,2)=" & Right(txtExpDt, 2), con, adOpenKeyset, adLockPessimistic
If RST2.EOF Then
Else
    txtTExpense.Text = Val(RST2!TodaysExpenses)
    txtExposure.Text = Round(Val(RST2!TxtExposure_Margin) / Val(Exp_Per_Cr), 2)
    txtIntMargin.Text = Round(Val(RST2!Txtint_Margin))
    txtExp_Margin.Text = Round(Val(RST2!TxtExposure_Margin) / Val(Exp_Per_Cr), 2)
    
    txtEquity.Text = (Val(RST2!Equity))
    txtCashTotal.Text = Val(RST2!total)
End If
RST2.Close

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
txtTotal.Text = Val(txtTExpense.Text) + Val(txtPrvBalance.Text)

'this value required deduct from net profit(15/5/2009)
txtNetBalance.Text = Val(txtBalance.Text) - Val(txtTotal.Text)

If Val(txtExposure.Text) > 0 Then
    txtExposure.ForeColor = vbBlue
Else
    txtExposure.ForeColor = vbRed
End If


If Val(txtIntMargin.Text) > 0 Then
    txtIntMargin.ForeColor = vbBlue
Else
    txtIntMargin.ForeColor = vbRed
End If

If Val(txtExp_Margin.Text) > 0 Then
    txtExp_Margin.ForeColor = vbBlue
Else
    txtExp_Margin.ForeColor = vbRed
End If

If Val(txtEquity.Text) > 0 Then
    txtEquity.ForeColor = vbBlue
Else
    txtEquity.ForeColor = vbRed
End If

If Val(txtCashTotal.Text) > 0 Then
    txtCashTotal.ForeColor = vbBlue
Else
    txtCashTotal.ForeColor = vbRed
End If

If Val(txtPrvBalance.Text) > 0 Then
    txtPrvBalance.ForeColor = vbBlue
Else
    txtPrvBalance.ForeColor = vbRed
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

Exit Sub
ErrorHandler:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"

End Sub
