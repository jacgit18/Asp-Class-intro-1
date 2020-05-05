using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication4
{
    /// <summary>
    ///  Summary description for DBClass
    /// </summary>
    public class DBClass
    {
        SqlConnection myconn = new SqlConnection();
        public DBClass()
        {
            myconn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\pvfc\\PVFC.mdf;Integrated Security=True;Connect Timeout=30";
            myconn.Open();
        }
        public DataTable getCustomers()
        {
            DataTable returndt = new DataTable();


            //  Make a SQLCommand object

            SqlCommand mycommand = new SqlCommand();

            mycommand.CommandText = " Select * from Customer_T";

            mycommand.Connection = myconn;

            SqlDataAdapter myadapter = new SqlDataAdapter();
            myadapter.SelectCommand = mycommand;

            //   Fill an internal table

            myadapter.Fill(returndt);


            return returndt;
        }
    }
}