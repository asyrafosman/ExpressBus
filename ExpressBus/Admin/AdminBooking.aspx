<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBooking.aspx.cs" Inherits="ExpressBus.Admin.AdminBooking" %>

<asp:Content ID="BookingHeader" ContentPlaceHolderID="bookingHeader" runat="server">
    Booking
</asp:Content>

<asp:Content ID="Booking" ContentPlaceHolderID="Booking" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Customer's Booking</h3>
                </div>
                <!-- Table for customer-->
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="bstatus" HeaderText="Status" SortExpression="status" />
                                <asp:BoundField DataField="busNo" HeaderText="Bus No" SortExpression="busNo" />
                                <asp:BoundField DataField="bdate" HeaderText="Date" SortExpression="date" />
                                <asp:BoundField DataField="seatNo" HeaderText="Seat No" SortExpression="seatNo" />
                                <asp:BoundField DataField="custName" HeaderText="Customer Name" SortExpression="custName" />
                                <asp:TemplateField HeaderText="" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>'
                                            OnClick="DeleteBooking">
                                        <span class="fa fa-search fa-lg"></span></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               

                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>
                    </div>
                </div>
                <!-- end Table for customer-->
            </div>
        </div>
    </div>
</asp:Content>