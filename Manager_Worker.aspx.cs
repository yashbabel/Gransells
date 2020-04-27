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
    public partial class Manager_Worker : System.Web.UI.Page
    {

        DataTable dt3 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["checkManager"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
            if (!Page.IsPostBack)
            {
                
                bind();
            }
        }
        public void bind()
        {
            //  DataTable dt3 = new DataTable();

            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            string query3 = "select name,department,phone,city,month_of_joining,salary  from worker";
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd2 = new MySqlCommand(query3, conn))
                {
                    using (MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2))
                    {

                        sda2.Fill(dt3);
                        GridView1.DataSource = dt3;
                        Session.Add("bindOrder", dt3);
                        //GridView1.Columns.RemoveAt(1);
                        GridView1.GridLines = GridLines.None;
                        GridView1.CellPadding = 50;
                        GridView1.DataBind();

                    }
                }
                conn.Close();

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }

        protected void btAddRecord_Click(object sender, EventArgs e)
        {

            if (btAddRecord.Text == "Add Records")
            {
                divAddRecords.Visible = true;
                btAddRecord.Text = "Back";
            }
            else
            {
                divAddRecords.Visible = false;
                btAddRecord.Text = "Add Records";
            }

        }

       protected void btSaveChanges_Click(object sender, EventArgs e)
        {
            string name = tbName.Text;
            int age = Convert.ToInt16(tbAge.Text);
            string dept = tbDept.Text;
            long number = Convert.ToInt64(tbPhoneNumber.Text);
            string address = tbAddress.Text;
            string city = tbCity.Text;
            string date = Calendar1.SelectedDate.ToShortDateString();
            long salary = Convert.ToInt64(tbSalary.Text);

            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";

            string Query = "Insert into worker(name,age,department,phone,address,city,month_of_joining,salary) values('" + name + "','" + age + "','" +dept + "','" + number + "','" + address + "','" + city + "','" + date + "','" + salary + "');";
            MySqlConnection MyConn2 = new MySqlConnection(str);
            MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
            MySqlDataReader MyReader2;
            MyConn2.Open();
            MyReader2 = MyCommand2.ExecuteReader();
            MyConn2.Close();
            btAddRecord.Text = "Add Records";
            divAddRecords.Visible = false;
            bind();
            Response.Redirect(Request.Url.AbsoluteUri);

           
        }
       protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
       {
           if (e.Day.Date > DateTime.Now.Date)
           {
               e.Day.IsSelectable = false;
           }
       }

      
    }
}