Attribute VB_Name = "modSysread2"
Public Type MBPInformation
    Quantity As Long
    Price As Long
    NumberOfOrders As Integer '// this is now chnaged to short from long, i thnk this was issue
    BbBuySellFlag As Integer
End Type
'
'Structure name: MBP Information
'    LONG Quantity
'    LONG Price
'    Short NumberOfOrders
'    Short BbBuySellFlag


'LONG Token
'Short BookType
'Short TradingStatus
'LONG VolumeTradedToday
'LONG LastTradedPrice
'Char NetChangeIndicator
'LONG NetPriceChangeFromClosingPrice
'LONG LastTradeQuantity
'LONG LastTradeTime
'LONG AverageTradePrice
'Short AuctionNumber
'Short AuctionStatus
'Short InitiatorType
'LONG InitiatorPrice
'LONG InitiatorQuantity
'LONG AuctionPrice
'LONG AuctionQuantity
'CHAR RecordBuffer [ sizeof ( MBP INFORMATION ) * 10 ]
'Short BbTotalBuyFlag
'Short BbTotalSellFlag
'DOUBLE TotalBuyQuantity
'DOUBLE TotalSellQuantity
'STRUCT ST_INDICATOR
'LONG ClosingPrice
'LONG OpenPrice
'LONG HighPrice
'LONG LowPrice


Public Type TKROW
'    trCode As Integer
    Token As Long
    BookType As Integer
    TradingStatus As Integer
    VolumeTradedToday As Long
    LastTradedPrice As Long
    NetChangeIndicator As Byte 'String * 1
    NetPriceChangeFromClosingPrice As Long
    LastTradeQuantity As Long
    LastTradeTime As Long
    AverageTradePrice As Long
    AuctionNumber As Integer
    AuctionStatus As Integer
    InitiatorType As Integer
    InitiatorPrice As Long
    InitiatorQuantity As Long
    AuctionPrice As Long
    AuctionQuantity As Long
    MBPinfo(1 To 10) As MBPInformation
    'RecordBuffer(120) As Byte
    BbTotalBuyFlag As Integer
    BbTotalSellFlag As Integer
    TotalBuyQuantity As Double
    TotalSellQuantity As Double
    'STIndicator(2) As Byte
    ClosingPrice As Long
    OpenPrice As Long
    HighPrice As Long
    LowPrice As Long
End Type

Public Type TKTABLE
    noOfRecords As Integer
    onlyMPBData(1 To 30) As TKROW
End Type

Public Type FutureRate
    Token(1 To 30) As Long
    LTP(1 To 30) As Long
End Type


'Added NYN 25/08/2014
'For Creating new Structure for Array Values

Public Type FutMainArrayFormat
    Token As Long
    LTP As Long
    OI As Long
End Type

Public Type EquityRate
    Token(1 To 30) As Long
    LTP(1 To 30) As Long
End Type

'Added NYN 25/08/2014

' This is sent to C++ To get decoded data only
' Ie., Data Holder Structure for 7202
' *********************************
Public Type St_Ticker_Data_Only
    Token(0 To 30) As Long               '4 X 30 '120
    MarketType(0 To 30)  As Integer      '2 X 30 '6
    FillPrice(0 To 30)  As Long          '4 X 30 '10
    FillVolume(0 To 30)  As Long         '4 X 30 '14
    OpenInterest(0 To 30)  As Long       '4 X 30 '18
    DayHiOI(0 To 30)  As Long            '4 X 30 '22
    DayLoOI(0 To 30)  As Long            '4 X 30 '26
End Type

' *********************************
' Structure to hold open info with token
' *********************************
Public Type OpenInterestInfo
    Token As Long
    OpenInterest As Long
End Type

