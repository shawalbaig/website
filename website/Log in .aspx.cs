using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace website
{
    public partial class Log_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring =( @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Acer\Desktop\website\website\App_Data\users.mdf; Integrated Security = True");
            SqlConnection conn = new SqlConnection(connectionstring);
            SqlDataAdapter adapt = new SqlDataAdapter("Select * from Register Where Email = '" + tbEmailId.Text + "'AND Password = '" + tbPassword.Text + "' ",conn);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            if (tbEmailId.Text == "Admin" && tbPassword.Text == "123")
            {
                LblMessage.Visible = true;
                LblMessage.Text = "Amin Login Successfull";
                LblMessage.ForeColor = System.Drawing.Color.DarkGreen;
                LinkButton1.Visible = false;
                HyperLink2.Visible = true;
               

            }
            else if ( dt.Rows.Count == 1)
            {
                Session["Username"] = tbEmailId.Text;
                Response.Redirect("Default.aspx");
                LinkButton1.Visible = true;
                HyperLink2.Visible = false;




            }
            else
            {
                LblMessage.Visible = true;
                LblMessage.ForeColor = System.Drawing.Color.Red;
                LblMessage.Text = "Login failed";
            }

        }
    }
}