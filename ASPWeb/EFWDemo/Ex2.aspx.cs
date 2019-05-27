using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.EFWDemo
{
    public partial class Ex2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Data.CapgeminiEntities db = new Data.CapgeminiEntities();
        Data.Employee emps;
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            emps = new Data.Employee();
            emps.code = Convert.ToInt32(TextBox1.Text);
            emps.name = TextBox2.Text;
            emps.salary = Convert.ToInt32(TextBox3.Text);
            emps.deptid = Convert.ToInt32(TextBox4.Text);

            db.Employees.Add(emps);
            db.SaveChanges();

            Label1.Text = "Record added Successfully";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            Label1.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            emps = db.Employees.Single(x => x.code == id);
            TextBox2.Text = emps.name;
            TextBox3.Text = emps.salary.ToString();
            TextBox4.Text = emps.deptid.ToString();
            Label1.Text = "Data has been retrieved Successfully";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            emps = db.Employees.Single(x => x.code == id);
            emps.name = TextBox2.Text;
            emps.salary = Convert.ToInt32(TextBox3.Text);
            emps.deptid = Convert.ToInt32(TextBox4.Text);
            db.SaveChanges();
            Label1.Text = "Data has been updated Successfully";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            emps = db.Employees.Single(x => x.code == id);
            db.Employees.Remove(emps);
            db.SaveChanges();
            Label1.Text = "Data has been removed Successfully";
        }
    }
}