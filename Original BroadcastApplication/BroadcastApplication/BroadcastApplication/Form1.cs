using MTCommon;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

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
                if (sym == "NIFTY" && instrument == "FUTIDX")
                {
                    double ltp = Convert.ToDouble(_response.LastTradedPrice / 100);
                    double Bid = Convert.ToDouble(_response.Best5Buy[0].OrderPrice / 100);
                    double Ask = Convert.ToDouble(_response.Best5Sell[0].OrderPrice / 100);
                }
            }
        }
    }
}
