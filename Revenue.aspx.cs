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
    public partial class Revenue : System.Web.UI.Page
    {
        
        public string month;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["checkManager"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            bind();
        }
        public void bind()
        {
            DataTable dt3 = new DataTable();

            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            string query3 = "select month,slab_length,slab_width,num_of_peice,sq_ft from revenue";
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd2 = new MySqlCommand(query3, conn))
                {
                    using (MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2))
                    {

                        sda2.Fill(dt3);
                        GridView1.DataSource = dt3;
                        Session.Add("prod", dt3);
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

        protected void btCalculate_Click(object sender, EventArgs e)
        {
            lbprod.Visible = true;
            lbSquareFeet.Visible = true;
            long production,slh,slb,nop;
            slh = Convert.ToInt64(tbSlabLength.Text);
            slb = Convert.ToInt64(tbSlabWidth.Text);
            nop = Convert.ToInt64(tbNOP.Text);
            production = slh * slb * nop;
            lbSquareFeet.Text = "₹ " + production.ToString()+" /-";
            btSave.Visible = true;
        }

        protected void btShowRecords_Click(object sender, EventArgs e)
        {
            lbcheck.Visible = false;
            ddlMonth.Visible = false;
            lbemop.Visible = false;
            divcal.Visible = false;
            lbemop.Visible = false;
            ddlMonth.Visible = false;

            divshow.Visible = true;
           
        }

        protected void btAddRecords_Click(object sender, EventArgs e)
        {
            divshow.Visible = false;

            ddlMonth.Visible = true;
            lbemop.Visible = true;

            
        }


        protected void btSave_Click(object sender, EventArgs e)
        {
            
            long production, slh, slb, nop;
            slh = Convert.ToInt64(tbSlabLength.Text);
            slb = Convert.ToInt64(tbSlabWidth.Text);
            nop = Convert.ToInt64(tbNOP.Text);
            production = slh * slb * nop;
            string mon = Session["month"].ToString();
           
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";

            string Query = "Insert into revenue(slab_length,slab_width,num_of_peice,sq_ft,month,year) values('" + slh + "','" + slb + "','" + nop + "','" + production + "','" + mon + "','" + 2020+ "');";
            MySqlConnection MyConn2 = new MySqlConnection(str);
            MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
            MySqlDataReader MyReader2;
            MyConn2.Open();
            MyReader2 = MyCommand2.ExecuteReader();
            MyConn2.Close();
            bind();
            divcal.Visible = false;
            lbemop.Visible = false;
            ddlMonth.Visible = false;
            lbprod.Visible = false;
            lbSquareFeet.Visible = false;
            btSave.Visible = false;
            

        }

        protected void ddlMonth_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (ddlMonth.SelectedValue == "select")
            {
                lbcheck.Visible = false;
                divcal.Visible = false;



            }
            else
            {

                Session["month"] = ddlMonth.SelectedValue;
                divcal.Visible = false;
                string mon = Session["month"].ToString();
                int i;
                DataTable dt3 = new DataTable();
                dt3 = (DataTable)Session["prod"];
                if (dt3.Rows.Count == 0)
                {
                    divcal.Visible = true;

                }
                else
                {

                    for (i = 0; i < dt3.Rows.Count; i++)
                    {

                        if (dt3.Rows[i]["month"].ToString() == mon)
                        {
                            lbcheck.Visible = true;
                            divcal.Visible = false;
                            break;
                        }
                        else
                        {
                            lbcheck.Visible = false;

                            divcal.Visible = true;
                        }
                    }
                }
            }


        }
       
    }

}