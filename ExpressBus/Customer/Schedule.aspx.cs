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
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["origin"] = DropDownList1.SelectedValue.ToString();
            Session["destination"] = DropDownList2.SelectedValue.ToString();
            
            Response.Redirect("~/Customer/SelectBus.aspx");
        }
    }
}