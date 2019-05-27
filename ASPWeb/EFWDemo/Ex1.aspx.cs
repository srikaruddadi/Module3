using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.EFWDemo
{
    public partial class Ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Data.CapgeminiEntities db = new Data.CapgeminiEntities();

            GridView1.DataSource = db.Employees.ToList();
            GridView1.DataBind();
        }
    }
}