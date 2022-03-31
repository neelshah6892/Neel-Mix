using MTCommon;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace BroadcastApplication
{
    public partial class Form1 : Form
    {
        public Form1()
        {

            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ArisApi_a._arisApi.InitializeAPI();
           
        }

        private void btnStart_Click(object sender, EventArgs e)
        {

            ArisApi_a._arisApi.OnMarketDepthUpdate += _arisApi_OnMarketDepthUpdate;

            ArisApi_a._arisApi._nseCmBroadcastConnection = new AppClasses.NseCmBroadcastConnection();
            ArisApi_a._arisApi._nseFoBroadcastConnection = new AppClasses.NseFoBroadcastConnection();
        }

        private void _arisApi_OnMarketDepthUpdate(MTApi.MTBCastPackets.MarketPicture _response)
        {
            if (InvokeRequired)
                BeginInvoke((MethodInvoker)(() => _arisApi_OnMarketDepthUpdate(_response)));
            else
            {
                string str = _response.TokenNo.ToString();
                string strstring = DBConst.TokenNo + " = '" + str + "'";

                
                DataRow[] dr11 = ArisApi_a._arisApi.DsContract.Tables["NseFo"].Select(strstring);
                string sym = "";
                string instrument = "";
                foreach (DataRow dr in dr11)
                {
                     sym = dr["Symbol"].ToString();
                     instrument = dr["InstrumentName"].ToString();
                }

                    double closePrice = Convert.ToDouble(_response.ClosePrice / 100);
                    double highPrice = Convert.ToDouble(_response.HighPrice / 100);
                    double lastTradedPrice = Convert.ToDouble(_response.LastTradedPrice / 100);
                    double lastTradedQty = Convert.ToDouble(_response.LastTradedQty);
                    int lastTradeTime = Convert.ToInt32(_response.LastTradeTime);
                    double lowPrice = Convert.ToDouble(_response.LowPrice / 100);
                    double op = Convert.ToDouble(_response.OpenPrice / 100);
                    double priceDivisor = Convert.ToDouble(_response.PriceDivisor);
                    double tokenNo = Convert.ToDouble(_response.TokenNo);
                    double totalBuyQuantity = Convert.ToDouble(_response.TotalBuyQty);
                    double totalSellQuantity = Convert.ToDouble(_response.TotalSellQty);
                    double totalQuantityTraded = Convert.ToDouble(_response.TotalQtyTraded);
                    double totalTrades = Convert.ToDouble(_response.TotalTrades);
                    double yearlyHigh = Convert.ToDouble(_response.YearlyHigh);
                    double yearlyLow = Convert.ToDouble(_response.YearlyLow);
                    //double iv = Convert.ToDouble(_response.NetChangeIndicator);
                    double bid = Convert.ToDouble(_response.Best5Buy[0].OrderPrice / 100);
                    double ask = Convert.ToDouble(_response.Best5Sell[0].OrderPrice / 100);

                    

                    using (StreamWriter writer = new StreamWriter("D://Test.txt", append: true)){
                        writer.WriteLine(sym + " "+instrument+" " + yearlyHigh + " " + yearlyLow + " " + closePrice + " " + highPrice + " " + lastTradedQty + " " + /*unixTimeToHumanReadable*/(lastTradeTime) + " " + lowPrice + " " + op + " " + priceDivisor + " " + tokenNo + " " + totalBuyQuantity + " " + totalSellQuantity + " " + totalQuantityTraded + " " + totalTrades);
                    }

                    using (StreamWriter writer = new StreamWriter("D://Check.txt", append: true))
                    {
                        writer.WriteLine(sym + " " + instrument + " " + yearlyHigh + " " + yearlyLow + " " + closePrice + " " + highPrice + " " + lastTradedQty + " " + unixTimeToHumanReadable(lastTradeTime) + " " + lowPrice + " " + op + " " + priceDivisor + " " + tokenNo + " " + totalBuyQuantity + " " + totalSellQuantity + " " + totalQuantityTraded + " " + totalTrades);
                    }
            }
        }

        static String unixTimeToHumanReadable(int seconds)
        {

            // Save the time in Human
            // readable format
            String ans = "";

            // Number of days in month
            // in normal year
            int[] daysOfMonth = { 31, 28, 31, 30, 31, 30,
                          31, 31, 30, 31, 30, 31 };

            int currYear, daysTillNow, extraTime,
                extraDays, index, date, month, hours,
                minutes, secondss, flag = 0;

            // Calculate total days unix time T
            daysTillNow = seconds / (24 * 60 * 60);
            extraTime = seconds % (24 * 60 * 60);
            currYear = 1970;

            // Calculating current year
            while (daysTillNow >= 365)
            {
                if (currYear % 400 == 0 ||
                   (currYear % 4 == 0 &&
                    currYear % 100 != 0))
                {
                    daysTillNow -= 366;
                }
                else
                {
                    daysTillNow -= 365;
                }
                currYear += 1;
            }

            // Updating extradays because it
            // will give days till previous day
            // and we have include current day
            extraDays = daysTillNow + 1;

            if (currYear % 400 == 0 ||
               (currYear % 4 == 0 &&
                currYear % 100 != 0))
                flag = 1;

            // Calculating MONTH and DATE
            month = 0; index = 0;
            if (flag == 1)
            {
                while (true)
                {
                    if (index == 1)
                    {
                        if (extraDays - 29 < 0)
                            break;

                        month += 1;
                        extraDays -= 29;
                    }
                    else
                    {
                        if (extraDays -
                            daysOfMonth[index] < 0)
                        {
                            break;
                        }
                        month += 1;
                        extraDays -= daysOfMonth[index];
                    }
                    index += 1;
                }
            }
            else
            {
                while (true)
                {
                    if (extraDays - daysOfMonth[index] < 0)
                    {
                        break;
                    }
                    month += 1;
                    extraDays -= daysOfMonth[index];
                    index += 1;
                }
            }

            // Current Month
            if (extraDays > 0)
            {
                month += 1;
                date = extraDays;
            }
            else
            {
                if (month == 2 && flag == 1)
                    date = 29;
                else
                {
                    date = daysOfMonth[month - 1];
                }
            }

            // Calculating HH:MM:YYYY
            hours = extraTime / 3600;
            minutes = (extraTime % 3600) / 60;
            secondss = (extraTime % 3600) % 60;

            ans += String.Join("", date);
            ans += "/";
            ans += String.Join("", month);
            ans += "/";
            ans += String.Join("", currYear);
            ans += " ";
            ans += String.Join("", hours);
            ans += ":";
            ans += String.Join("", minutes);
            ans += ":";
            ans += String.Join("", secondss);

            // Return the time
            return ans;
        }
    }
}
