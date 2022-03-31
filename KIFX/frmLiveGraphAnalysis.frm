VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.ocx"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form frmLiveGraphAnalysisOld 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Graph Simulation"
   ClientHeight    =   7980
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12150
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmLiveGraphAnalysis.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7980
   ScaleWidth      =   12150
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdExcelList 
      BackColor       =   &H00FFFFFF&
      Height          =   330
      Left            =   11235
      Picture         =   "frmLiveGraphAnalysis.frx":000C
      Style           =   1  'Graphical
      TabIndex        =   52
      TabStop         =   0   'False
      ToolTipText     =   "Export to Excel"
      Top             =   30
      Width           =   405
   End
   Begin VB.Frame Frame2 
      Caption         =   "Chart Types"
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
      Height          =   4995
      Left            =   12195
      TabIndex        =   14
      Top             =   885
      Visible         =   0   'False
      Width           =   2055
      Begin VB.OptionButton ChartType 
         Caption         =   "3D Bar"
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   0
         Top             =   360
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D Bar"
         Height          =   270
         Index           =   1
         Left            =   120
         TabIndex        =   1
         Top             =   675
         Value           =   -1  'True
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "3D Line"
         Height          =   270
         Index           =   2
         Left            =   120
         TabIndex        =   2
         Top             =   990
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D Line"
         Height          =   270
         Index           =   3
         Left            =   120
         TabIndex        =   3
         Top             =   1305
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "3D Area"
         Height          =   270
         Index           =   4
         Left            =   120
         TabIndex        =   4
         Top             =   1620
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D Area"
         Height          =   270
         Index           =   5
         Left            =   120
         TabIndex        =   5
         Top             =   1935
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "3D Step"
         Height          =   270
         Index           =   6
         Left            =   120
         TabIndex        =   6
         Top             =   2250
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D Step"
         Height          =   270
         Index           =   7
         Left            =   120
         TabIndex        =   7
         Top             =   2565
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "3D Combination"
         Height          =   270
         Index           =   8
         Left            =   120
         TabIndex        =   8
         Top             =   2880
         Width           =   1815
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D Combination"
         Height          =   270
         Index           =   9
         Left            =   120
         TabIndex        =   9
         Top             =   3195
         Width           =   1830
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D Pie"
         Height          =   270
         Index           =   14
         Left            =   120
         TabIndex        =   10
         Top             =   3510
         Width           =   1440
      End
      Begin VB.OptionButton ChartType 
         Caption         =   "2D X-Y"
         Height          =   270
         Index           =   16
         Left            =   120
         TabIndex        =   11
         Top             =   3825
         Width           =   1440
      End
   End
   Begin VB.CommandButton cmdGraph 
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
      Left            =   12480
      Picture         =   "frmLiveGraphAnalysis.frx":0394
      Style           =   1  'Graphical
      TabIndex        =   12
      ToolTipText     =   "Show Graph"
      Top             =   75
      Visible         =   0   'False
      Width           =   375
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
      Left            =   11685
      Picture         =   "frmLiveGraphAnalysis.frx":0A06
      Style           =   1  'Graphical
      TabIndex        =   13
      ToolTipText     =   "Close"
      Top             =   15
      Width           =   390
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7815
      Left            =   75
      TabIndex        =   15
      Top             =   90
      Width           =   11985
      _ExtentX        =   21140
      _ExtentY        =   13785
      _Version        =   393216
      Style           =   1
      TabsPerRow      =   4
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Graph"
      TabPicture(0)   =   "frmLiveGraphAnalysis.frx":0B00
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "MSChart1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "cmbGraphType"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Rate Vs Days (Balance)"
      TabPicture(1)   =   "frmLiveGraphAnalysis.frx":0B1C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "fr"
      Tab(1).Control(1)=   "msfGrid"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "IV's And LTP"
      TabPicture(2)   =   "frmLiveGraphAnalysis.frx":0B38
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "lstDetails1"
      Tab(2).ControlCount=   1
      Begin VB.ComboBox cmbGraphType 
         BackColor       =   &H00C0FFFF&
         Height          =   330
         ItemData        =   "frmLiveGraphAnalysis.frx":0B54
         Left            =   9510
         List            =   "frmLiveGraphAnalysis.frx":0B7C
         Style           =   2  'Dropdown List
         TabIndex        =   48
         Top             =   315
         Width           =   2310
      End
      Begin MSChart20Lib.MSChart MSChart1 
         Height          =   7020
         Left            =   120
         OleObjectBlob   =   "frmLiveGraphAnalysis.frx":0BF6
         TabIndex        =   16
         Top             =   675
         Width           =   11760
      End
      Begin VB.Frame fr 
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
         Height          =   960
         Left            =   -74910
         TabIndex        =   18
         Top             =   6705
         Width           =   11700
         Begin MSComDlg.CommonDialog CommonDialog1 
            Left            =   9510
            Top             =   615
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin VB.TextBox txtRate 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
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
            Left            =   4530
            Locked          =   -1  'True
            TabIndex        =   51
            Top             =   525
            Width           =   1755
         End
         Begin VB.CommandButton cmdRefresh 
            Caption         =   "Refresh"
            Default         =   -1  'True
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   10050
            TabIndex        =   47
            Top             =   570
            Width           =   1560
         End
         Begin VB.TextBox txtStepDay 
            Alignment       =   1  'Right Justify
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
            Left            =   10320
            TabIndex        =   46
            Text            =   "1"
            Top             =   195
            Width           =   1290
         End
         Begin VB.TextBox txtIntervals 
            Alignment       =   1  'Right Justify
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
            Left            =   7545
            TabIndex        =   45
            Text            =   "10"
            Top             =   555
            Width           =   1290
         End
         Begin VB.TextBox txtStepRate 
            Alignment       =   1  'Right Justify
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
            Left            =   7545
            TabIndex        =   44
            Text            =   "10"
            Top             =   195
            Width           =   1290
         End
         Begin VB.ComboBox cboPortfolio 
            BackColor       =   &H0080C0FF&
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
            Left            =   1245
            Style           =   2  'Dropdown List
            TabIndex        =   38
            Top             =   540
            Width           =   2745
         End
         Begin VB.ComboBox cboUser 
            BackColor       =   &H0080C0FF&
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
            Left            =   1245
            Style           =   2  'Dropdown List
            TabIndex        =   37
            ToolTipText     =   "UserCodes with UserName (e.g. UserCode=UserName)"
            Top             =   180
            Width           =   2745
         End
         Begin VB.Frame fraRateScale 
            Caption         =   "Rate Scale"
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
            Height          =   1605
            Left            =   4380
            TabIndex        =   29
            Top             =   1980
            Width           =   3945
            Begin VB.TextBox txtFromRate 
               Alignment       =   1  'Right Justify
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
               Left            =   1410
               TabIndex        =   33
               Top             =   360
               Width           =   1920
            End
            Begin VB.TextBox txtToRate 
               Alignment       =   1  'Right Justify
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
               Left            =   1410
               TabIndex        =   32
               Top             =   1125
               Width           =   1920
            End
            Begin VB.TextBox txtRateStep 
               Alignment       =   1  'Right Justify
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
               Left            =   1410
               TabIndex        =   31
               Top             =   750
               Width           =   1920
            End
            Begin VB.CommandButton cmdClear 
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   360
               Left            =   3450
               Picture         =   "frmLiveGraphAnalysis.frx":3106
               Style           =   1  'Graphical
               TabIndex        =   30
               ToolTipText     =   "Clear"
               Top             =   1155
               Width           =   390
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "From Rate"
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
               Left            =   120
               TabIndex        =   36
               Top             =   360
               Width           =   1125
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "To Rate"
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
               Left            =   120
               TabIndex        =   35
               Top             =   1170
               Width           =   810
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Step"
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
               Left            =   120
               TabIndex        =   34
               Top             =   750
               Width           =   495
            End
         End
         Begin VB.Frame fraDaysScale 
            Caption         =   "Days Scale"
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
            Height          =   1575
            Left            =   3930
            TabIndex        =   21
            Top             =   3465
            Width           =   3945
            Begin VB.TextBox txtToDays 
               Alignment       =   1  'Right Justify
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
               Left            =   1365
               TabIndex        =   25
               Top             =   1095
               Width           =   1920
            End
            Begin VB.TextBox txtFromDays 
               Alignment       =   1  'Right Justify
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
               Left            =   1365
               TabIndex        =   24
               Top             =   300
               Width           =   1920
            End
            Begin VB.CommandButton cmdDaysClear 
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   360
               Left            =   3420
               Picture         =   "frmLiveGraphAnalysis.frx":3200
               Style           =   1  'Graphical
               TabIndex        =   23
               ToolTipText     =   "Clear"
               Top             =   1095
               Width           =   390
            End
            Begin VB.TextBox txtDaysStep 
               Alignment       =   1  'Right Justify
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
               Left            =   1365
               TabIndex        =   22
               Top             =   705
               Width           =   1920
            End
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               Caption         =   "From Days"
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
               Left            =   105
               TabIndex        =   28
               Top             =   345
               Width           =   1170
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "To Days"
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
               Left            =   105
               TabIndex        =   27
               Top             =   1080
               Width           =   855
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               Caption         =   "Step"
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
               Left            =   120
               TabIndex        =   26
               Top             =   705
               Width           =   495
            End
         End
         Begin VB.OptionButton optScriptWise 
            BackColor       =   &H00E0E0E0&
            Caption         =   "Script Wise"
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
            Left            =   5760
            TabIndex        =   20
            Top             =   840
            Visible         =   0   'False
            Width           =   1830
         End
         Begin VB.OptionButton optPortfolioWise 
            BackColor       =   &H00E0E0E0&
            Caption         =   "Portfolio Wise"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   5625
            TabIndex        =   19
            Top             =   780
            Value           =   -1  'True
            Visible         =   0   'False
            Width           =   1770
         End
         Begin VB.Label lblUser 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Current Market Rate"
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
            Index           =   4
            Left            =   4230
            TabIndex        =   50
            Top             =   210
            Width           =   2010
         End
         Begin VB.Label lblUser 
            AutoSize        =   -1  'True
            Caption         =   "Days Step"
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
            Index           =   3
            Left            =   9150
            TabIndex        =   43
            Top             =   195
            Width           =   1005
         End
         Begin VB.Label lblUser 
            AutoSize        =   -1  'True
            Caption         =   "Intervals"
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
            Index           =   2
            Left            =   6480
            TabIndex        =   42
            Top             =   555
            Width           =   900
         End
         Begin VB.Label lblUser 
            AutoSize        =   -1  'True
            Caption         =   "Rate Step"
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
            Left            =   6465
            TabIndex        =   41
            Top             =   195
            Width           =   960
         End
         Begin VB.Label lblOption 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Portfolio"
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
            Left            =   90
            TabIndex        =   40
            Top             =   540
            Width           =   855
         End
         Begin VB.Label lblUserCode 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Height          =   210
            Left            =   75
            TabIndex        =   39
            Top             =   210
            Width           =   1020
         End
         Begin VB.Shape Shape2 
            BackColor       =   &H00C0FFFF&
            BorderStyle     =   0  'Transparent
            FillColor       =   &H00C0E0FF&
            FillStyle       =   0  'Solid
            Height          =   810
            Left            =   0
            Top             =   120
            Width           =   4125
         End
         Begin VB.Shape Shape1 
            BorderStyle     =   0  'Transparent
            FillColor       =   &H00C0FFFF&
            FillStyle       =   0  'Solid
            Height          =   810
            Left            =   4110
            Top             =   120
            Width           =   2295
         End
      End
      Begin MSFlexGridLib.MSFlexGrid msfGrid 
         Height          =   6270
         Left            =   -74925
         TabIndex        =   17
         Top             =   420
         Width           =   11805
         _ExtentX        =   20823
         _ExtentY        =   11060
         _Version        =   393216
         BackColor       =   0
         ForeColor       =   0
         BackColorFixed  =   0
         BackColorBkg    =   0
         GridColor       =   0
         GridLinesFixed  =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComctlLib.ListView lstDetails1 
         Height          =   6825
         Left            =   -74865
         TabIndex        =   53
         Top             =   495
         Width           =   11700
         _ExtentX        =   20638
         _ExtentY        =   12039
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
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   9
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
            Text            =   "LTP"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Th. lV"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Live IV"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "Token"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "Portfolio"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Graph Type"
         Height          =   210
         Left            =   8310
         TabIndex        =   49
         Top             =   360
         Width           =   1080
      End
   End
