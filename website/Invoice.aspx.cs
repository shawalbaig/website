﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;
using iTextSharp.text;


namespace website
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Orderid = Session["Orderid"].ToString();
            Label1.Text = Orderid;
            findorderdate(Label2.Text);
           // string Address = Session["address"].ToString();
            //Label3.Text = Address; ;
            showgrid(Label1.Text);


        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            

        }
       /* private void exportpdf()
        {
            Response.ContentType = "applicayion/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparser.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();

            




        }*/
       private void findorderdate(String Orderid)
        {
            String constring = (@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Acer\Desktop\website\website\App_Data\users.mdf; Integrated Security = True");
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new  SqlCommand("Select * from OrderDetails where orderid='" + Label1.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter adapt = new SqlDataAdapter();
            adapt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapt.Fill(ds);
            if (ds.Tables[0].Rows.Count>0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["Orderdate"].ToString();
            }
            con.Close();
        }
        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            String constring = (@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Acer\Desktop\website\website\App_Data\users.mdf; Integrated Security = True");
            SqlConnection scon = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("Select * from OrderDetails where orderid='" + Label1.Text + "'");
            cmd.Connection = scon;
            SqlDataAdapter adapt = new SqlDataAdapter();
            adapt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapt.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while(i<totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
                dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = quantity * price;
                dr["totalprice"] = totalprice;
                grandtotal+= totalprice;
                dt.Rows.Add(dr);
                i++;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = grandtotal.ToString();



        }
    }
}