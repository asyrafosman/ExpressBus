<%@ Page Title="Express Bus" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminStat.aspx.cs" Inherits="ExpressBus.Admin.AdminStat" %>

<asp:Content ID="BookingHeader" ContentPlaceHolderID="bookingHeader" runat="server">
    Statistic
</asp:Content>

<asp:Content ID="Booking" ContentPlaceHolderID="Booking" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Bus Ticket Date</h3>
                </div>
                <!-- Table for customer-->
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="bdate" HeaderText="Bus Ticket Date" SortExpression="bdate" />
                                <asp:BoundField DataField="Column1" HeaderText="Count" ReadOnly="True" SortExpression="Column1" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT bdate, COUNT(*) FROM Booking GROUP BY bdate"></asp:SqlDataSource>
                    </div>
                </div>
                <!-- end Table for customer-->
            </div>
        </div>
    </div>
        <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Bus Plate No</h3>
                </div>
                <!-- Table for customer-->
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="busNo" HeaderText="Bus Plate Number" SortExpression="busNo" />
                                <asp:BoundField DataField="Column1" HeaderText="Count" ReadOnly="True" SortExpression="Column1" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT busNo, COUNT(*) FROM Booking GROUP BY busNo"></asp:SqlDataSource>
                    </div>
                </div>
                <!-- end Table for customer-->
            </div>
        </div>
    </div>
        <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Booking Status</h3>
                </div>
                <!-- Table for customer-->
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="bstatus" HeaderText="Booking status" SortExpression="bstatus" />
                                <asp:BoundField DataField="Column1" HeaderText="Count" ReadOnly="True" SortExpression="Column1" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT bstatus, COUNT(*) FROM Booking GROUP BY bstatus"></asp:SqlDataSource>
                    </div>
                </div>
                <!-- end Table for customer-->
            </div>
        </div>
    </div>
</asp:Content>