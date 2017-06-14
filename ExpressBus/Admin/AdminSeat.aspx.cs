using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ExpressBus.Admin
{
    public partial class AdminSeat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnableSeat(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            Session.Add("seat", id);

            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Seatstatus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("seat", id);



            cmd.ExecuteNonQuery();


            Response.Redirect("AdminSeat.aspx");
        }
    }
}