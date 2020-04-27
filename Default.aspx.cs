using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication7
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["check_login"]!=null)
            {
                Response.Redirect("BuyNow.aspx");
            }
            
            if (Session["customerId"] != null)
            {
                hpMyProfile.Visible = true;
                LinkButton1.Visible = true;
                hpLogin.Visible = false;
                lbName.Visible = true;
                lbName.Text = getName();
                lbNameOfFirm.Visible = false;
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

        protected void imgProduct2_Click(object sender, ImageClickEventArgs e)
        {
            Session["imgId"] = "imgProduct2";
            Response.Redirect("Product.aspx");
            
        }

        protected void imgProduct1_Click(object sender, ImageClickEventArgs e)
        {
            Session["imgId"] = "imgProduct1";
            Response.Redirect("Product.aspx");
            
        }

        protected void imgProduct3_Click(object sender, ImageClickEventArgs e)
        {
            Session["imgId"] = "imgProduct3";
            Response.Redirect("Product.aspx");
          
        }

        protected void imgProduct4_Click(object sender, ImageClickEventArgs e)
        {
            Session["imgId"] = "imgProduct4";
            Response.Redirect("Product.aspx");
            
        }

        
    }
}
