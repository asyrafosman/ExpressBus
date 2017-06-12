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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                try
                {
                    SqlCommand cmd = new SqlCommand("CustRegister", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("fname", txtFullName.Text);
                    cmd.Parameters.AddWithValue("uname", txtUserName.Text);
                    cmd.Parameters.AddWithValue("pw", txtPassword.Text);
                    cmd.Parameters.AddWithValue("telno", txtContactNo.Text);
                    cmd.Parameters.AddWithValue("email", txtEmail.Text);
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
            Response.Redirect("Login.aspx");
        }
    }
}