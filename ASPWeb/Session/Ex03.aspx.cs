using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Session
{
    public partial class Ex03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == TextBox2.Text)
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("Ex04.aspx");
                
            }
            else
            {
                Label1.Text = "Invalid input credentials";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}