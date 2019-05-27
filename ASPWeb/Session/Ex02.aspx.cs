using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Session
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
            string email = Session["email"].ToString();

            Label1.Text = "Hello " + name;
            Label2.Text = "Your email id is : " + email;
        }
    }
}