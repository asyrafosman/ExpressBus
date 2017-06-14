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
    public partial class AdminBusStation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminuname"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void DeleteStation(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            Session.Add("id", id);

            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("StationDelete", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("id", id);



            cmd.ExecuteNonQuery();


            Response.Redirect("AdminBusStation.aspx");
        }

        protected void EnableStation(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            Session.Add("id", id);

            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("StationStatus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("id", id);



            cmd.ExecuteNonQuery();


            Response.Redirect("AdminBusStation.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStation.aspx");
        }
    }
}