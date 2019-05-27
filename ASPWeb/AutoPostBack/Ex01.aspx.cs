using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.AutoPostBack
{
    public partial class Ex01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "/Images/download3.jpg";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "/Images/download2.jpg";
        }
    }
}