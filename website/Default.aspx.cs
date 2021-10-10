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
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "False";
            if (Session["Username"] !=null)
            {
                Label4.Text = "Logged in as " + Session["Username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;


            }
            else
            {
                Label4.Text = " Hello:) Log in here...";
                HyperLink1.Visible = true;
                Button1.Visible = false;

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            Label4.Text = "You have logged out succesfully";

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";

            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("Quantity"));

                Response.Redirect("AddTocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString()); //list.SelectedItem.ToString()
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            string connectionstring = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Acer\Desktop\website\website\App_Data\users.mdf;Integrated Security=True");
            SqlConnection conection = new SqlConnection(connectionstring);
            SqlDataAdapter adap = new SqlDataAdapter("Select * from Grocerries where(ProductName like '%"+TextBox1.Text+"%')", conection);
            DataTable dt = new DataTable();
            adap.Fill(dt);

        }
    }
}