Public tktable1 As TKTABLE
Public futtr As FutureRate
Public eqrt As EquityRate
''
''Public Declare Function GetTkTable _
''Lib "D:\mfccode\SysReadDll6\Debug\SysReadDll6.dll" _
''Alias "?GetTkTable@@YGHPAD0JPAUTKTABLE@@JF@Z" _
''(ByRef bytStreamBuffer() As Byte, ByRef bytUncompBuffer() As Byte, _
''ByVal filterTrCode As Long, ByRef tkt As TKTABLE, _
''ByVal filterTkn As Long, ByVal saveFlag As Integer) As Long
''
''Public Declare Function GetTkTable2 _
''Lib "D:\mfccode\SysReadDll6\Debug\SysReadDll6.dll" _
''Alias "?GetTkTable@@YGHPAD0JPAUTKTABLE@@JF@Z" _
''(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
''ByVal filterTrCode As Long, ByRef tkt As TKTABLE, _
''ByVal filterTkn As Long, ByVal saveFlag As Integer) As Long
''
''Public Declare Function GetTkTable3 _
''Lib "D:\mfccode\SysReadDll6\Debug\SysReadDll6.dll" _
''Alias "?GetTkTableNew@@YAHPAD0JPAUTKTABLE@@JF@Z" _
''(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
''ByVal filterTrCode As Long, ByRef tkt As TKTABLE, _
''ByVal filterTkn As Long, ByVal saveFlag As Integer) As Long
''
''Public Declare Function GetTkTable4 _
''Lib "D:\mfccode\SysReadDll6 08-07\Debug\SysReadDll6.dll" _
''Alias "?GetTkTable@@YGHPAD0JPAUTKTABLE@@JF@Z" _
''(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
''ByVal filterTrCode As Long, ByRef tkt As TKTABLE, _
''ByVal filterTkn As Long, ByVal saveFlag As Integer) As Long
''
''Public Declare Function GetTkTable5 _
''Lib "D:\mfccode\sysreadern_src_022310\sysreadern\Debug\sysreadern.dll" _
''Alias "?GetTKTable@@YGHPAD0HPAUTKTABLE@@JF@Z" _
''(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
''ByVal filterTrCode As Long, ByRef tkt As TKTABLE, _
''ByVal filterTkn As Long, ByVal saveFlag As Integer) As Long
''
''
''Public Declare Function GetFutureRate1 _
''Lib "D:\mfccode\sysreadern_src_022310\sysreadern\Debug\sysreadern.dll" _
''Alias "_GetFutureRate@36" _
''(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
''ByVal filterTrCode As Long, ByRef tkt As TKTABLE, _
''ByVal filterTkn As Long, ByVal saveFlag As Integer, _
''ByVal FutureRate As Long, ByVal TOKENNo As Long, ByRef futtr3 As FutureRate) As Long

Public Declare Function GetLtp _
Lib "C:\Dll\SysReadLTP.dll" _
Alias "_GetLTP@24" _
(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
ByVal filterTrCode As Long, _
ByVal filterTkn As Long, ByVal saveFlag As Integer, _
ByRef futtr3 As FutureRate) As Long

Public Declare Function GetTickerData _
Lib "C:\Dll\SysReadTicker.dll" _
Alias "_GetTickerAndMarketNew@24" _
(ByRef bytStreamBuffer As Byte, _
ByRef bytUncompBuffer As Byte, _
ByVal filterTrCode As Long, _
ByVal filterTkn As Long, _
ByVal saveFlag As Integer, _
ByRef typMbp2 As St_Ticker_Data_Only) As Long


'Changed By: Sachin 21/12/2010
Public Declare Function GetLtpCurrency _
Lib "C:\Dll\SysReadLTP_Currency.dll" _
Alias "_GetLTP@24" _
(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
ByVal filterTrCode As Long, _
ByVal filterTkn As Long, ByVal saveFlag As Integer, _
ByRef futtr3 As FutureRate) As Long

'Public Declare Function GetLtp2 _
'Lib "C:\Dll\SysReadFOEQ.dll" _
'Alias "_GetLTP2@32" _
'(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
'ByVal filterTrCode As Long, _
'ByVal filterTkn As Long, ByVal saveFlag As Integer, _
'ByRef futtr3 As FutureRate, _
'ByRef eqrt2 As EquityRate, _
'ByVal lngEQFlag As Long) As Long

'Public Declare Function GetLtp _
'Lib "D:\DLL\SysReadLTP.dll" _
'Alias "GetLTP" _
'(ByRef bytStreamBuffer As Byte, ByRef bytUncompBuffer As Byte, _
'ByVal filterTrCode As Long, _
'ByVal filterTkn As Long, ByVal saveFlag As Integer, _
'ByRef futtr3 As FutureRate) As Long

