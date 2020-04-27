using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication7
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customerId"] != null)
            {
                Session["customerId"] = null;
            }

        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string username = tbUserName.Text.ToLower();
            string password = encryption(tbPassword.Text);
            
            string query = "select * from login where userName=" +"'"+username+"'";
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
            if (dt.Rows.Count == 0)
            {
                lbCheck.Text = "Invalid Username or Password";
                lbCheck.Visible = true;
            }
            else
            {
                if (username == "manager" && password == dt.Rows[0]["password"].ToString())
                {
                    Session["checkManager"] = 1;
                    Response.Redirect("Manager_Order.aspx");
                }
                else if (username == "admin" && password == dt.Rows[0]["password"].ToString())
                {
                    Session["checkAdmin"] = 1;
                    Response.Redirect("Admin_Order.aspx");
                }
            
                 else if (password == dt.Rows[0]["password"].ToString())
                 {
                        lbCheck.Visible = false;
                        Session["customerId"] = dt.Rows[0]["userId"].ToString();
                        Response.Redirect("Default.aspx");
                    
                 }
                else
                {
                    lbCheck.Visible = true;
                    lbCheck.Text = "Invalid Username or Password";
                }
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
        protected void btContinue_Click(object sender, EventArgs e)
        {
            btContinue.Visible = false;
            lbPass.Visible = true;
            tbPassword.Visible = true;
            btLogin.Visible = true;
            hlForPass.Visible = true;

        }

        

        protected void btNewAcc_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegForm.aspx");

        }

        
    }
}