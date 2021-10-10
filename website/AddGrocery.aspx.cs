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
    public partial class AddGrocery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String constring = (@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Acer\Desktop\website\website\App_Data\users.mdf; Integrated Security = True");
            SqlConnection con = new SqlConnection(constring);
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/")+ filename );
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Grocerries  values ('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + filepath + "','" + TextBox4.Text + "')",con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Default.aspx");





            }
        }
    }
}