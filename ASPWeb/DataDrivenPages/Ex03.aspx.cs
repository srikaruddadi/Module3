using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWeb.DataDrivenPages
{
    public partial class Ex03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "Selected hobbies are: ";
            for(int i=0;i<CheckBoxList1.Items.Count;i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                    Label1.Text += CheckBoxList1.Items[i].Text + ",";
            }
        }
    }
}