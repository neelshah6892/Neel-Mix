VERSION 5.00
Object = "{BEEECC20-4D5F-4F8B-BFDC-5D9B6FBDE09D}#1.0#0"; "vsflex8.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmVarAnalysisWithStrategy 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Var Analysis With Strategy"
   ClientHeight    =   5265
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   13680
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmVarAnalysisWithStrategy.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5265
   ScaleWidth      =   13680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame fraIVStatus 
      BackColor       =   &H00E0E0E0&
      Caption         =   "IV Status"
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
      Height          =   5370
      Left            =   6480
      TabIndex        =   0
      Top             =   0
      Width           =   6825
      Begin VB.CommandButton cmdStatusClose 
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
         Left            =   6345
         Picture         =   "frmVarAnalysisWithStrategy.frx":058A
         Style           =   1  'Graphical
         TabIndex        =   2
         TabStop         =   0   'False
         ToolTipText     =   "Close"
         Top             =   180
         Width           =   390
      End
      Begin VB.CommandButton cmdExportToExcel2 
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
         Left            =   5940
         Picture         =   "frmVarAnalysisWithStrategy.frx":0684
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Export to Excel"
         Top             =   180
         Width           =   390
      End
      Begin VSFlex8Ctl.VSFlexGrid vsIvGrid 
         Height          =   4695
         Left            =   90
         TabIndex        =   3
         Top             =   555
         Width           =   6660
         _cx             =   11747
         _cy             =   8281
         Appearance      =   2
         BorderStyle     =   0
         Enabled         =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MousePointer    =   0
         BackColor       =   2886407
         ForeColor       =   16777215
         BackColorFixed  =   16629898
         ForeColorFixed  =   0
         BackColorSel    =   -2147483635
         ForeColorSel    =   -2147483634
         BackColorBkg    =   2886407
         BackColorAlternate=   2886407
         GridColor       =   0
         GridColorFixed  =   4210752
         TreeColor       =   -2147483632
         FloodColor      =   192
         SheetBorder     =   4210752
         FocusRect       =   1
         HighLight       =   1
         AllowSelection  =   -1  'True
         AllowBigSelection=   -1  'True
         AllowUserResizing=   1
         SelectionMode   =   0
         GridLines       =   1
         GridLinesFixed  =   1
         GridLineWidth   =   1
         Rows            =   50
         Cols            =   10
         FixedRows       =   1
         FixedCols       =   1
         RowHeightMin    =   0
         RowHeightMax    =   0
         ColWidthMin     =   0
         ColWidthMax     =   0
         ExtendLastCol   =   0   'False
         FormatString    =   ""
         ScrollTrack     =   0   'False
         ScrollBars      =   3
         ScrollTips      =   0   'False
         MergeCells      =   0
         MergeCompare    =   0
         AutoResize      =   -1  'True
         AutoSizeMode    =   0
         AutoSearch      =   0
         AutoSearchDelay =   2
         MultiTotals     =   -1  'True
         SubtotalPosition=   1
         OutlineBar      =   0
         OutlineCol      =   0
         Ellipsis        =   0
         ExplorerBar     =   0
         PicturesOver    =   0   'False
         FillStyle       =   0
         RightToLeft     =   0   'False
         PictureType     =   0
         TabBehavior     =   0
         OwnerDraw       =   0
         Editable        =   0
         ShowComboButton =   1
         WordWrap        =   0   'False
         TextStyle       =   0
         TextStyleFixed  =   0
         OleDragMode     =   0
         OleDropMode     =   0
         DataMode        =   0
         VirtualData     =   -1  'True
         DataMember      =   ""
         ComboSearch     =   3
         AutoSizeMouse   =   -1  'True
         FrozenRows      =   0
         FrozenCols      =   0
         AllowUserFreezing=   0
         BackColorFrozen =   0
         ForeColorFrozen =   0
         WallPaperAlignment=   9
         AccessibleName  =   ""
         AccessibleDescription=   ""
         AccessibleValue =   ""
         AccessibleRole  =   24
      End
      Begin VB.Label lblIvStatusCap 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   195
         Left            =   1200
         TabIndex        =   4
         Top             =   270
         Width           =   645
      End
   End
   Begin VB.Frame fraVarAnalysis 
      BackColor       =   &H00000000&
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
      ForeColor       =   &H00404040&
      Height          =   4860
      Left            =   0
      TabIndex        =   9
      Top             =   405
      Width           =   13230
      Begin VSFlex8Ctl.VSFlexGrid vsGrid 
         Height          =   4755
         Left            =   75
         TabIndex        =   10
         Top             =   75
         Width           =   13080
         _cx             =   23072
         _cy             =   8387
         Appearance      =   2
         BorderStyle     =   0
         Enabled         =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MousePointer    =   0
         BackColor       =   0
         ForeColor       =   16777215
         BackColorFixed  =   4210752
         ForeColorFixed  =   16629898
         BackColorSel    =   -2147483635
         ForeColorSel    =   -2147483634
         BackColorBkg    =   0
         BackColorAlternate=   0
         GridColor       =   8421504
         GridColorFixed  =   8421504
         TreeColor       =   -2147483632
         FloodColor      =   192
         SheetBorder     =   4210752
         FocusRect       =   1
         HighLight       =   1
         AllowSelection  =   -1  'True
         AllowBigSelection=   -1  'True
         AllowUserResizing=   1
         SelectionMode   =   0
         GridLines       =   1
         GridLinesFixed  =   1
         GridLineWidth   =   1
         Rows            =   50
         Cols            =   10
         FixedRows       =   1
         FixedCols       =   1
         RowHeightMin    =   0
         RowHeightMax    =   0
         ColWidthMin     =   0
         ColWidthMax     =   0
         ExtendLastCol   =   0   'False
         FormatString    =   ""
         ScrollTrack     =   0   'False
         ScrollBars      =   3
         ScrollTips      =   0   'False
         MergeCells      =   0
         MergeCompare    =   0
         AutoResize      =   -1  'True
         AutoSizeMode    =   0
         AutoSearch      =   0
         AutoSearchDelay =   2
         MultiTotals     =   -1  'True
         SubtotalPosition=   1
         OutlineBar      =   0
         OutlineCol      =   0
         Ellipsis        =   0
         ExplorerBar     =   0
         PicturesOver    =   0   'False
         FillStyle       =   0
         RightToLeft     =   0   'False
         PictureType     =   0
         TabBehavior     =   0
         OwnerDraw       =   0
         Editable        =   0
         ShowComboButton =   1
         WordWrap        =   0   'False
         TextStyle       =   0
         TextStyleFixed  =   0
         OleDragMode     =   0
         OleDropMode     =   0
         DataMode        =   0
         VirtualData     =   -1  'True
         DataMember      =   ""
         ComboSearch     =   3
         AutoSizeMouse   =   -1  'True
         FrozenRows      =   0
         FrozenCols      =   0
         AllowUserFreezing=   0
         BackColorFrozen =   0
         ForeColorFrozen =   0
         WallPaperAlignment=   9
         AccessibleName  =   ""
         AccessibleDescription=   ""
         AccessibleValue =   ""
         AccessibleRole  =   24
      End
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
      Left            =   12840
      Picture         =   "frmVarAnalysisWithStrategy.frx":0C0E
      Style           =   1  'Graphical
      TabIndex        =   8
      TabStop         =   0   'False
      ToolTipText     =   "Close"
      Top             =   45
      Width           =   390
   End
   Begin VB.CommandButton cmdConfigure 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Webdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   11990
      Picture         =   "frmVarAnalysisWithStrategy.frx":0D08
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Configure"
      Top             =   45
      Width           =   390
   End
   Begin VB.CommandButton cmdExportToExcel 
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
      Left            =   12415
      Picture         =   "frmVarAnalysisWithStrategy.frx":1292
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Export to Excel"
      Top             =   45
      Width           =   390
   End
   Begin VB.CommandButton cmdRefresh 
      BackColor       =   &H00FFFFFF&
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Webdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   11550
      Picture         =   "frmVarAnalysisWithStrategy.frx":181C
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Refresh"
      Top             =   30
      Width           =   420
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4500
      Top             =   45
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblPortfolio 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Portfolio Name"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   270
      Left            =   90
      TabIndex        =   11
      Top             =   150
      Width           =   1830
   End
