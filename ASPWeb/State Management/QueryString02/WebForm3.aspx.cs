using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.State_Management.QueryString02
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["Name"];
            Label2.Text = Request.QueryString["Email"];
            Label3.Text = Request.QueryString["Contact"];
            Label4.Text = Request.QueryString["UG"];
            Label5.Text = Request.QueryString["Inter"];
            Label6.Text = Request.QueryString["Tenth"];
            Label7.Text = TextBox1.Text;
        }
    }
}