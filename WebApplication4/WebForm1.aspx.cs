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
                // TextBox3.Text = "Success";
                String Uname;
                Uname = TextBox1.Text;
                // creating session object
                Session["username"] = Uname;
                Response.Redirect("Greetings.aspx?username= ");
            }
            else
            {
                TextBox3.Text = "Failure";
                //Numfailures =int.Parse( txtNumfail.Value);
                Numfailures = int.Parse(Session["failures"].ToString());
                Numfailures++;
                Session["failures"] = Numfailures.ToString();
                if (Numfailures > 3)
                {
                    TextBox3.Text = "Blocked";
                }
                        
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["failures"] = 0;
            }
        }
    }
}