using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace ASPWeb.ADOExamples
{
    public partial class Ex03 : System.Web.UI.Page
    {
        SqlConnection cn = null;
        SqlCommand cmd = null;

        string cs = string.Empty;
        string query = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            cs = ConfigurationManager.ConnectionStrings["cs1"].ToString();
            cn = new SqlConnection(cs);
            cn.Open();
            Label1.Text = "Connection establishsed successfully";
            Label1.ForeColor = System.Drawing.Color.Green;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            query = "select * from employee";
            cmd = new SqlCommand(query, cn);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();

            cmd.Dispose();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Fetch row
            query = "select * from employee where code=" + TextBox1.Text;
            cmd = new SqlCommand(query, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
            }
            else
                Label2.Text = TextBox1.Text + ", not exist";

            cmd.Dispose();
            dr.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //Clear All fields
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            Label2.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            query = "insert into Employee values ( @code, @name, @salary, @deptid)";
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@code", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@salary", TextBox3.Text);
            cmd.Parameters.AddWithValue("@deptid", TextBox4.Text);

            int count = cmd.ExecuteNonQuery();
            Label2.Text = count + ", rows added successfully";
            cmd.Dispose();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            query = "update Employee set name = @name,salary=@salary,deptid=@deptid where code=@code";
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@code", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@salary", TextBox3.Text);
            cmd.Parameters.AddWithValue("@deptid", TextBox4.Text);

            int count = cmd.ExecuteNonQuery();
            Label2.Text = count + ", rows edited successfully";
            cmd.Dispose();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            query = "delete from Employee where code=@code";
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@code", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@salary", TextBox3.Text);
            //cmd.Parameters.AddWithValue("@deptid", TextBox4.Text);

            int count = cmd.ExecuteNonQuery();
            Label2.Text = count + ", rows deleted successfully";
            cmd.Dispose();
        }
    }
}