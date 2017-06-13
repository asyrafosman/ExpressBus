using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpressBus.Customer
{
    public partial class Ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblName.Text = Session["uname"].ToString();
                lblNama.Text = Session["uname"].ToString();
                lblBus.Text = Session["busNo"].ToString();
                lblBusNo.Text = Session["busNo"].ToString();
                lblPrice.Text = Session["price"].ToString();
                lblContact.Text = Session["telno"].ToString();
                lblOrigin.Text = Session["origin"].ToString();
                lblDestination.Text = Session["destination"].ToString();
                lblDate.Text = Session["Date"].ToString();
                lblSeat.Text = Session["seatId"].ToString();
                lblTime.Text = Session["depart"].ToString();
            }
        }

        
    }
}