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
    public partial class Admin_worker : System.Web.UI.Page
    {
        DataTable dt3 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["checkAdmin"] == null)
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

    }
}