End
Attribute VB_Name = "frmVarAnalysisWithStrategy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Created By AAP
'Created Date: 19/11/2012

Option Explicit

Private Type IvStatus
    intStrike           As Integer
    intCP               As Integer
    intThIV             As Integer
    intLTP              As Integer
    intLiveIV           As Integer
    intCoIV             As Integer 'Corresponding IV
End Type

Private Type VarAnalysis
    intVolSettings      As Integer
    intRate             As Integer
    intRateSettings     As Integer
    intSr               As Integer
    intDeltaNeutral     As Integer
    intDeltaVal         As Integer
    intThetaVal         As Integer
    intVegaVal          As Integer
    intGammaVal         As Integer
    intBalance          As Integer
    
    strVolSettings      As String
    strRate             As String
    strRateSettings     As String
    strSr               As String
    strDeltaNeutral     As String
    strDeltaVal         As String
    strThetaVal         As String
    strVegaVal          As String
    strGammaVal         As String
    strBalance          As String
    
    dblVolSettings      As Double
    dblRate             As Double
    dblRateSettings     As Double
    dblSr               As Double
    dblDeltaNeutral     As Double
    dblDeltaVal         As Double
    dblThetaVal         As Double
    dblVegaVal          As Double
    dblGammaVal         As Double
    dblBalance          As Double
    
    intMidRateRow       As Long
    intTotalCol         As Integer
    intTotalRow         As Integer
    intInitialRow       As Integer
End Type

    Dim typIvStatus                 As IvStatus
    Dim typVarAnalysis              As VarAnalysis
    Dim mlngMiddleRateColor         As Long
    Dim mdblRateIncDecFactor        As Double 'Rate Increment Decrement Factor
    Dim mdblCurrentMarketRate       As Double 'Current Market Rate
    Dim mdblDays                    As Double
    Dim mdblTempDays                As Double
    Dim mdblCallVol                 As Double
    Dim mdblPutVol                  As Double
    Dim mintNoOfIncDecStep          As Integer 'No. of Increment & Decrement Steps

    Dim arrListView()            As Variant
    
    Dim intRows As Integer
    Dim intCols As Integer
    
    Dim mdblOU              As Double
    Dim mdblM2MOU           As Double
    Dim mdblFSU             As Double
    Dim mdblOR              As Double
    Dim mdblFSR             As Double
    Dim mdblPremium         As Double
    Dim mdblDeltaNeutral    As Double
    Dim mdblDeltaVal        As Double
    Dim mdblThetaVal        As Double
    Dim mdblVegaVal         As Double
    Dim mdblGammaVal        As Double
    Dim mdblRhoVal          As Double
    Dim mdblBalance         As Double
    Dim mdblBalanceMidRow   As Double
    Dim mdblNetAvg          As Double
    Dim mdblNetTrade        As Double
    Dim mdblCarryForward    As Double
    Dim mdblDomIntRate      As Double
    Dim mdblForIntRate      As Double
    Dim mcurLotSize         As Currency
    
Public Sub SetVarAnalysisGrid()
'Implied Volatility
    typIvStatus.intStrike = 0
    typIvStatus.intCP = 1
    typIvStatus.intThIV = 2
    typIvStatus.intLTP = 3
    typIvStatus.intLiveIV = 4
    typIvStatus.intCoIV = 5
    
'Initialize Column Settings Variable
    typVarAnalysis.intVolSettings = 0
    typVarAnalysis.intRateSettings = 1
    typVarAnalysis.intRate = 2
    typVarAnalysis.intDeltaNeutral = 3
    typVarAnalysis.intDeltaVal = 4
    typVarAnalysis.intThetaVal = 5
    typVarAnalysis.intVegaVal = 6
    typVarAnalysis.intGammaVal = 7
    typVarAnalysis.intBalance = 8
    
    typVarAnalysis.strVolSettings = "Vol %"
    typVarAnalysis.strRateSettings = "Rate %"
    typVarAnalysis.strRate = "Market Rate"
    typVarAnalysis.strDeltaNeutral = "Delta Neutral"
    typVarAnalysis.strDeltaVal = "Delta Val"
    typVarAnalysis.strThetaVal = "Theta Val"
    typVarAnalysis.strVegaVal = "Vega Val"
    typVarAnalysis.strGammaVal = "Gamma Val"
    typVarAnalysis.strBalance = "M2M Balance"
    
    typVarAnalysis.dblVolSettings = 1000
    typVarAnalysis.dblRateSettings = 1000
    typVarAnalysis.dblRate = 1500
    typVarAnalysis.dblDeltaNeutral = 1500
    typVarAnalysis.dblDeltaVal = 1500
    typVarAnalysis.dblThetaVal = 1500
    typVarAnalysis.dblVegaVal = 1500
    typVarAnalysis.dblGammaVal = 1500
    typVarAnalysis.dblBalance = 1500
    
    typVarAnalysis.intTotalCol = 9
    typVarAnalysis.intInitialRow = 0
    
End Sub

