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
    public partial class AddBus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminuname"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                try
                {
                    SqlCommand cmd = new SqlCommand("BusInsert", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("Depart", txtDepart.Text);
                    cmd.Parameters.AddWithValue("Arrive", txtArrival.Text);
                    cmd.Parameters.AddWithValue("Origin", txtOrigin.Text);
                    cmd.Parameters.AddWithValue("Destination", txtDestination.Text);
                    cmd.Parameters.AddWithValue("BusNo", txtBusno.Text);
                    cmd.Parameters.AddWithValue("Duration", txtDuration.Text);
                    cmd.Parameters.AddWithValue("Price", txtPrice.Text);
                    cmd.Parameters.AddWithValue("NoSeat", txtSeat.Text);

                    cmd.Connection = conn;
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                }
                catch (Exception ex)
                {
                    string script = "alert('" + ex.Message.ToString() + "'); window.location.reload();\n";
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", script, true);
                }
                finally
                {
                    conn.Close();
                }
            }
            Response.Redirect("AdminBus.aspx");
        }
    }
}