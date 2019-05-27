using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Post_Back
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.RequestType == "GET")
            {
                Label1.Text = "Hello, Welcome! <br>";
                Label1.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                Label1.Text = "Hii, Welcome back! <br>";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            Label1.Text += Request.RequestType + "<br>";
            Label1.Text += "Server Time " + DateTime.Now.ToLongTimeString();
        }
    }
}