Public Sub SetGrid()
On Error GoTo EH

    'Set Grid Settings
    vsGrid.Rows = 1
    typVarAnalysis.intTotalRow = mintNoOfIncDecStep * 2 + 2
    typVarAnalysis.intMidRateRow = mintNoOfIncDecStep + 1
    
    vsGrid.Rows = typVarAnalysis.intTotalRow
    vsGrid.Cols = typVarAnalysis.intTotalCol
    vsGrid.FixedCols = 0
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intVolSettings) = typVarAnalysis.strVolSettings
    vsGrid.ColWidth(typVarAnalysis.intVolSettings) = typVarAnalysis.dblVolSettings
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intRateSettings) = typVarAnalysis.strRateSettings
    vsGrid.ColWidth(typVarAnalysis.intRateSettings) = typVarAnalysis.dblRateSettings
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intRate) = typVarAnalysis.strRate
    vsGrid.ColWidth(typVarAnalysis.intRate) = typVarAnalysis.dblRate
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intDeltaNeutral) = typVarAnalysis.strDeltaNeutral
    vsGrid.ColWidth(typVarAnalysis.intDeltaNeutral) = typVarAnalysis.dblDeltaNeutral
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intDeltaVal) = typVarAnalysis.strDeltaVal
    vsGrid.ColWidth(typVarAnalysis.intDeltaVal) = typVarAnalysis.dblDeltaVal
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intThetaVal) = typVarAnalysis.strThetaVal
    vsGrid.ColWidth(typVarAnalysis.intThetaVal) = typVarAnalysis.dblThetaVal
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intVegaVal) = typVarAnalysis.strVegaVal
    vsGrid.ColWidth(typVarAnalysis.intVegaVal) = typVarAnalysis.dblVegaVal
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intGammaVal) = typVarAnalysis.strGammaVal
    vsGrid.ColWidth(typVarAnalysis.intGammaVal) = typVarAnalysis.dblGammaVal
    
    vsGrid.TextMatrix(typVarAnalysis.intInitialRow, typVarAnalysis.intBalance) = typVarAnalysis.strBalance
    vsGrid.ColWidth(typVarAnalysis.intBalance) = typVarAnalysis.dblBalance
    
    vsGrid.Cell(flexcpBackColor, typVarAnalysis.intMidRateRow, 0, typVarAnalysis.intMidRateRow, typVarAnalysis.intTotalCol - 1) = mlngMiddleRateColor
    vsGrid.Cell(flexcpBackColor, 1, typVarAnalysis.intRate, vsGrid.Rows - 1, typVarAnalysis.intRate) = &H40&
    vsGrid.Cell(flexcpBackColor, 1, typVarAnalysis.intBalance, vsGrid.Rows - 1, typVarAnalysis.intBalance) = &H404000
    
    vsGrid.Editable = flexEDKbdMouse
    
    ReadVolSettings
    
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical
End Sub

Public Sub SetStatusGrid()
On Error GoTo EH
    
    Dim intRow As Integer
    
    Dim dblRate As Double
    Dim dblIv As Double
    Dim dblOgIV As Double
    Dim dblVolPer As Double
    
    'Set Grid Settings
    vsIvGrid.Rows = intRows + 1
    vsIvGrid.Cols = 6
    vsIvGrid.FixedCols = 0
    
    vsIvGrid.TextMatrix(0, typIvStatus.intStrike) = "Strike"
    vsIvGrid.ColWidth(typIvStatus.intStrike) = 1000
    
    vsIvGrid.TextMatrix(0, typIvStatus.intCP) = "C/P"
    vsIvGrid.ColWidth(typIvStatus.intCP) = 700
    
    vsIvGrid.TextMatrix(0, typIvStatus.intThIV) = "Th. IV"
    vsIvGrid.ColWidth(typIvStatus.intThIV) = 1000
    
    vsIvGrid.TextMatrix(0, typIvStatus.intLTP) = "LTP"
    vsIvGrid.ColWidth(typIvStatus.intLTP) = 1000
    
    vsIvGrid.TextMatrix(0, typIvStatus.intLiveIV) = "Live IV"
    vsIvGrid.ColWidth(typIvStatus.intLiveIV) = 1000
    
    vsIvGrid.TextMatrix(0, typIvStatus.intCoIV) = "C/O IV"
    vsIvGrid.ColWidth(typIvStatus.intCoIV) = 1000
    
    dblRate = vsGrid.ValueMatrix(vsGrid.Row, typVarAnalysis.intRate)
    
    For intRow = 1 To intRows
    
        vsIvGrid.TextMatrix(intRow, typIvStatus.intStrike) = arrListView(intRow, 0)
        vsIvGrid.TextMatrix(intRow, typIvStatus.intCP) = arrListView(intRow, 1)
        vsIvGrid.TextMatrix(intRow, typIvStatus.intThIV) = arrListView(intRow, 8)
        vsIvGrid.TextMatrix(intRow, typIvStatus.intLTP) = arrListView(intRow, 5)
        vsIvGrid.TextMatrix(intRow, typIvStatus.intLiveIV) = arrListView(intRow, 7)
        
''        If vsIvGrid.TextMatrix(intRow, typIvStatus.intCP) = "C" Then
''            If intRate = 2 Then
''                dblIV = Format(ImpliedCallVolatility(dblRate, Val(arrListView(intRow, 0)), _
''                mdblTempDays / 365, (mdblDomIntRate - mdblForIntRate) / 100, Val(arrListView(intRow, 5)), 0) * 100, _
''                gstrIvDecimalSetting)
''            Else
''                dblIV = Format(ImpliedCallVolatility(dblRate, Val(arrListView(intRow, 0)), _
''                mdblTempDays / 365, intRate, Val(arrListView(intRow, 5)), 0) * 100, _
''                gstrIvDecimalSetting)
''            End If
''        ElseIf vsIvGrid.TextMatrix(intRow, typIvStatus.intCP) = "P" Then
''            If intRate = 2 Then
''                dblIV = Format(ImpliedPutVolatility(dblRate, Val(arrListView(intRow, 0)), _
''                mdblTempDays / 365, (mdblDomIntRate - mdblForIntRate) / 100, Val(arrListView(intRow, 5)), 0) * 100, _
''                gstrIvDecimalSetting)
''            Else
''                dblIV = Format(ImpliedPutVolatility(dblRate, Val(arrListView(intRow, 0)), _
''                mdblTempDays / 365, intRate, Val(arrListView(intRow, 5)), 0) * 100, _
''                gstrIvDecimalSetting)
''            End If
''        End If
''
''        vsIvGrid.TextMatrix(intRow, typIvStatus.intLiveIV) = dblIV
        
        dblVolPer = vsGrid.ValueMatrix(vsGrid.Row, typVarAnalysis.intVolSettings)
        If dblVolPer <> 0 Then
            If vsIvGrid.ValueMatrix(intRow, typIvStatus.intLiveIV) <> 0 Then
                dblIv = vsIvGrid.ValueMatrix(intRow, typIvStatus.intLiveIV)
            Else
                dblIv = vsIvGrid.ValueMatrix(intRow, typIvStatus.intThIV)
            End If
            dblOgIV = dblIv
            dblIv = Round(dblIv + (dblIv * (dblVolPer / 100)), 2)
            If dblIv <= 0 Then
                dblIv = dblOgIV
            End If
            If intRate = 2 Then
                vsIvGrid.TextMatrix(intRow, typIvStatus.intCoIV) = Format(dblIv, gstrIvDecimalSetting)
            Else
                vsIvGrid.TextMatrix(intRow, typIvStatus.intCoIV) = Format(dblIv, gstrIvDecimalSetting)
            End If
        End If
    
    Next
    
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "SetStatusGrid"
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