End
Attribute VB_Name = "frmLiveGraphAnalysisOld"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intDays As Integer
Dim strExpiry As String
Dim strPortfolio As String



Private Sub cboPortfolio_Click()
Dim strQ As String
Dim rsQ As ADODB.Recordset

If blnPubIsLiveBhavcopyOpen = True Then
    strQ = "Select * From RepFullSheetM Where My_StrDesc='" & cboPortfolio.Text & "'"
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
    If rsQ.EOF = False Then
        strExpiry = rsQ!ExpDt
        txtRate.Text = rsQ!MkPrice
        
        intDays = DateDiff("d", Date, CDate(strExpiry))
        
    End If
    rsQ.Close
    Set rsQ = Nothing
ElseIf blnIsLiveBhavCopyScriptWise = True Then
    strQ = "SELECT * FROM RepFullSheetM Where Left(My_strDesc,len(My_strDesc)-7)='" & cboPortfolio.Text & "'" & _
    "  and CDate(ExpDt)>=CDate('" & Format(Date, "DD/MM/YYYY") & "') Order By CDate(ExpDt)"
    
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenStatic, adLockReadOnly
    If rsQ.EOF = False Then
        strExpiry = rsQ!ExpDt
        txtRate.Text = rsQ!MkPrice
        strPortfolio = rsQ!My_strDesc
        intDays = DateDiff("d", Date, CDate(strExpiry))
    End If
    rsQ.Close
    Set rsQ = Nothing

