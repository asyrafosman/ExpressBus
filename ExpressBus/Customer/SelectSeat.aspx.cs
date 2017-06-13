using System;
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
            if (Session["uname"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void BookSeat(object sender, EventArgs e)
        {
            string seatId = (sender as LinkButton).CommandArgument;
            Session.Add("seatId", seatId);


            int busId = Convert.ToInt32(Session["BusId"]);

            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("MakeBooking", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("BusId", busId);

            SqlDataReader drUser;
            drUser = cmd.ExecuteReader();
            drUser.Read();

            try
            {
                if (drUser.HasRows)
                {
                    Session["origin"] = drUser["Origin"].ToString();
                    Session["destination"] = drUser["Destination"].ToString();
                    Session["depart"] = drUser["Depart"].ToString();
                    Session["arrive"] = drUser["Arrive"].ToString();
                    Session["busNo"] = drUser["BusNo"].ToString();
                    Session["duration"] = drUser["Duration"].ToString();
                    Session["price"] = drUser["Price"].ToString();

                    conn.Close();
                }
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



            conn.Open();
            try
            {
                SqlCommand cmmd = new SqlCommand("BookingInsert", conn);
                cmmd.CommandType = CommandType.StoredProcedure;
                cmmd.Parameters.AddWithValue("busNo", Session["busNo"].ToString());
                cmmd.Parameters.AddWithValue("bdate", Session["Date"].ToString());
                cmmd.Parameters.AddWithValue("seatNo", Session["seatId"].ToString());
                cmmd.Parameters.AddWithValue("custName", Session["fname"].ToString());
                cmmd.Parameters.AddWithValue("bstatus","unpaid");
                cmmd.Connection = conn;
                cmmd.ExecuteNonQuery();
                cmmd.Parameters.Clear();

                SqlCommand command = new SqlCommand("BusSeatUpdate", conn);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("seat", Session["seatId"].ToString()));
                command.Parameters.Add(new SqlParameter("sstatus", 1));
                command.Connection = conn;
                command.ExecuteNonQuery();
                command.Parameters.Clear();
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

            Response.Redirect("Booking.aspx");
        }
    }
}