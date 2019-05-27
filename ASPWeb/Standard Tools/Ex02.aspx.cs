using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Standard_Tools
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Hello " + TextBox1.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int length=TextBox1.Text.Length;
            Label1.Text = length.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text=TextBox1.Text.ToUpper();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text.ToLower();
        }
    }
}