End If
End Sub


Private Sub cboUser_Click()

Dim strUserCode As String
Dim intFind As Integer
If cboUser.Text = "All" Then
    userinfo.SELUSERCD = ""
Else
    strUserCode = StrReverse(cboUser.Text)
    intFind = InStr("1", strUserCode, "=")
    strUserCode = Mid(strUserCode, intFind + 1)
    strUserCode = StrReverse(strUserCode)
    userinfo.SELUSERCD = strUserCode
End If

If optPortfolioWise.Value = True Then
    Call FillPortfolio
Else
    Call FillScript
End If


End Sub

Public Sub FillPortfolio()
''Changes Made By Pramisha   30/11/2009

Dim strQ As String
Dim rsQ As ADODB.Recordset

Dim strScript As String
Dim rsScript As New ADODB.Recordset
Dim cmd As ADODB.Command
Dim intRec As Integer

Dim strMy_strDesc As String

If cboUser.Text = "All" Then

    If blnIsHidePortfolio = True Then
        If strDatabaseFlag = "1" Then
            strQ = "Select distinct(my_strdesc) from RepFullSheetM where Convert(DateTime,expdt,103)>=Convert(DateTime,'" & Format(Date, "DD/MM/YYYY") & "',103) AND usercd Is Null and Balance=0"
        Else
            strQ = "Select distinct(my_strdesc) from RepFullSheetM where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') AND isnull(usercd) and Balance=0"
        End If
    
    Else
        If strDatabaseFlag = "1" Then
            strQ = "Select distinct(my_strdesc) from RepFullSheetM where Convert(DateTime,expdt,103)>=Convert(DateTime,'" & Format(Date, "DD/MM/YYYY") & "',103) AND usercd Is Null"
        Else
            strQ = "Select distinct(my_strdesc) from RepFullSheetM where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') AND isnull(usercd)"
        End If
    End If
        
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    cboPortfolio.Clear
    If rsQ.EOF = False Then
        While Not rsQ.EOF
            cboPortfolio.AddItem IIf(IsNull(rsQ!My_strDesc) = True, "", rsQ!My_strDesc)
            rsQ.MoveNext
        Wend
    End If
    rsQ.Close
    Set rsQ = Nothing
    userinfo.SELUSERCD = ""
