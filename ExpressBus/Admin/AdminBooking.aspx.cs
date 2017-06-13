using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ExpressBus.Admin
{
    public partial class AdminBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DeleteBooking(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;

            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("BookingDelete", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("id", id);
            

            
            cmd.ExecuteNonQuery();
            

            try
            {
                
            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                conn.Close();
            }



            Response.Redirect("AdminBooking.aspx");
        }
    }
}