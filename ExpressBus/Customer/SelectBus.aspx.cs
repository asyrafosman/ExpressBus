using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpressBus.Customer
{
    public partial class SelectBus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/SelectSeat.aspx");
        }

        protected void ViewSeat(object sender, EventArgs e)
        {
            string BusId = (sender as LinkButton).CommandArgument;
            Session.Add("BusId", BusId);
            Response.Redirect("SelectSeat.aspx");
        }
    }
}