Else
'    userinfo.SELUSERCD = cboUser.Text
    cboPortfolio.Clear
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = con
    cmd.CommandType = adCmdStoredProc
    cmd.CommandText = "QrySelectUsersScript"
    If strDatabaseFlag = "1" Then
        cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adVarChar, adParamInput, 50, Format(Date, "DD/MM/YYYY"))
    Else
        cmd.Parameters.Append cmd.CreateParameter("USERCD", adVarChar, adParamInput, 50, userinfo.SELUSERCD)
        cmd.Parameters.Append cmd.CreateParameter("EXPDT", adDate, adParamInput, 8, Format(Date, "DD/MM/YYYY"))
    End If
    
    rsScript.CursorType = adOpenDynamic
    rsScript.LockType = adLockOptimistic
    Set rsScript = cmd.Execute
    
    If rsScript.EOF = False Then
        
        While Not rsScript.EOF
        
            strMy_strDesc = rsScript!Script & " " & UCase(rsScript!Expiry)
            If blnIsHidePortfolio = True Then
                strQ = "Select distinct(my_strdesc) from RepFullSheetM where my_strdesc='" & strMy_strDesc & "' and cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') AND isnull(usercd) and Balance=0"
                Set rsQ = New ADODB.Recordset
                rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
                If rsQ.EOF = False Then
                    cboPortfolio.AddItem IIf(IsNull(rsScript!Script) = True, "", rsScript!Script) & " " & _
                    UCase(Format(CDate(rsScript!ExpDt), "MMM-YY"))
                
                End If
                rsQ.Close
                Set rsQ = Nothing
                
            Else
                cboPortfolio.AddItem IIf(IsNull(rsScript!Script) = True, "", rsScript!Script) & " " & _
                  UCase(rsScript!Expiry)
            End If
            rsScript.MoveNext
        Wend
    End If
    rsScript.Close
    Set rsScript = Nothing
    Set cmd = Nothing

End If

End Sub

Public Sub FillScript()

Dim strQ As String
Dim rsQ As ADODB.Recordset

Dim strScript As String
Dim rsScript As New ADODB.Recordset
Dim cmd As ADODB.Command
Dim intRec As Integer


If cboUser.Text = "All" Then
    If strDatabaseFlag = "1" Then
        strQ = "Select distinct Left(my_strdesc,len(my_strdesc)-7) from RepFullSheetM where Convert(DateTime,expdt,103)>=Convert(DateTime,'" & Format(Date, "DD/MM/YYYY") & "',103) AND usercd Is Null"
    Else
        strQ = "Select distinct Left(my_strdesc,len(my_strdesc)-7) As Script from RepFullSheetM where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') AND isnull(usercd)"
    End If
        
    Set rsQ = New ADODB.Recordset
    rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
    cboPortfolio.Clear
    If rsQ.EOF = False Then
        While Not rsQ.EOF
            cboPortfolio.AddItem IIf(IsNull(rsQ!Script) = True, "", rsQ!Script)
            rsQ.MoveNext
        Wend
    End If
    rsQ.Close
    Set rsQ = Nothing
    userinfo.SELUSERCD = ""
Else
'    userinfo.SELUSERCD = cboUser.Text
    cboPortfolio.Clear
    Set cmd = New ADODB.Command
    If strDatabaseFlag = "1" Then
        strQ = " SELECT DISTINCT  Script" & _
        " From dummytracker " & _
        " WHERE usercd='" & userinfo.SELUSERCD & "' AND convert(datetime,ExpDt,103)>=convert(datetime,'" & Format(Date, "DD/MM/YYYY") & "',103)"
    Else
        strQ = " SELECT DISTINCT  Script" & _
        " From dummytracker " & _
        " WHERE usercd='" & userinfo.SELUSERCD & "' AND CDate(ExpDt)>=CDate('" & Format(Date, "DD/MM/YYYY") & "')"
    End If
    cmd.ActiveConnection = con
    cmd.CommandType = adCmdText
    cmd.CommandText = strQ
    rsScript.CursorType = adOpenStatic
    rsScript.LockType = adLockReadOnly
    Set rsScript = cmd.Execute
    
    If rsScript.EOF = False Then
        
        While Not rsScript.EOF
            cboPortfolio.AddItem IIf(IsNull(rsScript!Script) = True, "", rsScript!Script)
            rsScript.MoveNext
        Wend
    End If
    rsScript.Close
    Set rsScript = Nothing
    Set cmd = Nothing

End If

End Sub


Private Sub ChartType_Click(Index As Integer)
'   Change the chart's type
'   THIS CODE WORKS BECAUSE THE OPTION BUTTONS HAVE
'   NON-CONSECUTIVE INDEX VALUES!
    MSChart1.ChartType = Index

End Sub

Private Sub cmbGraphType_Click()
If cmbGraphType.Text = "3D Bar" Then
    MSChart1.ChartType = VtChChartType3dBar
ElseIf cmbGraphType.Text = "2D Bar" Then
    MSChart1.ChartType = VtChChartType2dBar
ElseIf cmbGraphType.Text = "3D Line" Then
    MSChart1.ChartType = VtChChartType3dLine
ElseIf cmbGraphType.Text = "2D Line" Then
    MSChart1.ChartType = VtChChartType2dLine
ElseIf cmbGraphType.Text = "3D Area" Then
    MSChart1.ChartType = VtChChartType3dArea
ElseIf cmbGraphType.Text = "2D Area" Then
    MSChart1.ChartType = VtChChartType2dArea
ElseIf cmbGraphType.Text = "3D Step" Then
    MSChart1.ChartType = VtChChartType3dStep
ElseIf cmbGraphType.Text = "2D Step" Then
    MSChart1.ChartType = VtChChartType2dStep
ElseIf cmbGraphType.Text = "3D Combination" Then
    MSChart1.ChartType = VtChChartType3dCombination
ElseIf cmbGraphType.Text = "2D Combination" Then
    MSChart1.ChartType = VtChChartType2dCombination
ElseIf cmbGraphType.Text = "2D Pie" Then
    MSChart1.ChartType = VtChChartType2dPie
ElseIf cmbGraphType.Text = "2D X-Y" Then
    MSChart1.ChartType = VtChChartType2dXY
End If
MSChart1.Refresh

End Sub


Private Sub cmdClear_Click()
txtRateStep.Text = ""
txtFromRate.Text = ""
txtToRate.Text = ""
End Sub

Private Sub cmdClose_Click()
Unload Me
'If blnIsM2M = True Then
'    frmLiveBhavcopy.StartCaptureOnForm
'End If
End Sub

