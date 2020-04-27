using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using System.Security.Cryptography;

namespace WebApplication7
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string newFirstName=null,newUserName=null, newAddress=null, newCity=null, newCountry=null,newPassword=null;
        long newPhone = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["customerId"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            DataTable dt3 = new DataTable();
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            string query3 = "select image,type,size,price,orderDate,ship_address  from orders where userId=" + Convert.ToInt16(Session["customerId"]);
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd2 = new MySqlCommand(query3, conn))
                {
                    using (MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2))
                    {

                        sda2.Fill(dt3);
                        GridView1.DataSource = dt3;
                        //GridView1.Columns.RemoveAt(1);
                        GridView1.GridLines = GridLines.None;
                        GridView1.CellPadding = 50;
                        GridView1.DataBind();
                        
                    }
                }
                conn.Close();
            }
            if (!Page.IsPostBack)
            {

                DataTable dt = new DataTable();
                if (Session["customerId"] != null)
                {
                    hpMyProfile.Visible = true;
                    LinkButton1.Visible = true;
                    hpLogin.Visible = false;
                }
                
                string query2 = "select * from login where userId=" + Convert.ToInt16(Session["customerId"]);
                using (MySqlConnection conn = new MySqlConnection(str))
                {

                    conn.Open();
                    using (MySqlCommand cmd2 = new MySqlCommand(query2, conn))
                    {
                        using (MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2))
                        {

                            sda2.Fill(dt);

                        }
                    }
                    conn.Close();
                }

                tbFirstName.Text = dt.Rows[0]["name"].ToString();
               
                tbPhoneNumber.Text = dt.Rows[0]["phone"].ToString();
                tbAddress1.Text = dt.Rows[0]["address"].ToString();
                tbCity.Text = dt.Rows[0]["city"].ToString();
                tbCountry.Text = dt.Rows[0]["country"].ToString();
            }
        }

        protected string FormatImageUrl(string url)
        {

            if (url != null && url.Length > 0)

                return ("~/" + url);

            else return null;

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }

       
        protected void tbFirstName_TextChanged(object sender, EventArgs e)
        {
            newFirstName = tbFirstName.Text;
        }


     

        protected void tbPhoneNumber_TextChanged(object sender, EventArgs e)
        {
            newPhone = Convert.ToInt64(tbPhoneNumber.Text.ToString());
        }

        protected void tbCity_TextChanged(object sender, EventArgs e)
        {
            newCity = tbCity.Text;
        }

        protected void tbAddress1_TextChanged(object sender, EventArgs e)
        {
            newAddress = tbAddress1.Text;
        }

        protected void tbCountry_TextChanged(object sender, EventArgs e)
        {
            newCountry = tbCountry.Text;
        }

        protected void btSaveChanges_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            MySqlConnection MyConn2 = new MySqlConnection(str);
            if (newFirstName != null)
            {
                string Query = "update login set name='" + newFirstName + "' where userId="+ Convert.ToInt16(Session["customerId"]);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MyConn2.Open();
                MyCommand2.ExecuteNonQuery();         
                MyConn2.Close();
            }
       
            if (newPhone != 0)
            {
                string Query = "update login set phone='" + newPhone + "' where userId=" + Convert.ToInt16(Session["customerId"]);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MyConn2.Open();
                MyCommand2.ExecuteNonQuery();
                MyConn2.Close();
            }
            if (newAddress != null)
            {
                string Query = "update login set address='" + newAddress + "' where userId=" + Convert.ToInt16(Session["customerId"]);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MyConn2.Open();
                MyCommand2.ExecuteNonQuery();
                MyConn2.Close();
            }
            if (newCity != null)
            {
                string Query = "update login set city='" + newCity + "' where userId=" + Convert.ToInt16(Session["customerId"]);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MyConn2.Open();
                MyCommand2.ExecuteNonQuery();
                MyConn2.Close();
            }
            if (newCountry != null)
            {
                string Query = "update login set country='" + newCountry + "' where userId=" + Convert.ToInt16(Session["customerId"]);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MyConn2.Open();
                MyCommand2.ExecuteNonQuery();
                MyConn2.Close();
            }
            if (newPassword != null)
            {
                string pass = encryption(newPassword);
                string Query = "update login set password='" +pass + "' where userId=" + Convert.ToInt16(Session["customerId"]);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MyConn2.Open();
                MyCommand2.ExecuteNonQuery();
                MyConn2.Close();
            }


            
        }
        public string encryption(String password)
        {
            byte[] data = UTF8Encoding.UTF8.GetBytes(password);
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes("KeyForGransells"));
                using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                {
                    ICryptoTransform transform = tripDes.CreateEncryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    String pass = Convert.ToBase64String(results, 0, results.Length);
                    return pass;
                }
            }
        }

        protected void tbConfirmPassword_TextChanged(object sender, EventArgs e)
        {
            newPassword = tbConfirmPassword.Text;
        }

       
    }
}