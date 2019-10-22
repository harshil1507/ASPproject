using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_inquiry(object sender, EventArgs e)
        {
            string connectionString;
            SqlConnection cnn;
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "";
            string name, number, technology;

            name = TextBox1.Text;
            number = TextBox2.Text;
            technology = DropDownList1.SelectedValue;

            connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\mania\\source\\repos\\WebApplication4\\WebApplication4\\App_Data\\Database1.mdf; Integrated Security = True";
            cnn = new SqlConnection(connectionString);
            cnn.Open();

            sql = "Insert into inquiry (cust_name,cust_number,technology) values('"+name+"','"+number+"','"+technology+"')";
            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);
            adapter.InsertCommand.ExecuteNonQuery();

            Response.Write("Thank you for contacting. I will revert back ASAP");
            command.Dispose();
            cnn.Close();


        }
    }
}