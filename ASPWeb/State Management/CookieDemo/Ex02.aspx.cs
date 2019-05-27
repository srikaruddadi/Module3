using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.State_Management.CookieDemo
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["name"] != null && Session["email"]!=null)
            {
                
                Label1.Text = "Name is : " + Session["name"] + " and email is " + Session["email"];
                Label1.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                Label1.Text = "Landed on this page by technique";
                Label1.ForeColor = System.Drawing.Color.Red;
                
            }
            if(Request.Cookies["cookie"]!=null)
            {
                HttpCookie cookie = Request.Cookies["cookie"];
                Label2.Text = "Name is : " + cookie["name"] + " and email is " + cookie["email"];
                Label2.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label2.Text = "Landed on this page by technique";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}