using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Standard_Tools
{
    public partial class StandardWebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Hello from Server";
            Label1.ForeColor = System.Drawing.Color.Blue;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "Server Date : " + DateTime.Now.ToLongDateString();
            Label1.ForeColor = System.Drawing.Color.Red;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "Server Date : " + DateTime.Now.ToLongTimeString();
            Label1.ForeColor = System.Drawing.Color.Yellow;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int hour = DateTime.Now.Hour;
            if (hour < 12)
                Label1.Text = "Good Morning";
            else if (hour > 12 && hour < 16)
                Label1.Text = "Good Afternoon";
            else if (hour > 16 && hour < 21)
                Label1.Text = "Good Evening";
            else
                Label1.Text = "Good Night";
        }
    }
}