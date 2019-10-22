using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString;
            SqlConnection cnn;
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "";

            int points;
            string pts = RadioButtonList1.SelectedValue;
            points = int.Parse(pts);
            connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\mania\\source\\repos\\WebApplication4\\WebApplication4\\App_Data\\Database1.mdf; Integrated Security = True";
            cnn = new SqlConnection(connectionString);
            cnn.Open();

            sql = "Insert into feedback(point) values('" + points + "')";
            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);
            adapter.InsertCommand.ExecuteNonQuery();

            Response.Write("Thank you for your feedback! ");
            command.Dispose();
            cnn.Close();
        }
    }
}