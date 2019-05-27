using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.AutoPostBack
{
    public partial class Ex02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string clr = RadioButtonList1.Text;
            Label1.Text = RadioButtonList1.Text;
            Label1.ForeColor = System.Drawing.Color.FromName(clr);
        }
    }
}