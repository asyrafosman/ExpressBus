using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpressBus.Customer
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string login = "SELECT * FROM Customer " +
                        " WHERE uname = @uname AND pw = @pw";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = login;
            cmd.Parameters.Add(new SqlParameter("uname", txtUser.Text));
            cmd.Parameters.Add(new SqlParameter("pw", txtPassword.Text));
            cmd.Connection = conn;

            SqlDataReader drUser;
            drUser = cmd.ExecuteReader();
            drUser.Read();

            try
            {
                if (drUser.HasRows)
                {
                    Session["fname"] = drUser["fname"].ToString();
                    Session["uname"] = drUser["uname"].ToString();
                    Session["pw"] = drUser["pw"].ToString();
                    Session["telno"] = drUser["telno"].ToString();
                    Session["email"] = drUser["email"].ToString();
                    conn.Close();
                    Response.Redirect("MakeBooking.aspx");
                }
                else
                {
                    Panel1.Visible = true;
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
        }
    }
}