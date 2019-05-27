using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
namespace ASPWeb.Option_Tools
{
    public partial class Ex01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                Label1.Text = "Hello Mr." + TextBox1.Text;
                Label1.ForeColor = Color.Blue;
            }
            else if(RadioButton2.Checked)
            {
                Label1.Text = "Hello Miss." + TextBox1.Text;
                Label1.ForeColor = Color.Pink;
            }
        }
    }
}