Private Sub cmdDaysClear_Click()
txtDaysStep.Text = ""
txtFromDays.Text = ""
txtToDays.Text = ""
End Sub

Private Sub cmdExcelList_Click()
If SSTab1.Tab = 1 Then
    Call ExportToExcelFromGrid(CommonDialog1, msfGrid)
ElseIf SSTab1.Tab = 2 Then
    Call ExporttoExcelFromListview(CommonDialog1, lstDetails1)
End If
End Sub

Private Sub cmdGraph_Click()
On Error GoTo EH

Dim curRateFrom As Currency
Dim curRateTo As Currency
Dim curRateStep As Currency
Dim curRate As Currency
Dim curNewRate As Currency

Dim curDaysFrom As Integer
Dim curDaysTo As Integer
Dim curDaysStep As Integer
Dim curDay As Integer


Dim intCount As Integer
Dim intRow As Integer
Dim intInterval As Integer
Dim dtNewDate As Date

Dim intCol As Integer

Dim strQ As String
Dim rsQ As ADODB.Recordset



    If Trim$(cboUser.Text) = "" Then
        MsgBox "User code can not be left blank!!!", vbCritical, "Error"
        cboUser.SetFocus
        Exit Sub
    End If
    
    If blnPubIsLiveBhavcopyOpen = True Then
        If Trim$(cboPortfolio.Text) = "" Then
            MsgBox "Portfolio can not be left blank!!!", vbCritical, "Error"
            cboPortfolio.SetFocus
            Exit Sub
        End If
    ElseIf blnIsLiveBhavCopyScriptWise = True Then
        If Trim$(cboPortfolio.Text) = "" Then
            MsgBox "Script can not be left blank!!!", vbCritical, "Error"
            cboPortfolio.SetFocus
            Exit Sub
        End If
    End If
    
    Call SetGrid
    
    'Validation for Blank Entries
    If Trim$(txtStepRate.Text) = "" Then
        MsgBox "Step Rate can not be left blank!!!", vbCritical, "Error"
        txtStepRate.SetFocus
        Exit Sub
    ElseIf Val(txtStepRate.Text) <= 0 Then
        MsgBox "Step Rate can not be less than or equal!!!", vbCritical, "Error"
        txtStepRate.SetFocus
        Exit Sub
    End If
    
    If Trim$(txtIntervals.Text) = "" Then
        MsgBox "Interval can not be left blank!!!", vbCritical, "Error"
        txtIntervals.SetFocus
        Exit Sub
    ElseIf Val(txtIntervals.Text) <= 0 Then
        MsgBox "Interval can not be less than or equal!!!", vbCritical, "Error"
        txtIntervals.SetFocus
        Exit Sub
    End If
    
    If Trim$(txtStepDay.Text) = "" Then
        MsgBox "Step Day can not be left blank!!!", vbCritical, "Error"
        txtStepDay.SetFocus
        Exit Sub
    ElseIf Val(txtStepDay.Text) <= 0 Then
        MsgBox "Step Day can not be less than or equal!!!", vbCritical, "Error"
        txtStepDay.SetFocus
        Exit Sub
    End If
    
    
    curRateStep = Val(txtStepRate.Text)
    intInterval = Val(txtIntervals.Text)
    curDaysStep = Val(txtStepDay.Text)
    curRate = Val(txtRate.Text)
    
    intRow = 1
    'Above
    For intCount = intInterval To 1 Step -1
        
        curNewRate = curRate - (curRateStep * intCount)
        If curNewRate > 0 Then
            msfGrid.Row = intRow
            msfGrid.Col = 0
            msfGrid.CellFontBold = True
            msfGrid.CellBackColor = vbYellow
            msfGrid.TextMatrix(intRow, 0) = curNewRate
            msfGrid.Rows = msfGrid.Rows + 1
            intRow = intRow + 1
        End If
    Next
    
    'Middle
    msfGrid.Row = intRow
    msfGrid.Col = 0
    msfGrid.CellFontBold = True
    msfGrid.CellBackColor = vbWhite
    msfGrid.TextMatrix(intRow, 0) = curRate
    msfGrid.Rows = msfGrid.Rows + 1
    intRow = intRow + 1
    
    'Below
    For intCount = 1 To intInterval
        
        curNewRate = curRate + (curRateStep * intCount)
        If curNewRate > 0 Then
            msfGrid.Row = intRow
            msfGrid.Col = 0
            msfGrid.CellFontBold = True
            msfGrid.CellBackColor = vbGreen
            msfGrid.TextMatrix(intRow, 0) = curNewRate
            msfGrid.Rows = msfGrid.Rows + 1
            intRow = intRow + 1
        End If
    Next
    
    intCol = 1
    dtNewDate = Date
    For intCount = intDays To 0 Step -curDaysStep
        msfGrid.Row = 0
        msfGrid.Col = intCol
        msfGrid.CellFontBold = True
        msfGrid.CellBackColor = vbMagenta
        msfGrid.TextMatrix(0, intCol) = dtNewDate
        dtNewDate = DateAdd("d", curDaysStep, dtNewDate)
        msfGrid.ColWidth(intCol) = 1500
        msfGrid.Cols = msfGrid.Cols + 1
        intCol = intCol + 1
    Next
    
    
    
    If intCount > 1 Then
        msfGrid.Cols = msfGrid.Cols - 1
    End If
    
