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
    public partial class registration : System.Web.UI.Page


    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {

            string connectionstring = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Acer\Desktop\website\website\App_Data\users.mdf;Integrated Security=True");
            SqlConnection conn = new SqlConnection(connectionstring);
            try
            {
                conn.Open();

                SqlCommand command = new SqlCommand("Insert Into register" + "(Fname,Lname,Email,Gender,Address,PhoneNumber,Password) values (@Fname,@Lname,@Email,@Gender,@Address,@PhoneNumber,@Password)", conn);
                command.Parameters.AddWithValue("@Fname", tbfname.Text);
                command.Parameters.AddWithValue("@Lname", tblname.Text);
                command.Parameters.AddWithValue("@Email", tbemail.Text);
                command.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                command.Parameters.AddWithValue("@Address", tbaddress.Text);
                command.Parameters.AddWithValue("@PhoneNumber", tbphone.Text);
                command.Parameters.AddWithValue("@Password", tbpasssword.Text);
                command.ExecuteNonQuery();
                conn.Close();
                lbregisterstatus.Text = "Registered Successfully ";
                Response.Redirect("Log in .aspx");


            }
            catch(Exception error)
            {
                lbregisterstatus.Text = error.Message;


            }
           





        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Log in .aspx");
        }
    }
}