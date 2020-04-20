using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
   
        int Numfailures;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == TextBox2.Text)
            {
                txtMessage.Text = "Success";
            }
            else
            {
                txtMessage.Text = "Failure";
                Numfailures =int.Parse( txtNumfail.Value);
                Numfailures++;
                txtNumfail.Value = Numfailures.ToString();
                if (Numfailures > 3)
                {
                    txtMessage.Text = "Blocked";
                }
                        
            }
        }
    }
}