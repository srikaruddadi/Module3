using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.DataDrivenPages
{
    public partial class Ex05 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GD1.DataSource = SqlDataSource1;
            GD1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GD1.DataSource = SqlDataSource2;
            GD1.DataBind();
        }
    }
}