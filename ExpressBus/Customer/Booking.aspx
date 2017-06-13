<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="ExpressBus.Customer.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h3 style="text-align: center; font-family:'BebasNeueRegular'">Your Trip is Ready</h3> 

         <!-- Make space --> &nbsp; 

                <table class="table table-hover">
                    <tr class="success">
                        <th><div style="color:black">Full Name</div></th>
                        <td class="info"><div style="color:black">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Bus Number</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Origin</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Destination</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Depart Date</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Depart Time</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Arrival Time</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Duration</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Total Price</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Contact No</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">E-Mail</div></th>
                        <td class="info"><div style="color:black"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></div></td>
                    </tr>
                </table>
                    <br/><br/>
                <div class="form-group text-center" id="demo1" style="display:none;">
                    <legend><div style="color:white">Credit card payment</div></legend>
                    <p style='text-align: center'>We accept:</p>
                    <label><img src='../img/cards/visae.png'/></label>
                    <label><img src='../img/cards/visa.png'/></label>
                    <label><img src='../img/cards/mastercard.png'/></label>
                    <label><img src='../img/cards/cirrus.png'/></label>
                    <label><img src='../img/cards/amex.png'/></label>
                    <label><img src='../img/cards/paypal.png'/></label>
                    <input name="alasan" style="text-align:center;" type="text" class="form-control" required/>
                    <small>Your information is secure.</small>
                    <br/><br/>
                    <button type="button" class="btn btn-default" onclick="hideInput()">Back</button>
                    <button type="submit" class="btn btn-success">Pay</button>
                </div>
                    
                <div class="form-group text-center" id="demo2" >
                    <button type="button" class="btn btn-success" onclick="showInput()">Make Payment</button>
                </div>
           

</asp:Content>
