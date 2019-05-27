using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.State_Management.CookieDemo
{
    public partial class Ex01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            Session["email"] = TextBox2.Text;
            HttpCookie cookie = new HttpCookie("cookie");
            cookie["name"] = TextBox1.Text;
            cookie["email"] = TextBox2.Text;
            cookie.Expires = DateTime.Now.AddDays(5);
            Response.Cookies.Add(cookie);
            Response.Redirect("Ex02.aspx");
           
        }
    }
}