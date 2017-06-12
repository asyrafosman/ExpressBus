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
    public partial class Register1 : System.Web.UI.Page
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
                    string insert = "INSERT INTO Customer " +
                            " (fname, uname, pw, telno, email) " +
                            " Values(@fname, @uname, @pw, @telno, @email)";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = insert;
                    cmd.Parameters.Add(new SqlParameter("fname", txtFullName.Text));
                    cmd.Parameters.Add(new SqlParameter("uname", txtUserName.Text));
                    cmd.Parameters.Add(new SqlParameter("pw", txtPassword.Text));
                    cmd.Parameters.Add(new SqlParameter("telno", txtContactNo.Text));
                    cmd.Parameters.Add(new SqlParameter("email", txtEmail.Text));
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