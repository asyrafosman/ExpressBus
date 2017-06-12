﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="ExpressBus.Customer.Booking" %>
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
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.customers.fname}" /></div></td>
                    </tr>
                    
                    <tr class="success">
                        <th><div style="color:black">Origin</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.origin}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Destination</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.destination}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Depart Date</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.date}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Depart Time</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.realtime}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Seat Number</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.allseat}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">No Of Passenger</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.no}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Total Price</div></th>
                        <td class="info"><div style="color:black">RM <c:out value= "${sessionScope.price}" />0</div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Contact No</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.customers.telno}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">E-Mail</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.customers.email}" /></div></td>
                    </tr>
                </table>
                    <br/><br/>
                <div class="form-group" id="demo1" style="display:none;">
                    <legend><div style="color:white">Credit card payment</div></legend>
                    <p style='text-align: center'>We accept:</p>
                    <label><img src='img/cards/visae.png'/></label>
                    <label><img src='img/cards/visa.png'/></label>
                    <label><img src='img/cards/mastercard.png'/></label>
                    <label><img src='img/cards/cirrus.png'/></label>
                    <label><img src='img/cards/amex.png'/></label>
                    <label><img src='img/cards/paypal.png'/></label>
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