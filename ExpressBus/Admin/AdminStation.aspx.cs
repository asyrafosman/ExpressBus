using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpressBus.Admin
{
    public partial class AdminStation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StationDelete(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            Session.Add("id", id);
            Response.Redirect("AdminStation.aspx");
        }
    }
}