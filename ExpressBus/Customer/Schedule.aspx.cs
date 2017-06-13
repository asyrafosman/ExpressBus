using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ExpressBus.Customer
{
    public partial class Schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Session["Origin"] = ddlOrigin.SelectedValue.ToString();
            Session["Destination"] = ddlDestination.SelectedValue.ToString();
            Session["Date"] = txtDate.Text;
            Response.Redirect("SelectBus.aspx");
        }
    }
}