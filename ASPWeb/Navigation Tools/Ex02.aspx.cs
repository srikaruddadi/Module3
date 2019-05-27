using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Navigation_Tools
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == TextBox2.Text)
                Response.Redirect("Ex03.aspx");
            else
            {
                Label1.Text = "Entered details are wrong";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}