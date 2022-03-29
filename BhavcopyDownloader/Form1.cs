using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BhavcopyDownloader
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private string _startdate;
        private string _enddate;

        private void button1_Click(object sender, EventArgs e)
        {
            _startdate = dateTimePicker1.Value.ToShortDateString();
            _enddate = dateTimePicker2.Value.ToShortDateString();
            int day = dateTimePicker1.Value.Day;
            int month = dateTimePicker1.Value.Month;
            int year = dateTimePicker1.Value.Year;
            //textBox1.AppendText("Date: " + _startdate);
            string link = "https://www1.nseindia.com/content/historical/EQUITIES/"+year+"/JUN/cm" + day + "JUN"+year+"bhav.csv.zip";
            textBox1.AppendText(link);
            textBox1.AppendText(Environment.NewLine);
        }
    }
}
