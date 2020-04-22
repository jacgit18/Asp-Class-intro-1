using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Greetings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // pull username from query string
            String inname;
            inname = Session["username"].ToString();
           // inname = Request.QueryString["username"].ToString();
            Label1.Text = inname;



        }
    }
}