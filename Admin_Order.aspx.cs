using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace WebApplication7
{
    public partial class Admin_Order : System.Web.UI.Page
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
                track.Visible = false;
                bind();
            }
            
            
        }

        public void bind()
        {
          //  DataTable dt3 = new DataTable();

            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            string query3 = "select orderId,image,type,size,price,orderDate,ship_address,track_id  from orders ";
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
                        GridView1.GridLines = GridLines.None;
                        GridView1.CellPadding = 50;
                        GridView1.DataBind();
                        GridView2.DataSource = dt3;
                        GridView2.GridLines = GridLines.None;
                        GridView2.CellPadding = 50;
                        GridView2.DataBind();
                        GridView2.Visible = false;

                    }
                }
                conn.Close();

            }
        }
        protected void Tracking(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            int count = GridView1.Rows.Count;
            
            
            
            Session["index"] = index;
            track.Visible = true;
           

            dt3 = (DataTable)Session["bindOrder"];


            int orderID;
            orderID = Convert.ToInt16(dt3.Rows[index]["orderId"]);
            Session["OrderID"] = orderID;
            GridView2.Visible = true;
            for (int i = 0; i <count; i++)
            {
                if (i >index)
                {
                    GridView1.Rows[i].Visible = false;
                    GridView2.Rows[i].Visible = true;
                }
                else if (i <= index)
                {
                    GridView2.Rows[i].Visible = false;

                }
           }
            btShowAll.Visible = true;
            changeTrackStage();
        }
        public void changeTrackStage()
        {
            dt3 = new DataTable();
            string str = @"Data Source=localhost; Database=gransells;CharSet=utf8;AllowUserVariables=True; User ID=root; Password=PASSWORD";
            string query3 = "select orderId,image,type,size,price,orderDate,ship_address,track_id  from orders ";
            using (MySqlConnection conn = new MySqlConnection(str))
            {

                conn.Open();
                using (MySqlCommand cmd2 = new MySqlCommand(query3, conn))
                {
                    using (MySqlDataAdapter sda2 = new MySqlDataAdapter(cmd2))
                    {

                        sda2.Fill(dt3);


                    }
                }
                conn.Close();

            }
            int index = Convert.ToInt32(Session["index"]);
            if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 0)
            {
                placed.Attributes["class"] = "progtrckr-done";
                unloading.Attributes["class"] = "progtrckr-todo";
                hammering.Attributes["class"] = "progtrckr-todo";
                machineCutting.Attributes["class"] = "progtrckr-todo";
                polishing.Attributes["class"] = "progtrckr-todo";
                packing.Attributes["class"] = "progtrckr-todo";
                loaded.Attributes["class"] = "progtrckr-todo";

            }
            if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 1)
            {
                unloading.Attributes["class"] = "progtrckr-done";
                hammering.Attributes["class"] = "progtrckr-todo";
                machineCutting.Attributes["class"] = "progtrckr-todo";
                polishing.Attributes["class"] = "progtrckr-todo";
                packing.Attributes["class"] = "progtrckr-todo";
                loaded.Attributes["class"] = "progtrckr-todo";

            }
            else if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 2)
            {
                unloading.Attributes["class"] = "progtrckr-done";
                hammering.Attributes["class"] = "progtrckr-done";
                machineCutting.Attributes["class"] = "progtrckr-todo";
                polishing.Attributes["class"] = "progtrckr-todo";
                packing.Attributes["class"] = "progtrckr-todo";
                loaded.Attributes["class"] = "progtrckr-todo";

            }
            else if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 3)
            {
                unloading.Attributes["class"] = "progtrckr-done";
                hammering.Attributes["class"] = "progtrckr-done";
                machineCutting.Attributes["class"] = "progtrckr-done";
                polishing.Attributes["class"] = "progtrckr-todo";
                packing.Attributes["class"] = "progtrckr-todo";
                loaded.Attributes["class"] = "progtrckr-todo";

            }
            else if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 4)
            {
                unloading.Attributes["class"] = "progtrckr-done";
                hammering.Attributes["class"] = "progtrckr-done";
                machineCutting.Attributes["class"] = "progtrckr-done";
                polishing.Attributes["class"] = "progtrckr-done";
                packing.Attributes["class"] = "progtrckr-todo";
                loaded.Attributes["class"] = "progtrckr-todo";

            }
            else if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 5)
            {
                unloading.Attributes["class"] = "progtrckr-done";
                hammering.Attributes["class"] = "progtrckr-done";
                machineCutting.Attributes["class"] = "progtrckr-done";
                polishing.Attributes["class"] = "progtrckr-done";
                packing.Attributes["class"] = "progtrckr-done";
                loaded.Attributes["class"] = "progtrckr-todo";

            }
            else if (Convert.ToInt16(dt3.Rows[index]["track_id"]) == 6)
            {
                unloading.Attributes["class"] = "progtrckr-done";
                hammering.Attributes["class"] = "progtrckr-done";
                machineCutting.Attributes["class"] = "progtrckr-done";
                polishing.Attributes["class"] = "progtrckr-done";
                packing.Attributes["class"] = "progtrckr-done";
                loaded.Attributes["class"] = "progtrckr-done";

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
        protected void btShowAll_Click(object sender, EventArgs e)
        {
          
            track.Visible = false;
            int count = GridView1.Rows.Count;
            for (int i = 0; i < count; i++)
            {
                GridView1.Rows[i].Visible = true;

            }
            GridView2.Visible = false;
            btShowAll.Visible = false;
        }

    }
}