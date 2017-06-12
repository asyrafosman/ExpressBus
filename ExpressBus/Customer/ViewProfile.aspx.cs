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
    public partial class ViewProfile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFullName.Text = Session["fname"].ToString();
            txtUserName.Text = Session["uname"].ToString();
            txtPassword.Text = Session["pw"].ToString();
            txtContactNo.Text = Session["telno"].ToString();
            txtEmail.Text = Session["email"].ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connStr = ConfigurationManager.ConnectionStrings["ExpressBusCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                try
                {
                    string update = "UPDATE Customer " +
                            " SET fname = @fname, pw = @pw, telno = @telno, email = @email" +
                            " WHERE uname = @uname ";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = update;
                    cmd.Parameters.Add(new SqlParameter("uname", txtUserName.Text));
                    cmd.Parameters.Add(new SqlParameter("fname", txtFullName.Text));          
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
                    Session["fname"] = txtFullName.Text;
                    Session["uname"] = txtUserName.Text;
                    Session["pw"] = txtPassword.Text;
                    Session["telno"] = txtContactNo.Text;
                    Session["email"] = txtEmail.Text;
                    conn.Close();
                }
            }
        }
    }
}