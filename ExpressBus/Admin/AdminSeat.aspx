<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSeat.aspx.cs" Inherits="ExpressBus.Admin.AdminSeat" %>

<asp:Content ID="SeatHeader" ContentPlaceHolderID="SeatHeader" runat="server">
    Seat
</asp:Content>
<asp:Content ID="Seat" ContentPlaceHolderID="Seat" runat="server">
    <div class="row">
<div class="col-md-12">
    <div class="panel panel-default">

        <div class="panel-heading">
            
        </div>
        <div class="panel-body panel-body-table">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView> 
            </div>
        </div>
    </div>
</div>
</div>
</asp:Content>