If blnPubIsLiveBhavcopyOpen = True Then
    
    If Trim$(msfGrid.TextMatrix(0, 1)) <> "" And Trim$(msfGrid.TextMatrix(1, 0)) <> "" Then
        If optPortfolioWise.Value = True Then
    
            strIsUserCodeOrUserName = "Code"
            strPubMyDesc = cboPortfolio.Text
            Load frmLivePortfolioSample
            For intRow = 1 To msfGrid.Rows - 2
                For intCol = 1 To msfGrid.Cols - 2
    
                    frmLivePortfolioSample.txtRate.Text = Val(msfGrid.TextMatrix(intRow, 0))
                    frmLivePortfolioSample.txtDays.Text = DateDiff("d", CDate(msfGrid.TextMatrix(0, intCol)), CDate(strExpiry))
                    frmLivePortfolioSample.txtDate.Text = Format(DateAdd("d", -Val(frmLivePortfolioSample.txtDays.Text), CDate(frmLivePortfolioSample.txtExpDt.Text)), "dd-MMM-yyyy")
                    If intCol = 1 Then
                        blnIsCurrentDay = True
                    Else
                        blnIsCurrentDay = False
                    End If
                    frmLivePortfolioSample.FillCalculation
    
                    
                    msfGrid.Row = intRow
                
                    msfGrid.Col = intCol
                    msfGrid.CellFontBold = True
                    If Val(frmLivePortfolioSample.txtBalance.Text) < 0 Then
                        msfGrid.CellForeColor = vbRed
                    Else
                        msfGrid.CellForeColor = vbCyan
                    End If
                    
                    msfGrid.TextMatrix(intRow, intCol) = frmLivePortfolioSample.txtBalance.Text
                    
                Next
            Next
            Unload frmLivePortfolioSample
            
        ElseIf optScriptWise.Value = True Then
            If cboUser.Text = "All" Then
     
                If strDatabaseFlag = "1" Then
                    strQ = "Select distinct(my_strdesc) from RepFullSheetM where Convert(DateTime,expdt,103)>=Convert(DateTime,'" & Format(Date, "DD/MM/YYYY") & "',103) AND usercd Is Null And Left(my_strdesc,Len(my_strdesc)-7)='" & cboPortfolio.Text & "'"
                Else
                    strQ = "Select distinct(my_strdesc) from RepFullSheetM where cdate(expdt)>=cdate('" & Format(Date, "DD/MM/YYYY") & "') AND isnull(usercd) And Left(my_strdesc,Len(my_strdesc)-7)='" & cboPortfolio.Text & "'"
                End If
            
                Set rsQ = New ADODB.Recordset
                rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
                
                If rsQ.EOF = False Then
                    strPubMyDesc = IIf(IsNull(rsQ!My_strDesc) = True, "", rsQ!My_strDesc)
                    strIsUserCodeOrUserName = "Code"
                    
                    Load frmLivePortfolioSample
                    While Not rsQ.EOF
                        strPubMyDesc = IIf(IsNull(rsQ!My_strDesc) = True, "", rsQ!My_strDesc)
                        frmLivePortfolioSample.FillDetails (strPubMyDesc)
                        For intRow = 1 To msfGrid.Rows - 1
                            For intCol = 1 To msfGrid.Cols - 1
                            
                                frmLivePortfolioSample.txtRate.Text = Val(msfGrid.TextMatrix(intRow, 0))
                                frmLivePortfolioSample.txtDays.Text = DateDiff("d", CDate(msfGrid.TextMatrix(0, intCol)), CDate(strExpiry))
                                frmLivePortfolioSample.txtDate.Text = Format(DateAdd("d", -Val(frmLivePortfolioSample.txtDays.Text), CDate(frmLivePortfolioSample.txtExpDt.Text)), "dd-MMM-yyyy")
                                If intCol = 1 Then
                                    blnIsCurrentDay = True
                                Else
                                    blnIsCurrentDay = False
                                End If
                                frmLivePortfolioSample.FillCalculation
    '                            frmLivePortfolioSample.FillStrike
    '                            frmLivePortfolioSample.CalculateSummary
    '                            DoEvents
                                
                                msfGrid.Row = intRow
                            
                                msfGrid.Col = intCol
                                msfGrid.CellFontBold = True
                                If Val(frmLivePortfolioSample.txtBalance.Text) < 0 Then
                                    msfGrid.CellForeColor = vbRed
                                Else
                                    msfGrid.CellForeColor = vbCyan
                                End If
                                
                                msfGrid.TextMatrix(intRow, intCol) = Val(msfGrid.TextMatrix(intRow, intCol)) + Val(frmLivePortfolioSample.txtBalance.Text)
                                
                            Next
                        Next
    
                        rsQ.MoveNext
                    Wend
                    Unload frmLivePortfolioSample
                    
                End If
                rsQ.Close
                Set rsQ = Nothing
            Else
    '            userinfo.SELUSERCD = Trim$(cboUser.Text)
                If strDatabaseFlag = "1" Then
                    strQ = " SELECT DISTINCT  Script,ExpDT" & _
                           " From dummytracker " & _
                           " WHERE usercd='" & userinfo.SELUSERCD & "' AND convert(datetime,ExpDt,103)>=convert(datetime,'" & Format(Date, "DD/MM/YYYY") & "',103)"
                Else
                    strQ = " SELECT DISTINCT  Script,ExpDT" & _
                           " From dummytracker " & _
                           " WHERE usercd='" & userinfo.SELUSERCD & "' AND CDate(ExpDt)>=CDate('" & Format(Date, "DD/MM/YYYY") & "')"
                End If
                Set rsQ = New ADODB.Recordset
                rsQ.Open strQ, con, adOpenKeyset, adLockOptimistic
                
                If rsQ.EOF = False Then
                    strPubMyDesc = IIf(IsNull(rsQ!Script) = True, "", rsQ!Script) & " " & Format(CDate(rsQ!ExpDt), "MMM-YY")
                    strIsUserCodeOrUserName = "Code"
                    
                    Load frmLivePortfolioSample
                    While Not rsQ.EOF
                        strPubMyDesc = IIf(IsNull(rsQ!Script) = True, "", rsQ!Script) & " " & Format(CDate(rsQ!ExpDt), "MMM-YY")
                        frmLivePortfolioSample.FillDetails (strPubMyDesc)
                        For intRow = 1 To msfGrid.Rows - 1
                            For intCol = 1 To msfGrid.Cols - 1
    '                            DoEvents
                            
                                frmLivePortfolioSample.txtRate.Text = Val(msfGrid.TextMatrix(intRow, 0))
                                frmLivePortfolioSample.txtDays.Text = DateDiff("d", CDate(msfGrid.TextMatrix(0, intCol)), CDate(strExpiry))
                                frmLivePortfolioSample.txtDate.Text = Format(DateAdd("d", -Val(frmLivePortfolioSample.txtDays.Text), CDate(frmLivePortfolioSample.txtExpDt.Text)), "dd-MMM-yyyy")
                                If intCol = 1 Then
                                    blnIsCurrentDay = True
                                Else
                                    blnIsCurrentDay = False
                                End If
                                frmLivePortfolioSample.FillCalculation
    '                            frmLivePortfolioSample.FillStrike
    '                            frmLivePortfolioSample.CalculateSummary
    '                            DoEvents
                                
                                msfGrid.Row = intRow
                            
                                msfGrid.Col = intCol
                                msfGrid.CellFontBold = True
                                If Val(frmLivePortfolioSample.txtBalance.Text) < 0 Then
                                    msfGrid.CellForeColor = vbRed
                                Else
                                    msfGrid.CellForeColor = vbCyan
                                End If
                                
                                msfGrid.TextMatrix(intRow, intCol) = Val(msfGrid.TextMatrix(intRow, intCol)) + Val(frmLivePortfolioSample.txtBalance.Text)
                                
                            Next
                        Next
    
                        rsQ.MoveNext
                    Wend
                    Unload frmLivePortfolioSample
                    
                End If
                rsQ.Close
                Set rsQ = Nothing
            End If
        End If
    End If
