using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net.Mail;

namespace WebApplication7
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        string image_url, size, address;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            Session["check_login"] = null;
            if (Session["customerId"] != null)
            {
                hpMyProfile.Visible = true;
                LinkButton1.Visible = true;
                hpLogin.Visible = false;
                lbName.Visible = true;
                lbName.Text = getName();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
            

            int productIdForImage = Convert.ToInt32(Session["pid_BuyNow"].ToString());
            string query = "select * from product where productId=" + productIdForImage;
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
            string query2 = "select * from login where userId=" +Convert.ToInt16(Session["customerId"]);
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd2 = new MySqlCommand(query2, conn))
                {
                    using (MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2))
                    {

                        sda2.Fill(dt2);

                    }
                }

            }
            image_url = dt1.Rows[0]["image"].ToString();
            imgOrderImage.ImageUrl = image_url;
            tbpProducTitle.Text = dt1.Rows[0]["title"].ToString();
            tbNameOfCustomer.Text = dt2.Rows[0]["name"].ToString().ToUpper();
            Session["email"] = dt2.Rows[0]["userName"].ToString();
            address = dt2.Rows[0]["address"].ToString() + ", " + dt2.Rows[0]["city"].ToString() + ", " + dt2.Rows[0]["country"].ToString();
            tbShipAddress.Text = address;
            tbPrice.Text = Session["price"].ToString();
            tbSlabOrTile.Text = Session["check_slab_tile"].ToString();
            if (Session["slbH"] != null && Session["slbW"]!= null)
            {
                size=Session["slbH"].ToString() + " X " + Session["slbW"].ToString();
                tbSize.Text = size;

            }
            else if (Session["tile_size"] != null)
            {
                size=Session["tile_size"].ToString();
                tbSize.Text = size;
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

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";

            string Query = "Insert into orders(userId,image,type,price,orderDate,size,ship_address,productId,track_id) values('" + Convert.ToInt16(Session["customerId"]) + "','" + image_url + "','" + Session["check_slab_tile"].ToString() + "','" + Session["price"].ToString() + "','" + System.DateTime.Now.ToShortDateString() + "','" + size + "','" + address + "','" + Convert.ToInt32(Session["pid_BuyNow"]) +"','"+0+ "');";
            MySqlConnection MyConn2 = new MySqlConnection(str);
            MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
            MySqlDataReader MyReader2;
            MyConn2.Open();
            MyReader2 = MyCommand2.ExecuteReader();
            Response.Write("<script>alert('Order Placed');</script>");
            while (MyReader2.Read())
            {
            }
            MyConn2.Close();
            confEmail();
            Response.Redirect("Confirm.aspx");

        }
        public void confEmail()
        {
            try
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress("yashbabel99@gmail.com");
                // Recipient e-mail address.

                Msg.To.Add(Session["email"].ToString());
                Msg.Subject = "Greetings from Gransells. Your order is placed";
                Msg.Body = "Hi, <br/>Thanks for an placing order with Gransells.<br/>Your order details are:<br/>Type: " + Session["check_slab_tile"].ToString() + "<br/>Size: " + tbSize.Text + " <br/>Please issue a check on the name 'Granites Pvt. Ltd.' of ₹ " + Session["price"] + " to confirm your order. You will shortly receive a call from us.";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("yashbabel99@gmail.com", "babel6867");
                smtp.EnableSsl = true;

                smtp.Send(Msg);
            }
            catch
            {
                Response.Redirect("Confirm.aspx");
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Product.aspx");
        }

     }
}