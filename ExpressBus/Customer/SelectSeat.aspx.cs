﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpressBus.Customer
{
    public partial class SelectSeat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/MakeBooking.aspx");
        }

        protected void BookSeat(object sender, EventArgs e)
        {
            string seatId = (sender as LinkButton).CommandArgument;
            Session.Add("seatId", seatId);
            Response.Redirect("SelectSeat.aspx");
        }
    }
}