ElseIf blnIsLiveBhavCopyScriptWise = True Then
    If Trim$(msfGrid.TextMatrix(0, 1)) <> "" And Trim$(msfGrid.TextMatrix(1, 0)) <> "" Then
     
            strIsUserCodeOrUserName = "Code"
            strPubMyDesc = strPortfolio
            Load frmLivePortfolioSample
            For intRow = 1 To msfGrid.Rows - 2
                For intCol = 1 To msfGrid.Cols - 2

                    frmLivePortfolioSample.txtRate.Text = Val(msfGrid.TextMatrix(intRow, 0))
                    frmLivePortfolioSample.txtDays.Text = DateDiff("d", CDate(msfGrid.TextMatrix(0, intCol)), CDate(strExpiry))
                    frmLivePortfolioSample.txtDate.Text = Format(DateAdd("d", -Val(frmLivePortfolioSample.txtDays.Text), CDate(frmLivePortfolioSample.txtExpDt.Text)), "dd-MMM-yyyy")
                    If intCol = 1 Then
                        blnIsCurrentDay = True
                    Else
                        blnIsCurrentDay = False
                    End If
                    frmLivePortfolioSample.FillCalculationScriptWise


                    msfGrid.Row = intRow

                    msfGrid.Col = intCol
                    msfGrid.CellFontBold = True
                    If Val(frmLivePortfolioSample.txtBalance.Text) < 0 Then
                        msfGrid.CellForeColor = vbRed
                    Else
                        msfGrid.CellForeColor = vbCyan
                    End If

                    msfGrid.TextMatrix(intRow, intCol) = frmLivePortfolioSample.txtBalance.Text

                Next
            Next
            Unload frmLivePortfolioSample
    
    End If
End If
Call ShowGraph


Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Private Sub ShowGraph()
Dim chrtArray()
Dim intRow As Integer
Dim intCol As Integer
If msfGrid.Rows < 3 Then
    Exit Sub
End If
ReDim chrtArray(1 To msfGrid.Rows - 2, 1 To msfGrid.Cols - 2)
For intRow = 1 To msfGrid.Rows - 2
    For intCol = 1 To msfGrid.Cols - 2
        chrtArray(intRow, intCol) = Val(msfGrid.TextMatrix(intRow, intCol))
    Next
Next

With MSChart1
    .ChartData = chrtArray
    .ColumnCount = msfGrid.Cols - 2
    .ColumnLabelCount = 1
    .Column = 1
'    .ShowLegend = True
    
    For intRow = 1 To msfGrid.Rows - 2
        .Row = intRow
        .RowLabel = msfGrid.TextMatrix(intRow, 0)
    Next
    
    For intCol = 1 To msfGrid.Cols - 2
        .Column = intCol
        .ColumnLabel = msfGrid.TextMatrix(0, intCol)
    Next
    
    MSChart1.Plot.Axis(VtChAxisIdX).AxisTitle.Text = "Rate"
    MSChart1.Plot.Axis(VtChAxisIdY).AxisTitle.Text = "Balance"
    
    .Refresh
End With

End Sub

Private Sub cmdRefresh_Click()
SaveSetting "DeltaSoft", "LiveGraphAnalysis", "StepDay", Val(txtStepDay.Text)
SaveSetting "DeltaSoft", "LiveGraphAnalysis", "StepRate", Val(txtStepRate.Text)
SaveSetting "DeltaSoft", "LiveGraphAnalysis", "Interval", Val(txtIntervals.Text)

Call cmdGraph_Click
End Sub

'Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
''Call GlobalKeyUp(Shift, KeyCode)
''
''Shift = 0
''KeyCode = 0
'End Sub

Private Sub Form_Load()
SSTab1.Tab = 1