Public Sub FillGrid()
On Error GoTo EH
    
    Dim intCount As Long
    Dim intFactor As Integer
    Dim dblRateIncDec As Double
    Dim dblRateIncrement As Double
    Dim dblRate As Double
    Dim dblIv As Double
    
    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intRateSettings) = 0
    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intVolSettings) = 0
    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intRate) = mdblCurrentMarketRate
    
    dblIv = 0
    dblRate = mdblCurrentMarketRate
    If intRate = 2 Then
        FillCDBalance dblRate, dblIv, typVarAnalysis.intMidRateRow
    Else
        FillFOBalance dblRate, dblIv, typVarAnalysis.intMidRateRow
    End If
    
'    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intDeltaNeutral) = frmLiveBhavcopy.txtInShares.Text
'    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intDeltaVal) = frmLiveBhavcopy.txtTotal_DelVal.Text
'    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intThetaVal) = frmLiveBhavcopy.txtTotal_ThetaVal.Text
'    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intVegaVal) = frmLiveBhavcopy.txtTotal_VGVal.Text
'    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intGammaVal) = frmLiveBhavcopy.txtTotal_GMVal.Text
'    vsGrid.TextMatrix(typVarAnalysis.intMidRateRow, typVarAnalysis.intBalance) = mdblBalanceMidRow
    
    intFactor = 1
    For intCount = mintNoOfIncDecStep To 1 Step -1
        dblRateIncDec = Round(-(mdblRateIncDecFactor * intFactor), 2)
        
'        vsGrid.TextMatrix(intCount, typVarAnalysis.intVolSettings) = 0
        vsGrid.TextMatrix(intCount, typVarAnalysis.intRateSettings) = dblRateIncDec
        
        dblIv = vsGrid.ValueMatrix(intCount, typVarAnalysis.intVolSettings)
        
        If intRate = 2 Then
            dblRate = Round(mdblCurrentMarketRate + (mdblCurrentMarketRate * (dblRateIncDec / 100)), 4)
            FillCDBalance dblRate, dblIv, intCount
        Else
            dblRate = Round(mdblCurrentMarketRate + (mdblCurrentMarketRate * (dblRateIncDec / 100)), 2)
            FillFOBalance dblRate, dblIv, intCount
        End If
        
        vsGrid.TextMatrix(intCount, typVarAnalysis.intRate) = dblRate
        
        intFactor = intFactor + 1
    Next
    
    intFactor = 1
    For intCount = mintNoOfIncDecStep + 2 To typVarAnalysis.intTotalRow - 1
        dblRateIncDec = Round((mdblRateIncDecFactor * intFactor), 2)
        
'        vsGrid.TextMatrix(intCount, typVarAnalysis.intVolSettings) = 0
        vsGrid.TextMatrix(intCount, typVarAnalysis.intRateSettings) = dblRateIncDec
        
        dblIv = vsGrid.ValueMatrix(intCount, typVarAnalysis.intVolSettings)
        
        If intRate = 2 Then
            dblRate = Round(mdblCurrentMarketRate + (mdblCurrentMarketRate * (dblRateIncDec / 100)), 4)
            FillCDBalance dblRate, dblIv, intCount
        Else
            dblRate = Round(mdblCurrentMarketRate + (mdblCurrentMarketRate * (dblRateIncDec / 100)), 2)
            FillFOBalance dblRate, dblIv, intCount
        End If
        
        vsGrid.TextMatrix(intCount, typVarAnalysis.intRate) = dblRate
        
        intFactor = intFactor + 1
    Next
     
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "FillGrid"
End Sub

Private Sub FillFOBalance(pdblRate As Double, pdblVolPercentage As Double, intGridRow As Long)
On Error GoTo EH

Dim dblT As Double
Dim strCall As String
Dim strPut As String
Dim intStrike As Integer
Dim lngColor As Long
Dim strCallTh As String
Dim strPutTh As String
Dim strCP As String
Dim curStrike As Currency
Dim dblIv As Double
Dim dblThIV As Double

mdblDeltaVal = 0
mdblThetaVal = 0
mdblVegaVal = 0
mdblGammaVal = 0
mdblDeltaNeutral = 0
mdblBalance = 0
mdblM2MOU = 0
mdblOU = 0

dblT = Round(mdblDays / 365, 6)

For intStrike = 1 To intRows
    strCall = arrListView(intStrike, 8)
    strPut = arrListView(intStrike, 8)
    
    strCallTh = arrListView(intStrike, 8)
    strPutTh = arrListView(intStrike, 8)
    
''    If pdblVolPercentage <> 0 Then 'Commented By SSP 08/08/2012
''        'Call Theoretical
''        dblThIV = Val(strCallTh)
''        dblThIV = Round(dblThIV + (dblThIV * (pdblVolPercentage / 100)), 2)
''        If dblThIV <= 0 Then
''            dblThIV = Val(strCallTh)
''        End If
''        strCallTh = Trim$(str(dblThIV))
''
''        'Put Theoretical
''        dblThIV = Val(strPutTh)
''        dblThIV = Round(dblThIV + (dblThIV * (pdblVolPercentage / 100)), 2)
''        If dblThIV <= 0 Then
''            dblThIV = Val(strPutTh)
''        End If
''        strPutTh = Trim$(str(dblThIV))
''    End If
    
    strCP = arrListView(intStrike, 1)
    curStrike = arrListView(intStrike, 0)
    
    dblIv = Val(arrListView(intStrike, 7))
    
    If strCP = "C" Then
        
'        dblIV = Format(ImpliedCallVolatility(pdblRate, Val(arrListView(intStrike, 0)), _
'        mdblTempDays / 365, intRate, Val(arrListView(intStrike, 5)), 0) * 100, gstrIvDecimalSetting)  '6
        
        If dblIv <> 0 Then
            strCall = dblIv
        End If
        
        If pdblVolPercentage <> 0 Then
            dblIv = Val(strCall)
            dblIv = Round(dblIv + (dblIv * (pdblVolPercentage / 100)), 2)
            If dblIv <= 0 Then
                dblIv = Val(strCall)
            End If
            strCall = Trim$(str(dblIv))
        End If
        
        If dblT <= 0 And pdblRate > curStrike Then
            arrListView(intStrike, 4) = pdblRate - curStrike
            arrListView(intStrike, 9) = 100  '8
            arrListView(intStrike, 11) = 0   '10
            arrListView(intStrike, 13) = 0   '12
            arrListView(intStrike, 15) = 0   '14
        ElseIf dblT <= 0 And pdblRate < curStrike Then
            arrListView(intStrike, 4) = 0
            arrListView(intStrike, 9) = 0
            arrListView(intStrike, 11) = 0
            arrListView(intStrike, 13) = 0
            arrListView(intStrike, 15) = 0
        ElseIf dblT <= 0 And pdblRate = curStrike Then
            arrListView(intStrike, 4) = 0
            arrListView(intStrike, 9) = 50
            arrListView(intStrike, 11) = 0
            arrListView(intStrike, 13) = 0
            arrListView(intStrike, 15) = 0
        Else
            If intGridRow = typVarAnalysis.intMidRateRow Then 'Updated By SSP 08/08/2012
                arrListView(intStrike, 4) = Format(CalculateLastCall(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strCallTh), 0), strPubFormatLastVal)
            Else
                arrListView(intStrike, 4) = Format(CalculateLastCall(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strCall), 0), strPubFormatLastVal)
            End If
            arrListView(intStrike, 9) = Format(CalculateDeltaCall(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strCall), 0), strPubFormatDelta)
            arrListView(intStrike, 11) = Format(-(CalculateThetaCall(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strCall), 0)), strPubFormatTheta) 'Theta
            arrListView(intStrike, 13) = Format(CalculateVega(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strCall), 0), strPubFormatVega)
            arrListView(intStrike, 15) = Format(CalculateGamma(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strCall), 0), strPubFormatGamma)
        End If
        
        'Updated By SSP 06/12/2011
        arrListView(intStrike, 10) = Format(-(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 9) / 100)), strPubFormatDelta)
        arrListView(intStrike, 12) = Format(Val(arrListView(intStrike, 2)) * (-Val(arrListView(intStrike, 11))), strPubFormatTheta)
        arrListView(intStrike, 14) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 13)), strPubFormatVega)
        arrListView(intStrike, 16) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 15)), strPubFormatGamma)
    
    End If
    
    
    
    If strCP = "P" Then
    
