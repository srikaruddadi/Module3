using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.Option_Tools
{
    public partial class Ex02 : System.Web.UI.Page
    {
        int count = 0;
        string result;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
                count++;
            if (RadioButton6.Checked)
                count++;
            if (RadioButton12.Checked)
                count++;
            if (RadioButton16.Checked)
                count++;
            if (RadioButton20.Checked)
                count++;

            if (count >= 3)
                result = "Pass";
            else
                result = "Fail";

            Label1.Text = "Score is: " + count +"<br>Result is: " + result;
        }
    }
}