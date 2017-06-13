using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpressBus.Customer
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            else
            {
                Label1.Text = Session["fname"].ToString();
                Label9.Text = Session["telno"].ToString();
                Label10.Text = Session["email"].ToString();
                Label4.Text = Session["Date"].ToString();

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

                Label2.Text = Session["origin"].ToString();
                Label3.Text = Session["destination"].ToString();
                Label5.Text = Session["depart"].ToString();
                Label6.Text = Session["arrive"].ToString();
                Label7.Text = Session["duration"].ToString();
                Label8.Text = Session["price"].ToString();
                Label11.Text = Session["busNo"].ToString();
            }
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("BookingInsert", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("busNo", Session["busNo"].ToString());
                cmd.Parameters.AddWithValue("bdate", Session["Date"].ToString());
                cmd.Parameters.AddWithValue("seatNo", Session["seatId"].ToString());
                cmd.Parameters.AddWithValue("custName", Session["fname"].ToString());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();

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
        Response.Redirect("Ticket.aspx");
        }
    }
}