'        dblIV = Format(ImpliedPutVolatility(pdblRate, Val(arrListView(intStrike, 0)), _
'        mdblTempDays / 365, intRate, Val(arrListView(intStrike, 5)), 0) * 100, gstrIvDecimalSetting) '6
        
        If dblIv <> 0 Then
            strPut = dblIv
        End If
        
        If pdblVolPercentage <> 0 Then
            dblIv = Val(strPut)
            dblIv = Round(dblIv + (dblIv * (pdblVolPercentage / 100)), 2)
            If dblIv <= 0 Then
                dblIv = Val(strPut)
            End If
            strPut = Trim$(str(dblIv))
        End If
        
        If dblT <= 0 And pdblRate > curStrike Then
            arrListView(intStrike, 4) = 0
            arrListView(intStrike, 9) = 0
            arrListView(intStrike, 11) = 0
            arrListView(intStrike, 13) = 0
            arrListView(intStrike, 15) = 0
        ElseIf dblT <= 0 And pdblRate < curStrike Then
            arrListView(intStrike, 4) = curStrike - pdblRate
            arrListView(intStrike, 9) = -100
            arrListView(intStrike, 11) = 0
            arrListView(intStrike, 13) = 0
            arrListView(intStrike, 15) = 0
        ElseIf dblT <= 0 And pdblRate = curStrike Then
            arrListView(intStrike, 4) = 0
            arrListView(intStrike, 9) = -50
            arrListView(intStrike, 11) = 0
            arrListView(intStrike, 13) = 0
            arrListView(intStrike, 15) = 0
        Else
            If intGridRow = typVarAnalysis.intMidRateRow Then 'Updated By SSP 08/08/2012
                arrListView(intStrike, 4) = Format(CalculateLastPut(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strPutTh), 0), strPubFormatLastVal)
            Else
                arrListView(intStrike, 4) = Format(CalculateLastPut(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strPut), 0), strPubFormatLastVal)
            End If
            arrListView(intStrike, 9) = Format(CalculateDeltaPut(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strPut), 0), strPubFormatDelta)
            arrListView(intStrike, 11) = Format(-(CalculateThetaPut(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strPut), 0)), strPubFormatTheta)
            arrListView(intStrike, 13) = Format(CalculateVega(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strPut), 0), strPubFormatVega)
            arrListView(intStrike, 15) = Format(CalculateGamma(pdblRate, intRate, CDbl(curStrike), mdblDays, Val(strPut), 0), strPubFormatGamma)
        End If
        
        arrListView(intStrike, 10) = Format(-(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 9) / 100)), strPubFormatDelta)
        arrListView(intStrike, 12) = Format(Val(arrListView(intStrike, 2)) * (-Val(arrListView(intStrike, 11))), strPubFormatTheta)
        arrListView(intStrike, 14) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 13)), strPubFormatVega)
        arrListView(intStrike, 16) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 15)), strPubFormatGamma)
            
    End If
    
    If Val(arrListView(intStrike, 2)) <> 0 Then
        If intGridRow = typVarAnalysis.intMidRateRow Then 'Updated By SSP 08/08/2012
            If Val(arrListView(intStrike, 5)) <> 0 Then
                mdblM2MOU = mdblM2MOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 5)))
            ElseIf Val(arrListView(intStrike, 4)) <> 0 Then
                mdblM2MOU = mdblM2MOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 4)))
            End If
        Else
            mdblM2MOU = mdblM2MOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 4)))
        End If
    End If
    
    mdblDeltaVal = mdblDeltaVal + Val(arrListView(intStrike, 10))
    mdblThetaVal = mdblThetaVal + Val(arrListView(intStrike, 12))
    mdblVegaVal = mdblVegaVal + Val(arrListView(intStrike, 14))
    mdblGammaVal = mdblGammaVal + Val(arrListView(intStrike, 16))
    
    mdblOU = mdblOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 4)))
Next

mdblFSU = -(mdblNetAvg * (mdblNetTrade - pdblRate))
mdblDeltaNeutral = mdblDeltaVal - mdblNetAvg

If strPubIsFormatAllowed = "1" Then
    mdblFSU = FormatValueFromValue(mdblFSU)
    mdblM2MOU = FormatValueFromValue(mdblM2MOU)
End If

mdblBalance = mdblPremium + mdblFSR + mdblOR + mdblFSU + mdblM2MOU + mdblCarryForward

vsGrid.TextMatrix(intGridRow, typVarAnalysis.intDeltaVal) = Round(mdblDeltaVal, 0)
vsGrid.TextMatrix(intGridRow, typVarAnalysis.intThetaVal) = Round(mdblThetaVal, 0)
vsGrid.TextMatrix(intGridRow, typVarAnalysis.intVegaVal) = Round(mdblVegaVal, 0)
vsGrid.TextMatrix(intGridRow, typVarAnalysis.intGammaVal) = Round(mdblGammaVal, 2)

vsGrid.TextMatrix(intGridRow, typVarAnalysis.intBalance) = Round(mdblBalance, 0)
vsGrid.TextMatrix(intGridRow, typVarAnalysis.intDeltaNeutral) = Round(mdblDeltaNeutral, 0)

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "FillFOBalance"
End Sub

Public Sub FillCDBalance(pdblRate As Double, pdblVolPercentage As Double, _
intGridRow As Long)

On Error GoTo EH

    Dim dblT As Double
    Dim strCall As String
    Dim strPut As String
    Dim strCP As String
    Dim strCallTh As String
    Dim strPutTh As String
    
    Dim intStrike As Integer
    Dim lngColor As Long
    Dim curStrike As Currency
    Dim dblIv As Double
    Dim dblThIV As Double
    
    mdblDeltaVal = 0
    mdblThetaVal = 0
    mdblVegaVal = 0
    mdblGammaVal = 0
    mdblRhoVal = 0
    mdblDeltaNeutral = 0
    mdblBalance = 0
    mdblM2MOU = 0
    mdblOU = 0
    
    dblT = Round(mdblDays / 365, 6)
    
    For intStrike = 1 To intRows
        curStrike = arrListView(intStrike, 0)
        strCP = arrListView(intStrike, 1)
        
        strCallTh = arrListView(intStrike, 8)
        strPutTh = arrListView(intStrike, 8)
        
