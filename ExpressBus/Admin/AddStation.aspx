<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStation.aspx.cs" Inherits="ExpressBus.Admin.AddStation" %>

<asp:Content ID="Content5" ContentPlaceHolderID="StationHeader" runat="server">
    Station
</asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="Station" runat="server">
    <div class="row">
        <div class="col-md-6 col-lg-offset-3">
            <div class="panel panel-default">

                <div class="form-group">
                    <label>Station Name</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-heart" aria-hidden="true"></i>
                        </span>
                        <asp:TextBox ID="txtStation" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please enter your full name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" class="btn btn-default" Width="100%" OnClick="btnSubmit_Click" />
            </div>
            <p style="text-align: center; color: white"><a href="AdminStation.aspx">Cancel</a></p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="Seat" runat="server">
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="Home" runat="server">
</asp:Content>