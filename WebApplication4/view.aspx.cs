using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString;
            SqlConnection con;
            SqlCommand cmd;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "";
            
            connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\mania\\source\\repos\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf; Integrated Security = True";
            con = new SqlConnection(connectionString);
            con.Open();
            
            string query = "select cust_name,cust_number,technology from inquiry";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;

            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

            con.Close();






            string connectionString1;
            SqlConnection con1;
            SqlCommand cmd1;
            SqlDataAdapter adapter1 = new SqlDataAdapter();
            String sql1 = "";
            connectionString1 = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\mania\\source\\repos\\WebApplication4\\WebApplication4\\App_Data\\Database1.mdf; Integrated Security = True";
            con1 = new SqlConnection(connectionString1);
            con1.Open();

            string query1 = "select point from feedback";
            cmd1 = new SqlCommand(query1, con1);
            cmd1.CommandType = CommandType.Text;

            using (SqlDataReader dr1 = cmd1.ExecuteReader())
            {
                GridView2.DataSource = dr1;
                GridView2.DataBind();
            }

            con.Close();

        }
    }
}