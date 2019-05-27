using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Simple_Calculations
{
    public partial class Ex01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = (Convert.ToInt32(TextBox1.Text) + Convert.ToInt32(TextBox2.Text)).ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = (Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox2.Text)).ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(TextBox1.Text) > Convert.ToInt32(TextBox2.Text))
                Label1.Text = TextBox1.Text;
            else
                Label1.Text = TextBox2.Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(TextBox1.Text) < Convert.ToInt32(TextBox2.Text))
                Label1.Text = TextBox1.Text;
            else
                Label1.Text = TextBox2.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Text = (Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(TextBox2.Text)).ToString();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label1.Text = (Convert.ToInt32(TextBox1.Text) / Convert.ToInt32(TextBox2.Text)).ToString();
        }
    }
}