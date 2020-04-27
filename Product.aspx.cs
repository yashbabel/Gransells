using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;



namespace WebApplication7
{
    public partial class Product : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        double sw;
        double sl;
        int inp;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["customerId"] != null)
            {
                hpMyProfile.Visible = true;
                LinkButton1.Visible = true;
                hpLogin.Visible = false;
                lbName.Visible = true;
                lbName.Text = getName();
            }
            

            string productId = Session["imgId"].ToString();
            if (productId == "imgProduct1")
            {
                productId = "1";
            }
            else if (productId == "imgProduct2")
            {
                productId = "2";
            }
            else if (productId == "imgProduct3")
            {
                productId = "3";
            }
            else
            {
                productId = "4";
            }
           
           
            
            string query = "select * from product where productId=" + productId;
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        
                        sda.Fill(dt);

                    }
                }

            }
            if (!Page.IsPostBack)
            {
                Label2.Text = dt.Rows[0]["title"].ToString();
                Label3.Text = dt.Rows[0]["description"].ToString();
                Image1.ImageUrl = dt.Rows[0]["image"].ToString();
             
            }

        }
        protected string getName()
        {
            DataTable dt1 = new DataTable();
            string query = "select  name from login where userId=" + Session["customerId"];
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd1 = new MySqlCommand(query, conn))
                {
                    using (MySqlDataAdapter sda1 = new MySqlDataAdapter(cmd1))
                    {

                        sda1.Fill(dt1);

                    }
                }

            }
            return dt1.Rows[0]["name"] as string;

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
        protected void ddComapanyFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")//All
            {
                lbPpsf.Visible = false;
                lbSelect.Visible = false;
                lbPrice.Visible = false;
                tilesPrice.Visible = false;
                TextBox1.Visible = false;
                TotalPrice.Visible = false;
                slabPriceHeight.Visible = false;
                SlabPriceWidth.Visible = false;
                lbrs.Visible = false;
                lbPeicesReq.Visible = false;
       

            }
            else if (DropDownList1.SelectedValue == "1")//Flagged
            {
                lbPpsf.Visible = true;
                lbrs.Visible = false;
                lbPeicesReq.Visible = false;
                lbSelect.Visible = false;
                lbPrice.Visible = false;
                slabPriceHeight.SelectedIndex = 0;
                SlabPriceWidth.SelectedIndex = 0;

                TextBox1.Visible = false;
                TotalPrice.Visible = false;
                
                tilesPrice.Text = dt.Rows[0]["slabPrice"].ToString();
                tilesPrice.Visible = true;
                slabPriceHeight.Visible = true;
                SlabPriceWidth.Visible = true;
                lbSelect.Visible = true;

              
                

            }

                
            else if (DropDownList1.SelectedValue == "2")//New
            {

                //code
                lbPpsf.Visible = true;
                lbrs.Visible = false;
                lbSelect.Visible = false;
                lbPrice.Visible = false;
                TextBox1.Text = "";
                slabPriceHeight.Visible = false;
                SlabPriceWidth.Visible = false;
                TotalPrice.Visible = false;
                tilesPrice.Visible = true;
                tilesPrice.Text = dt.Rows[0]["tilePrice"].ToString();
                lbPeicesReq.Visible = true;
                TextBox1.Visible = true;
               
                
            }
        }
        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            try
            {
                inp = int.Parse(TextBox1.Text);
                int per = Convert.ToInt32(dt.Rows[0]["tilePrice"]);
                int cal = inp * per;
                TotalPrice.Text = cal.ToString();
                TotalPrice.Visible = true;
                lbPrice.Visible = true;
                lbrs.Visible = true;
                RegularExpressionValidator1.Visible = false;
            }
            catch
            {
                RegularExpressionValidator1.Visible = true;
            }

            
        }

        protected void slabPriceHeight_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (slabPriceHeight.SelectedValue != "0" && SlabPriceWidth.SelectedValue != "0")
            {

                double sl = 0;
                double sw = 0;
                sl = Convert.ToDouble(slabPriceHeight.SelectedValue);
                sw = Convert.ToDouble(SlabPriceWidth.SelectedValue);
                TotalPrice.Visible = true;
                lbPrice.Visible = true;
                lbrs.Visible = true;
                TotalPrice.Text = (sl * sw * Convert.ToInt32(dt.Rows[0]["slabPrice"])).ToString();
            }
            else
            {
                lbPrice.Visible = false;
                lbrs.Visible = false;
                TotalPrice.Visible=false;
            }
            
            
            
        }

        public void SlabPriceWidth_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (slabPriceHeight.SelectedValue != "0" && SlabPriceWidth.SelectedValue != "0")
            { 
                double sw = 0;
                double sl = 0;
                
                sw = Convert.ToDouble(SlabPriceWidth.SelectedValue);
                sl = Convert.ToDouble(slabPriceHeight.SelectedValue);
                TotalPrice.Visible = true;
                lbrs.Visible = true;
                lbPrice.Visible = true;
                TotalPrice.Text = (sl*sw * Convert.ToInt32(dt.Rows[0]["slabPrice"])).ToString();
            }
            else
            {
                lbPrice.Visible = false;
                lbrs.Visible = false;
                TotalPrice.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                string productId = Session["imgId"].ToString();
                if (productId == "imgProduct1")
                {
                    productId = "1";
                }
                else if (productId == "imgProduct2")
                {
                    productId = "2";
                }
                else if (productId == "imgProduct3")
                {
                    productId = "3";
                }
                else
                {
                    productId = "4";
                }
                if (DropDownList1.SelectedValue == "1")
                {
                    Session["slbH"] = slabPriceHeight.SelectedItem.ToString();
                    Session["slbW"] = SlabPriceWidth.SelectedItem.ToString();
                    Session["check_slab_tile"] = "SLAB";


                }
                else if (DropDownList1.SelectedValue == "2")
                {
                    Session["tile_size"] = TextBox1.Text;
                    Session["check_slab_tile"] = "TILE";


                }
                Session["pid_BuyNow"] = productId;
                Session["price"] = TotalPrice.Text;
                if (Session["customerId"] == null)
                {
                    Session["check_login"] = "1";
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Redirect("BuyNow.aspx");
                }

            
            
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

      



    
       
    }


}
    
    