'''        If pdblVolPercentage <> 0 Then'Commented By SSP 08/08/2012
'''            'Call Theoretical
'''            dblThIV = Val(strCallTh)
'''            dblThIV = Round(dblThIV + (dblThIV * (pdblVolPercentage / 100)), 2)
'''            If dblThIV <= 0 Then
'''                dblThIV = Val(strCallTh)
'''            End If
'''            strCallTh = Trim$(str(dblThIV))
'''
'''            'Put Theoretical
'''            dblThIV = Val(strPutTh)
'''            dblThIV = Round(dblThIV + (dblThIV * (pdblVolPercentage / 100)), 2)
'''            If dblThIV <= 0 Then
'''                dblThIV = Val(strPutTh)
'''            End If
'''            strPutTh = Trim$(str(dblThIV))
'''        End If
        
        strCall = arrListView(intStrike, 8)
        strPut = arrListView(intStrike, 8)
        
        dblIv = Val(arrListView(intStrike, 7))
        If strCP = "C" Then
'            dblIV = Format(ImpliedCallVolatility(pdblRate, Val(arrListView(intStrike, 0)), _
'                    mdblTempDays / 365, (mdblDomIntRate - mdblForIntRate) / 100, Val(arrListView(intStrike, 5)), 0) * 100, gstrIvDecimalSetting) '6
            
            If dblIv <> 0 Then
                strCall = dblIv
            End If
            
            If pdblVolPercentage <> 0 Then
                dblIv = Val(strCall)
                dblIv = Round(dblIv + (dblIv * (pdblVolPercentage / 100)), 2)
                If dblIv <= 0 Then
                    dblIv = Val(strCall)
                End If
                strCall = Trim$(str(dblIv))
            End If
    
            If dblT <= 0 And pdblRate > curStrike Then
                arrListView(intStrike, 4) = pdblRate - curStrike
                arrListView(intStrike, 9) = 100 / 100 '8
                arrListView(intStrike, 11) = 0   '10
                arrListView(intStrike, 13) = 0   '12
                arrListView(intStrike, 15) = 0   '14
                arrListView(intStrike, 17) = 0   '14
            ElseIf dblT <= 0 And pdblRate < curStrike Then
                arrListView(intStrike, 4) = 0
                arrListView(intStrike, 9) = 0
                arrListView(intStrike, 11) = 0
                arrListView(intStrike, 13) = 0
                arrListView(intStrike, 15) = 0
                arrListView(intStrike, 17) = 0   '14
            ElseIf dblT <= 0 And pdblRate = curStrike Then
                arrListView(intStrike, 4) = 0
                arrListView(intStrike, 9) = 50 / 100
                arrListView(intStrike, 11) = 0
                arrListView(intStrike, 13) = 0
                arrListView(intStrike, 15) = 0
                arrListView(intStrike, 17) = 0   '14
            Else
                If intGridRow = typVarAnalysis.intMidRateRow Then 'Updated By SSP 08/08/2012
                    arrListView(intStrike, 4) = Format(CalculateLastCallCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCallTh), 0), "0.0000")
                Else
                    arrListView(intStrike, 4) = Format(CalculateLastCallCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCall), 0), "0.0000")
                End If
                arrListView(intStrike, 9) = Format(CalculateDeltaCallCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCall), 0), "0.0000")
                arrListView(intStrike, 11) = Format(-CalculateThetaCallCur(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCall), 0), "0.0000")
                arrListView(intStrike, 13) = Format(CalculateVegaCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCall), 0), "0.0000")
                arrListView(intStrike, 15) = Format(CalculateGammaCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCall), 0), "0.0000")
                arrListView(intStrike, 17) = Format(CalculateRhoCallCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strCall), 0), "0.0000")
            End If

            arrListView(intStrike, 10) = Format(-(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 9))), "0.0000") '* curLotSize
            arrListView(intStrike, 12) = Format(Val(arrListView(intStrike, 2)) * (-Val(arrListView(intStrike, 11))) * mcurLotSize, "0.0000")
            arrListView(intStrike, 14) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* mcurLotSize'Mod.On17/10/2011
            arrListView(intStrike, 16) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 15)), "0.0000") '* mcurLotSize
            arrListView(intStrike, 18) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 17)) * mcurLotSize, "0.0000")
        End If
       
       
       
        If strCP = "P" Then
            
'            dblIV = Format(ImpliedPutVolatility(pdblRate, Val(arrListView(intStrike, 0)), _
'                    mdblTempDays / 365, (mdblDomIntRate - mdblForIntRate) / 100, Val(arrListView(intStrike, 5)), 0) * 100, gstrIvDecimalSetting) '6
            
            If dblIv <> 0 Then
                strPut = dblIv
            End If
            
            If pdblVolPercentage <> 0 Then
                dblIv = Val(strPut)
                dblIv = Round(dblIv + (dblIv * (pdblVolPercentage / 100)), 2)
                If dblIv <= 0 Then
                    dblIv = Val(strPut)
                End If
                strPut = Trim$(str(dblIv))
            End If
            
            If dblT <= 0 And pdblRate > curStrike Then
                arrListView(intStrike, 4) = 0
                arrListView(intStrike, 9) = 0
                arrListView(intStrike, 11) = 0
                arrListView(intStrike, 13) = 0
                arrListView(intStrike, 15) = 0
                arrListView(intStrike, 17) = 0   '14
            ElseIf dblT <= 0 And pdblRate < curStrike Then
                arrListView(intStrike, 4) = curStrike - pdblRate
                arrListView(intStrike, 9) = -100 / 100
                arrListView(intStrike, 11) = 0
                arrListView(intStrike, 13) = 0
                arrListView(intStrike, 15) = 0
                arrListView(intStrike, 17) = 0   '14
            ElseIf dblT <= 0 And pdblRate = curStrike Then
                arrListView(intStrike, 4) = 0
                arrListView(intStrike, 9) = -50 / 100
                arrListView(intStrike, 11) = 0
                arrListView(intStrike, 13) = 0
                arrListView(intStrike, 15) = 0
                arrListView(intStrike, 17) = 0
            Else
                If intGridRow = typVarAnalysis.intMidRateRow Then 'Updated By SSP 08/08/2012
                    arrListView(intStrike, 4) = Format(CalculateLastPutCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPutTh), 0), "0.0000")
                Else
                    arrListView(intStrike, 4) = Format(CalculateLastPutCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPut), 0), "0.0000")
                End If
                arrListView(intStrike, 9) = Format(CalculateDeltaPutCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPut), 0), "0.0000")
                arrListView(intStrike, 11) = Format(-CalculateThetaPutCur(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPut), 0), "0.0000")
                arrListView(intStrike, 13) = Format(CalculateVegaCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPut), 0), "0.0000")
                arrListView(intStrike, 15) = Format(CalculateGammaCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPut), 0), "0.0000")
                arrListView(intStrike, 17) = Format(CalculateRhoPutCurrency(pdblRate, mdblForIntRate, mdblDomIntRate, CDbl(curStrike), mdblDays, Val(strPut), 0), "0.0000")
            End If

            arrListView(intStrike, 10) = Format(-(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 9))), "0.0000") '* mcurLotSize
            arrListView(intStrike, 12) = Format(Val(arrListView(intStrike, 2)) * (-Val(arrListView(intStrike, 11))) * mcurLotSize, "0.0000")
            arrListView(intStrike, 14) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 13)) * gdblCurVegaMultFactor, "0.0000") 'Updated By SSP 02/05/2012 '* mcurLotSize'Mod.On17/10/2011
            arrListView(intStrike, 16) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 15)), "0.0000") '* mcurLotSize
            arrListView(intStrike, 18) = Format(Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 17)) * mcurLotSize, "0.0000")
        End If
        
        If Val(arrListView(intStrike, 2)) <> 0 Then
            If intGridRow = typVarAnalysis.intMidRateRow Then 'Updated By SSP 08/08/2012
                If Val(arrListView(intStrike, 5)) <> 0 Then
                    mdblM2MOU = mdblM2MOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 5)))
                ElseIf Val(arrListView(intStrike, 4)) <> 0 Then
                    mdblM2MOU = mdblM2MOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 4)))
                End If
            Else
                mdblM2MOU = mdblM2MOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 4)))
            End If
        End If
        
        mdblDeltaVal = mdblDeltaVal + Val(arrListView(intStrike, 10))
        mdblThetaVal = mdblThetaVal + Val(arrListView(intStrike, 12))
        mdblVegaVal = mdblVegaVal + Val(arrListView(intStrike, 14))
        mdblGammaVal = mdblGammaVal + Val(arrListView(intStrike, 16))
        mdblRhoVal = mdblRhoVal + Val(arrListView(intStrike, 18))
        
        mdblOU = mdblOU + (Val(arrListView(intStrike, 2)) * Val(arrListView(intStrike, 4)))
    Next

    
    mdblFSU = -(mdblNetAvg * (mdblNetTrade - pdblRate))
    mdblDeltaNeutral = mdblDeltaVal - mdblNetAvg
    
    mdblOU = mdblOU * mcurLotSize
    mdblM2MOU = mdblM2MOU * mcurLotSize
    mdblFSU = mdblFSU * mcurLotSize
    
    
    If strPubIsFormatAllowed = "1" Then
        mdblFSU = FormatValueFromValue(mdblFSU)
        mdblM2MOU = FormatValueFromValue(mdblM2MOU)
    End If
    
    mdblBalance = mdblPremium + mdblFSR + mdblOR + mdblFSU + mdblM2MOU + mdblCarryForward
    
    vsGrid.TextMatrix(intGridRow, typVarAnalysis.intDeltaVal) = Round(mdblDeltaVal, 0)
    vsGrid.TextMatrix(intGridRow, typVarAnalysis.intThetaVal) = Round(mdblThetaVal, 0)
    vsGrid.TextMatrix(intGridRow, typVarAnalysis.intVegaVal) = Round(mdblVegaVal, 0)
    vsGrid.TextMatrix(intGridRow, typVarAnalysis.intGammaVal) = Round(mdblGammaVal, 2)
    
    vsGrid.TextMatrix(intGridRow, typVarAnalysis.intBalance) = Round(mdblBalance, 0)
    vsGrid.TextMatrix(intGridRow, typVarAnalysis.intDeltaNeutral) = Round(mdblDeltaNeutral, 0)

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "FillFOBalance"
End Sub

Public Sub FillArray()
On Error GoTo EH

    Dim intRow As Integer
    Dim intCol As Integer
    
    intRows = frmLiveBhavcopyWithStrategy.lstDetails1.ListItems.count
    intCols = frmLiveBhavcopyWithStrategy.lstDetails1.ColumnHeaders.count
    
    ReDim arrListView(intRows, intCols)
    
    For intRow = 1 To intRows
        For intCol = 0 To intCols - 1
            If intCol = 0 Then
                arrListView(intRow, intCol) = frmLiveBhavcopyWithStrategy.lstDetails1.ListItems(intRow)
            Else
                arrListView(intRow, intCol) = frmLiveBhavcopyWithStrategy.lstDetails1.ListItems(intRow).SubItems(intCol)
            End If
        Next
    Next

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "FillArray"
End Sub

Private Sub cmdConfigure_Click()
    frmVarAnalysisConfigure.Show vbModal
End Sub

Private Sub cmdExportToExcel_Click()
    ExportToExcelFromVsGrid CommonDialog1, vsGrid, lblPortfolio.Caption
End Sub

Private Sub cmdExportToExcel2_Click()
    ExportToExcelFromVsGrid CommonDialog1, vsIvGrid, lblPortfolio.Caption & " " & lblIvStatusCap.Caption
End Sub

Private Sub cmdRefresh_Click()
    mdblRateIncDecFactor = gdblRateIncDecFactor
    mintNoOfIncDecStep = gintNoOfIncDecStep
    
    WriteVolSettings
    SetGrid
    FillGrid
    
End Sub

Private Sub cmdStatusClose_Click()
fraIVStatus.Visible = False
fraVarAnalysis.Enabled = True
cmdClose.Cancel = True
End Sub

Private Sub Form_Load()
On Error GoTo EH
    
    fraIVStatus.Visible = False
    cmdClose.Cancel = True
    
    lblPortfolio.Caption = frmLiveBhavcopyWithStrategy.cboPortfolioList.Text
        
    gdblRateIncDecFactor = Val(GetSetting("DeltaSoft", "VarAnalysis", "RateIncDecFactor", 2))
    gintNoOfIncDecStep = Val(GetSetting("DeltaSoft", "VarAnalysis", "NoOfIncDecStep", 5))
    
    mdblRateIncDecFactor = gdblRateIncDecFactor
    mintNoOfIncDecStep = gintNoOfIncDecStep
    
    mdblDays = Val(frmLiveBhavcopyWithStrategy.txtDays.Text)
    mdblTempDays = Val(frmLiveBhavcopyWithStrategy.txtTempDays.Text)
    mdblCallVol = Val(frmLiveBhavcopyWithStrategy.txtCall.Text)
    mdblPutVol = Val(frmLiveBhavcopyWithStrategy.txtPut.Text)
    
    mdblDomIntRate = Val(frmLiveBhavcopyWithStrategy.txtDomesticIntRate.Text)
    mdblForIntRate = Val(frmLiveBhavcopyWithStrategy.txtForeignIntRate.Text)
    mcurLotSize = frmLiveBhavcopyWithStrategy.curLotSize
    
    mdblNetAvg = Val(frmLiveBhavcopyWithStrategy.txtNAvg.Text)
    mdblNetTrade = Val(frmLiveBhavcopyWithStrategy.txtNTrade.Text)
    
    mdblCurrentMarketRate = Val(frmLiveBhavcopyWithStrategy.txtRate.Text)
    
    mdblOR = Val(frmLiveBhavcopyWithStrategy.txtOR.Text)
    mdblFSR = Val(frmLiveBhavcopyWithStrategy.txtFSR.Text)
    mdblPremium = Val(frmLiveBhavcopyWithStrategy.txtPremium.Text)
    mdblCarryForward = frmLiveBhavcopyWithStrategy.curCarryForward
    mdblBalanceMidRow = Val(frmLiveBhavcopyWithStrategy.txtPremium.Text) + Val(frmLiveBhavcopyWithStrategy.txtFSR.Text) + _
                Val(frmLiveBhavcopyWithStrategy.txtOR.Text) + Val(frmLiveBhavcopyWithStrategy.txtOptionUN.Text) + _
                Val(frmLiveBhavcopyWithStrategy.txtFSU.Text) + mdblCarryForward
    
    
    mlngMiddleRateColor = &H764347
    
    SetVarAnalysisGrid
    SetGrid
    
    
Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, Me.Caption
End Sub


Private Sub Form_Unload(Cancel As Integer)
    WriteVolSettings
    If frmLiveBhavcopyWithStrategy.blnIsCaptureStarted = True Then
        frmLiveBhavcopyWithStrategy.StartCaptureOnForm
    End If
End Sub

Private Sub vsGrid_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    If Col <> typVarAnalysis.intVolSettings Then Exit Sub
    If Row = typVarAnalysis.intMidRateRow Then Exit Sub
    
    Dim dblRate As Double
    Dim dblIv As Double
    
    dblRate = vsGrid.ValueMatrix(Row, typVarAnalysis.intRate)
    dblIv = vsGrid.ValueMatrix(Row, typVarAnalysis.intVolSettings)
    If intRate = 2 Then
        FillCDBalance dblRate, dblIv, Row
    Else
        FillFOBalance dblRate, dblIv, Row
    End If
End Sub

Private Sub vsGrid_BeforeEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    If Col <> typVarAnalysis.intVolSettings Then Cancel = True
    If Row = typVarAnalysis.intMidRateRow Then Cancel = True
End Sub

Private Sub vsGrid_DblClick()
    If vsGrid.Row = 0 Then Exit Sub
    If vsGrid.Rows <= 1 Then Exit Sub
    If vsGrid.Col <> typVarAnalysis.intVolSettings Then
        fraIVStatus.Visible = True
        fraVarAnalysis.Enabled = False
        lblIvStatusCap.Caption = "Rate%: " & vsGrid.TextMatrix(vsGrid.Row, typVarAnalysis.intRateSettings) & _
                                "    Vol%: " & vsGrid.TextMatrix(vsGrid.Row, typVarAnalysis.intVolSettings)
        cmdStatusClose.Cancel = True
        SetStatusGrid
    End If
End Sub

Private Sub vsGrid_KeyPressEdit(ByVal Row As Long, ByVal Col As Long, KeyAscii As Integer)
    If Row = typVarAnalysis.intMidRateRow Then KeyAscii = 0
    
    If KeyAscii = 13 Or KeyAscii = 8 Then
    Else
        If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 46 Or KeyAscii = Asc("-")) Then KeyAscii = 0
    End If
End Sub

Public Sub WriteVolSettings()
On Error GoTo EH
    
    Dim fsoObject As New FileSystemObject
    Dim tsStream As TextStream
    Dim intRow As Integer
    Dim intCnt As Integer
    Dim strStep As String
    Dim strLine As String
    
    Set tsStream = fsoObject.CreateTextFile(App.path & "\VarAnalysisLiveBhavcopy.ini", True)
    tsStream.WriteLine "[VarAnalysisLiveBhavcopy]"
    
    For intRow = typVarAnalysis.intMidRateRow + 1 To typVarAnalysis.intTotalRow - 1
        intCnt = intCnt + 1
        strStep = "IStep" & Format(intCnt, "00")
        If vsGrid.ValueMatrix(intRow, typVarAnalysis.intVolSettings) <> 0 Then
            strLine = strStep & ":" & vsGrid.ValueMatrix(intRow, typVarAnalysis.intVolSettings)
            tsStream.WriteLine strLine
        End If
    Next
    
    intCnt = 0
    For intRow = typVarAnalysis.intMidRateRow - 1 To 1 Step -1
        intCnt = intCnt + 1
        strStep = "DStep" & Format(intCnt, "00")
        If vsGrid.ValueMatrix(intRow, typVarAnalysis.intVolSettings) <> 0 Then
            strLine = strStep & ":" & vsGrid.ValueMatrix(intRow, typVarAnalysis.intVolSettings)
            tsStream.WriteLine strLine
        End If
    Next
    tsStream.Close
    Set tsStream = Nothing
    Set fsoObject = Nothing

Exit Sub
EH:
    MsgBox Err.Number & ":" & Err.Description, vbCritical, "Writing: VarAnalysisLiveBhavcopy"
End Sub

Public Sub ReadVolSettings()
'Reads Settings.ini file
On Error GoTo EH

Dim FFINI As Integer                 'Used to identify File no for opeing sequencial file
Dim strFFINI As String               'INI File Data (1 line at a time)
Dim strIntLoc As Long                'Locate a character in a string
Dim strHeader As String                  'Used to locate new Header in ini file
Dim strStep As String
Dim strPercentage As String
Dim intRow As Integer

'Used for Accessing INI File
FFINI = FreeFile
Open App.path & "\VarAnalysisLiveBhavcopy.ini" For Input As FFINI
Input #FFINI, strFFINI
Do While Not EOF(FFINI)
    If strFFINI = "[VarAnalysisLiveBhavcopy]" Then
        If Not EOF(FFINI) Then
            Input #FFINI, strFFINI
        Else
            Exit Do
        End If
        strHeader = ""
        Do While Not strHeader = "["
            If Left(strFFINI, 5) = "IStep" Then
                strStep = Mid(strFFINI, 6, 2)
                intRow = Val(strStep)
                strPercentage = Right(strFFINI, Len(strFFINI) - 8)
                
                If intRow <> 0 Then
                    intRow = typVarAnalysis.intMidRateRow + intRow
                    If intRow < vsGrid.Rows Then
                        vsGrid.TextMatrix(intRow, typVarAnalysis.intVolSettings) = strPercentage
                    End If
                End If
            ElseIf Left(strFFINI, 5) = "DStep" Then
                strStep = Mid(strFFINI, 6, 2)
                intRow = Val(strStep)
                strPercentage = Right(strFFINI, Len(strFFINI) - 8)
                
                If intRow <> 0 Then
                    intRow = typVarAnalysis.intMidRateRow - intRow
                    If intRow > 0 Then
                        vsGrid.TextMatrix(intRow, typVarAnalysis.intVolSettings) = strPercentage
                    End If
                End If
            End If
            
            If Not EOF(FFINI) Then
                Input #FFINI, strFFINI
            Else
                Exit Do
            End If
            strHeader = Left(strFFINI, 1)
        Loop
    End If
Loop
Close #FFINI

    
Exit Sub
EH:
    If Err.Number = 53 Then
    
    Else
        MsgBox Err.Number & ":" & Err.Description, vbCritical, "Reading: VarAnalysisLiveBhavcopy"
    End If
End Sub



