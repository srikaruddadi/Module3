using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Session
{
    public partial class Ex041 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"]!=null)
            {
                Label1.Text = "Hello " + Session["name"].ToString() + " , Welcome to dashboard";
            }
            else
            {
                Label1.Text = "Landed on this page using technique";
            }
        }
    }
}