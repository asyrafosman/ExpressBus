using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace ExpressBus.Customer
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"]==null)
            {
                Response.Redirect("Default.aspx");
            }

            else
            {
                txtFullName.Text = Session["fname"].ToString();
                txtUserName.Text = Session["uname"].ToString();
                txtPassword.Text = Session["pw"].ToString();
                txtContactNo.Text = Session["telno"].ToString();
                txtEmail.Text = Session["email"].ToString();
            }
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
                    SqlCommand cmd = new SqlCommand("CustUpdate", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("uname", txtUserName.Text);
                    cmd.Parameters.AddWithValue("fname", txtFullName.Text);
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