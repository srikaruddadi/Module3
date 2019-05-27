using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
namespace ASPWeb.AJAXApplications
{
    public partial class Ex03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            string[] items = { "Cake", "Ice-cream", "Chocolate", "Cheese", "Butter", "Smoothie" };
            int[] price = { 50, 30, 40, 100, 60, 150 };
            Random r = new Random();
            int index = r.Next(0, items.Length - 1);
            


                Label1.Text = items[index];
                Image1.ImageUrl = "/Images/" + Label1.Text + ".jpg";
                Label2.Text = price[index].ToString();
                
            
        }
    }
}