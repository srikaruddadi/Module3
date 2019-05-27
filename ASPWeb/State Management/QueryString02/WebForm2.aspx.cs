using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.State_Management.QueryString02
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = Request.QueryString["Name"];
            string Email = Request.QueryString["Email"];
            string Contact = Request.QueryString["Contact"];
            Response.Redirect("WebForm3.aspx?UG=" + TextBox1.Text + "&Inter=" + TextBox2.Text + "&Tenth=" + TextBox3.Text+"&Name="+Name+"&Email="+Email+"&Contact="+Contact);
        }
    }
}