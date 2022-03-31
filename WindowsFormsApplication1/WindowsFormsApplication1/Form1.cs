using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using sysreadern;


[DllImport("sysreadern.dll", CallingConvention = CallingConvention.Cdecl)]  


namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        sysreadern obj = new sysreadern();

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
