using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }
        protected void Login(Object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            string pass = TextBox2.Text;
            if (uname != "admin" || pass != "admin")
            {
                Response.Write("<span style='color : red' >Incorrect ID/password</span>");
            }
            else
            {
                Response.Redirect("view.aspx");
            }
        }
    }
}