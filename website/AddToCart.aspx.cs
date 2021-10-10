using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace website
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Buyitems"] == null)
                {
                    Button1.Enabled = false;

                }
                else
                {
                    Button1.Enabled = true;
                }
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");



                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        string connectionstring = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Acer\Desktop\website\website\App_Data\users.mdf;Integrated Security=True");
                        SqlConnection conn = new SqlConnection(connectionstring);
                        SqlDataAdapter adapter = new SqlDataAdapter("Select * from Grocerries where ProductId = " + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);
                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductPrice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"]);
                        int totalprice = price * Quantity;
                        dr["ptotalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["Buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        string connectionstring = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Acer\Desktop\website\website\App_Data\users.mdf;Integrated Security=True");
                        SqlConnection conns = new SqlConnection(connectionstring);
                        SqlDataAdapter adapter = new SqlDataAdapter("Select * from Grocerries where ProductId = " + Request.QueryString["id"], conns);
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductPrice"].ToString());
                        int Quantity = Convert.ToInt32(Request.QueryString["quantity"]);
                        int Totalprice = price * Quantity;
                        dr["ptotalprice"] = Totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                        Button1.Enabled = true;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");



                    }

                }
                else
                {
                    dt = (DataTable)Session["Buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();


                    }
                }


            }
            String orderdate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = orderdate;
            orderid();




        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString());
                i = i + 1;


            }
            return totalprice;
        }
        public void orderid()
        {
            String alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
            Random r = new Random();
            char[] myarray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myarray[i] = alpha[(int)(35 * r.NextDouble())];

            }
            string orderid;
            orderid = "Order_id ; " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myarray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString(); ;
            Session["orderid"] = orderid;
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["Buyitems"];
            string connectionstring = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Acer\Desktop\website\website\App_Data\users.mdf;Integrated Security=True");
            SqlConnection conection = new SqlConnection(connectionstring);
            conection.Open();
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                SqlCommand cmd = new SqlCommand("Insert into OrderDetails(orderid,sno,productid,productname,price,quantity,orderdate) values (@orderid,@sno,@productid,@productname,@price,@quantity,@orderdate)", conection);
                cmd.Parameters.AddWithValue("@orderid", Session["Orderid"]);
                cmd.Parameters.AddWithValue("@sno", dt.Rows[i]["sno"]);
                cmd.Parameters.AddWithValue("@productid", dt.Rows[i]["pid"]);
                cmd.Parameters.AddWithValue("@productname", dt.Rows[i]["pname"]);
                cmd.Parameters.AddWithValue("@price", dt.Rows[i]["pprice"]);
                cmd.Parameters.AddWithValue("@quantity", dt.Rows[i]["pquantity"]);
                cmd.Parameters.AddWithValue("@orderdate", Session["orderdate"]);
                cmd.ExecuteNonQuery();



                /*
                SqlCommand cmd = new SqlCommand("Insert into OrderDetails(orderid,sno,productid,productname,price,quantity,orderdate) values('" + Session["Orderid"] +
                    "," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"] + "," + dt.Rows[i]["pquantity"] + "," + Session["orderdate"] + conection);
                command.Parameters.AddWithValue("@Fname", tbfname.Text);
                cmd.ExecuteNonQuery();*/







                if (Session["username"] == null)
                {
                    Response.Redirect("Log in .aspx");
                }
                else
                {
                    if (GridView1.Rows.Count.ToString() == "0")
                    {
                        Response.Write("<script>alert('Your Cart is Empty. you cannot place an order');</script.");

                    }
                    else
                    {
                        Response.Redirect("Payment.aspx");

                    }
                }
            }
        }
    }
}




/**/