Public Declare Function GetLtpEQ _
Lib "C:\Dll\SysReadLTP.dll" _
Alias "_GetLTPEQ@24" _
(ByRef bytStreamBuffer As Byte, _
ByRef bytUncompBuffer As Byte, _
ByVal filterTrCode As Long, _
ByVal filterTkn As Long, _
ByVal saveFlag As Integer, _
ByRef eqrt As EquityRate) As Long


'Private Declare Function GetTickerData _
'Lib "C:\Dll\SysReadTicker.dll" _
'Alias "_GetTickerAndMarketNew@24" _
'(ByRef bytStreamBuffer As Byte, _
'ByRef bytUncompBuffer As Byte, _
'ByVal filterTrCode As Long, _
'ByVal filterTkn As Long, _
'ByVal saveFlag As Integer, _
'ByRef typMbp2 As St_Ticker_Data_Only) As Long

'extern "C" SYSREADERN_API int ProcessMBP(char* streamBuffer, char *unCompbuffer, char *strTrCode,TKTABLE * tktable,long filterTkn, short saveFlg);
'Public Declare Function ProcessMBP Lib "D:\dll\sysreadern.dll" (ByVal lngPort As Long, ByVal strIP As String, ByVal intTrCode As Long, ByRef tktable21 As TKTABLE, ByVal lngDebug As Long, ByVal lngFilterToken As Long, Optional ByVal intSaveFlag As Integer) As Long
'Public Declare Function PROCESSFUNCTIONPROCESSMBP Lib "D:\dll\sysreadern.dll" Alias "?ProcessMBP@@YAHPAD0HPAUTKTABLE@@JF@Z" (ByRef streamBuffer As Byte, ByRef unCompbuffer As Byte, ByRef filterTrCode As Byte, ByRef TKTABLE123 As TKTABLE, ByVal filterTkn As Long, ByVal saveFlg As Integer) As Long
'Public Declare Function PROCESSFUNCTIONPROCESSMBP Lib "D:\mfccode\SysReadDll6\Debug\SysReadDll6.dll" Alias "ProcessMBP" (streamBuffer() As Byte, unCompbuffer() As Byte, ByVal filterTrCode As Long, ByRef TKTABLE123 As TKTABLE, ByVal filterTkn As Long, ByVal saveFlg As Integer) As Long
'Public Declare Function PROCESSFUNCTIONPROCESSMBP Lib "D:\mfccode\SysReadDll6\Debug\SysReadDll6.dll" Alias "ProcessMBP" (ByVal filterTrCode As Long, ByVal filterTkn As Long, ByVal saveFlg As Long) As Long
'Public Declare Function PROCESSFUNCTIONPROCESSMBP Lib "D:\dll\sysreadern.dll" Alias "?ProcessMBP@@YAHPAD0HPAUTKTABLE@@JF@Z" (streamBuffer As String, unCompbuffer As String, ByVal filterTrCode As Long, ByRef TKTABLE123 As TKTABLE, ByVal filterTkn As Long, ByVal saveFlg As Integer) As Long
'Public Declare Function PROCESSFUNCTIONPROCESSMBP Lib "D:\dll\sysreadern.dll" Alias "?ProcessMBP@@YAHPAD0HPAUTKTABLE@@JF@Z" (streamBuffer As String, unCompbuffer As String, ByVal filterTrCode As Long, ByRef TKTABLE123 As TKTABLE, ByVal filterTkn As Long, ByVal saveFlg As Integer) As Long
'Public Declare Function PROCESSFUNCTIONPROCESSMBP Lib "D:\DeltaSoftRM\Read SysRead\sysreadern.dll" Alias "?ProcessMBP@@YAHPAD0HPAUTKTABLE@@JF@Z" (ByRef streamBuffer As Long, ByRef unCompbuffer As Long, ByVal filterTrCode As Long, ByRef tktable2 As TKTABLE, ByVal filterTkn As Long, ByVal saveFlg As Integer) As Long
'Public Declare Function SetPrintDebug Lib "D:\mfccode\SysReadDll6\Debug\SysReadDll6.dll" Alias "setPrintDebug" (ByVal intDebug As Integer) ', ByVal filterTkn As Long, ByVal saveFlg As Long) As Long
