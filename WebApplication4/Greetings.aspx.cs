using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



namespace WebApplication4
{
    public partial class Greetings : System.Web.UI.Page
    {
        DataTable mydt;

        protected void Page_Load(object sender, EventArgs e)
        {

            // pull username from query string
            String inname;
            inname = Session["username"].ToString();
           // inname = Request.QueryString["username"].ToString();
            Label1.Text = inname;
            if(Page.IsPostBack)
            {
                mydt = (DataTable) Session["Customers"];
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBClass mydb;
            mydb = new DBClass();
            mydt = mydb.getCustomers();
            GridView1.DataSource = mydt;
            GridView1.DataBind();
            Session["Customers"] = mydt;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.DataSource = mydt;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();

        }

    
    }
}