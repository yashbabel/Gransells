using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication7
{
    public partial class RegForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string name = tbFirstName.Text + " " + tbLastName.Text;
                string email = tbEmail.Text;
                string password = encryption(tbConfirmPassword.Text);
                long phone = Convert.ToInt64(tbPhoneNumber.Text.ToString());
                string address = tbAddress1.Text + ", " + tbAddress2.Text;
                string city = tbCity.Text;
                string country = tbCountry.Text;
                string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";

                string Query = "Insert into login(password,userName,name,phone,address,city,country,checkId) values('" + password + "','" + email + "','" + name + "','" + phone + "','" + address + "','" + city + "','" + country + "','" + 3 + "');";
                MySqlConnection MyConn2 = new MySqlConnection(str);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();
                // MessageBox.Show("Save Data");
                while (MyReader2.Read())
                {
                }
                MyConn2.Close();
                if (Session["check_login"] != null)
                {
                    int customerId = getCustId();
                    Session["customerId"] = customerId;
                    Response.Redirect("BuyNow.aspx");
                }

                Response.Redirect("Login.aspx");
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
        protected int getCustId()
        {
            DataTable dt = new DataTable();
            string username = tbEmail.Text;
            string query = "select * from login where userName=" + "'" + username + "'";
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
            return Convert.ToInt16(dt.Rows[0]["userID"]);
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {


            DataTable dt = new DataTable();
            string username = tbEmail.Text.ToLower();
            string password = tbPassword.Text;

            string query = "select * from login ";
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
            int flag = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (username == dt.Rows[i]["userName"].ToString())
                {
                    args.IsValid = false;
                    break;
                }
                else
                {
                    flag = 1;
                }

            }
            if (flag == 1)
            {
                args.IsValid = true;
            }
        }
        
    }
}