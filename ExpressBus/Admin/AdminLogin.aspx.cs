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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("AdminLogin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("uname", txtAdminUser.Text);
            cmd.Parameters.AddWithValue("pw", txtAdminPassword.Text);

            SqlDataReader drUser;
            drUser = cmd.ExecuteReader();
            drUser.Read();

            try
            {
                if (drUser.HasRows)
                {
                    Session["adminfname"] = drUser["fname"].ToString();
                    Session["adminuname"] = drUser["uname"].ToString();
                    Session["adminpw"] = drUser["pw"].ToString();
                    Session["admintelno"] = drUser["telno"].ToString();
                    Session["adminemail"] = drUser["email"].ToString();
                    conn.Close();
                    Response.Redirect("AdminHome.aspx");
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