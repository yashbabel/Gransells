﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if(Session["customerId"]==null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btContinueShop_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}