using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASPWeb.ADOExamples
{
    public partial class Ex01 : System.Web.UI.Page
    {
        string cs = string.Empty;
        SqlConnection cn ;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            cs="server=localhost;database=Capgemini;trusted_connection=yes";
            cn = new SqlConnection(cs);
            try
            {
                cn.Open();
                Label1.Text = "Connection established Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            catch(SqlException ex)
            {
                Label1.Text = "Syntax Error" + ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select * from employee";
            cmd = new SqlCommand(query, cn);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "select * from Department";
            cmd = new SqlCommand(query, cn);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
        }
    }
}