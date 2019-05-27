using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.State_Management.QueryStringDemo
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name= Request.QueryString["Name"];
            Label1.Text = "Name is " + name;
        }
    }
}