''Code For Resolution
''============================
'Dim MyForm As FRMSIZE
'Dim DesignX As Integer
'Dim DesignY As Integer
'Dim ScaleFactorX As Single, ScaleFactorY As Single  ' Scaling factors
'' Size of Form in Pixels at design resolution
'DesignX = 1024
'DesignY = 768
'RePosForm = True   ' Flag for positioning Form
'DoResize = False   ' Flag for Resize Event
'' Set up the screen values
'Xtwips = Screen.TwipsPerPixelX
'Ytwips = Screen.TwipsPerPixelY
'Ypixels = Screen.Height / Ytwips ' Y Pixel Resolution
'Xpixels = Screen.Width / Xtwips  ' X Pixel Resolution
'
'' Determine scaling factors
'ScaleFactorX = (Xpixels / DesignX)
'ScaleFactorY = (Ypixels / DesignY)
'ScaleMode = 1  ' twips
'
'Resize_For_Resolution ScaleFactorX, ScaleFactorY, Me
''Label.Caption = "Current resolution is " & Str$(Xpixels) + _
' '"  by " + Str$(Ypixels)
'MyForm.Height = Me.Height ' Remember the current size
'MyForm.Width = Me.Width
''===============================

'optPortfolioWise.Value = True

Call FillUser
Call SetGrid

If blnPubIsLiveBhavcopyOpen = True Then
    If frmLiveBhavcopy.cmdStartCapture.Enabled = False Then
        blnIsM2M = True
        Call frmLiveBhavcopy.StopCaptureOnForm
        Call frmLiveBhavcopy.OnlineRateUpdate
    Else
        blnIsM2M = False
    End If
    Call FillPortfolio
    cboPortfolio.Text = frmLiveBhavcopy.cboPortfolioList.Text
    lblOption.Caption = "Portfolio"
    
End If

If blnIsLiveBhavCopyScriptWise = True Then
    If frmLiveBhavCopyScriptwise.cmdStartCapture.Enabled = False Then
        blnIsM2M = True
        Call frmLiveBhavCopyScriptwise.StopCaptureOnForm
    Else
        blnIsM2M = False
    End If
    Call FillScript
    cboPortfolio.Text = frmLiveBhavCopyScriptwise.cboScript.Text
    txtRate.Text = frmLiveBhavCopyScriptwise.txtRate.Text
    cboPortfolio.Locked = True
    lblOption.Caption = "Script"
    cboUser.Visible = False
    lblUserCode.Visible = False
End If

txtStepDay.Text = GetSetting("DeltaSoft", "LiveGraphAnalysis", "StepDay", "1")
txtStepRate.Text = GetSetting("DeltaSoft", "LiveGraphAnalysis", "StepRate", "10")
txtIntervals.Text = GetSetting("DeltaSoft", "LiveGraphAnalysis", "Interval", "10")

ChartType(2).Value = True
Call cmdGraph_Click
cmbGraphType.Text = "2D Line"
Call cmbGraphType_Click

End Sub

Public Sub FillUser()
On Error GoTo EH
Dim strFill As String
Dim rsFill As New ADODB.Recordset
Dim intUserCount1 As Integer
strFill = "Select * From User_detl Where User_Type='User'"
rsFill.Open strFill, con, adOpenKeyset, adLockOptimistic
If rsFill.EOF = False Then
    cboUser.Clear
    intUserCount1 = 0
    cboUser.AddItem "All"
    While Not rsFill.EOF
'        If intUserCount1 >= intPubTotalRegisteredUsers Then
'            Exit Sub
'        End If
        cboUser.AddItem IIf(IsNull(rsFill!USERCD) = True, "", rsFill!USERCD) & "=" & RetrieveUserName(IIf(IsNull(rsFill!USERCD) = True, "", rsFill!USERCD))
        intUserCount1 = intUserCount1 + 1
        rsFill.MoveNext
    Wend
End If
rsFill.Close
cboUser.Text = "All"
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Error"
End Sub

Private Sub SetGrid()
msfGrid.Clear
msfGrid.Cols = 2
msfGrid.Rows = 2

msfGrid.FixedCols = 1
msfGrid.FixedRows = 1

msfGrid.TextMatrix(0, 0) = "Rate Vs Days"
msfGrid.Row = 0
msfGrid.Col = 0
msfGrid.CellForeColor = vbWhite

msfGrid.ColWidth(0) = 1500
msfGrid.ColWidth(1) = 1500
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim strUserCode As String
Dim intFind As Integer
If blnPubIsLiveBhavcopyOpen = True Then
    If frmLiveBhavcopy.Visible = True Then
        If frmLiveBhavcopy.cboUserCd.Text = "All" Then
            userinfo.SELUSERCD = ""
        Else
            strUserCode = StrReverse(frmLiveBhavcopy.cboUserCd.Text)
            intFind = InStr("1", strUserCode, "=")
            strUserCode = Mid(strUserCode, intFind + 1)
            strUserCode = StrReverse(strUserCode)
            userinfo.SELUSERCD = strUserCode
        End If
    End If
End If
End Sub

Private Sub optPortfolioWise_Click()
lblOption.Caption = "Portfolio"
If cboUser.Text <> "" Then
    Call FillPortfolio
End If
End Sub

Private Sub optScriptWise_Click()
lblOption.Caption = "Script"
If cboUser.Text <> "" Then
    Call FillScript
End If
End Sub

Private Sub txtIntervals_KeyPress(KeyAscii As Integer)
KeyAscii = CHECKNUMDECI(txtIntervals, KeyAscii, 2)
End Sub

Private Sub txtStepDay_KeyPress(KeyAscii As Integer)
KeyAscii = CHECKNUMDECI(txtStepDay, KeyAscii, 2)
End Sub

Private Sub txtStepRate_KeyPress(KeyAscii As Integer)
KeyAscii = CHECKNUMDECI(txtStepRate, KeyAscii, 2)
End Sub
