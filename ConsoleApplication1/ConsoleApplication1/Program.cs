using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.Diagnostics;


namespace ConsoleApplication1
{
    class Program
    {
        [DllImport("sysreadern.dll", CallingConvention = CallingConvention.Cdecl)]


        //public static extern int ProcessMBR(char* streamBuffer, char* unCompbuffer, int filterTrCode, ref TKTABLE tktable, long filterTkn, short saveFlg);
        public static extern int ProcessMBR(ref char streamBuffer, ref char unCompbuffer, int filterTrCode, ref TKTABLE tktable, long filterTkn, short saveFlg);
        static void Main(string[] args)
        {
            //public static extern 
            //
            
            //int z = ProcessMBR();
            Console.WriteLine("hello world");
            Console.ReadLine();
        }
    }
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    public struct TKROW
    {
        public short trCode;
	    public long Token;
	    short BookType;
	    short TradingStatus;
	    long VolumeTradedToday;
	    long LastTradedPrice;
	    char NetChangeIndicator;
	    long NetPriceChangeFromClosingPrice;
	    long LastTradeQuantity;
	    long LastTradeTime;
	    long AverageTradePrice;
	    short AuctionNumber;
	    short AuctionStatus;
	    short InitiatorType;
	    long InitiatorPrice;
	    long InitiatorQuantity;
	    long AuctionPrice;
	    long AuctionQuantity;
	    IntPtr MBPinfo; // = new MBPInformation[10];
	    short BbTotalBuyFlag;
	    short BbTotalSellFlag;
	    double TotalBuyQuantity;
	    double TotalSellQuantity;
	    long ClosingPrice;
	    long OpenPrice;
	    long HighPrice;
	    long LowPrice;
    }
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    public struct TKTABLE
    {
        short noOfRecords;
        IntPtr onlyMPBData;
        //TKROW[] onlyMPBData = new TKROW[30];
    }
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    public struct MBPInformation
    {
	    long Quantity;
	    long Price;
	    short NumberOfOrders;// this is now chnaged to short from long, i thnk this was issue 
	    short BbBuySellFlag;
    }
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    public struct MBPInfo
    {
        IntPtr Quantity;
        IntPtr Price;
	    //long[] Quantity = new long[10];
	    //long[] Price = new long[10];
    }
}