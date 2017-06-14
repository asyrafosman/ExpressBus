<%@ Page Title="Express Bus" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddBus.aspx.cs" Inherits="ExpressBus.Admin.AddBus" %>

<asp:Content ID="Content4" ContentPlaceHolderID="BusHeader" runat="server">
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="Bus" runat="server">
    <div class="row">
        <div class="col-md-6 col-lg-offset-3">
            <div class="panel panel-default">

                <div class="form-group">
                    <label>Departure Time</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtDepart" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Arrival Time</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtArrival" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Origin</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtOrigin" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Destination</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtDestination" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Bus No</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtBusno" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Duration</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtDuration" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Ticket Price</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtPrice" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="form-group">
                    <label>Total Seat Available</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-bus" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtSeat" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    
                </div>



                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" class="btn btn-default" Width="100%" OnClick="btnSubmit_Click" />
            </div>
            <p style="text-align: center; color: white"><a href="AdminBus.aspx">Cancel</a></p>
        </div>
    </div>
</asp:Content>