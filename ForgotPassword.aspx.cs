using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication7
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string username = tbUserName.Text.ToLower();


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
                if (dt.Rows.Count != 0 && tbUserName.Text!="manager" && tbUserName.Text!="admin")
                {
                    try
                    {

                        lbCheck.Visible = true;
                        MailMessage Msg = new MailMessage();
                        // Sender e-mail address.
                        Msg.From = new MailAddress("yashbabel99@gmail.com");
                        // Recipient e-mail address.
                        String dec = dt.Rows[0]["Password"].ToString();
                        string pass = decrypt(dec);
                        Msg.To.Add(tbUserName.Text);
                        Msg.Subject = "Your Password Details";
                        Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Username: " + dt.Rows[0]["UserName"] + "<br/><br/>Your Password: " + pass + "<br/><br/>";
                        Msg.IsBodyHtml = true;
                        // your remote SMTP server IP.
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = new System.Net.NetworkCredential("yashbabel99@gmail.com", "babel6867");
                        smtp.EnableSsl = true;

                        smtp.Send(Msg);
                        //Msg = null;
                        lbCheck.Text = "Your Password Details Sent to your mail";
                        lbCheck.Visible = true;
                        // Clear the textbox valuess
                        tbUserName.Text = "";
                    }
                    catch
                    {
                        lbCheck.Text="An error occurd";
                        lbCheck.Visible=true;
                    }
                }
                else
                {
                    lbCheck.Text = "Please enter a valid Email address";
                    lbCheck.Visible = true;
                }
            }
        }
        private static string decrypt(string pass)
        {
            byte[] data = Convert.FromBase64String(pass); // decrypt the incrypted text
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes("KeyForGransells"));
                using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                {
                    ICryptoTransform transform = tripDes.CreateDecryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    string result = UTF8Encoding.UTF8.GetString(results);
                    return result;
                }
            }
        }
    }


}