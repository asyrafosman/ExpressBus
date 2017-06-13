<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBus.aspx.cs" Inherits="ExpressBus.Admin.AdminBus" %>

<asp:Content ID="BusHeader" ContentPlaceHolderID="BusHeader" runat="server">
    Bus
</asp:Content>

<asp:Content ID="Bus" ContentPlaceHolderID="Bus" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-heading">
                    <asp:Button ID="Button1" runat="server" class="form-control" Text="Add New Bus Schedule" OnClick="Button1_Click" />
                </div>
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BusId" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="BusId" HeaderText="Bus ID" ReadOnly="True" SortExpression="BusId" />
                                <asp:BoundField DataField="Depart" HeaderText="Departure Time" SortExpression="Depart" />
                                <asp:BoundField DataField="Arrive" HeaderText="Arrival Time" SortExpression="Arrive" />
                                <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                                <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                                <asp:BoundField DataField="BusNo" HeaderText="Reg No" SortExpression="BusNo" />
                                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="NoSeat" HeaderText="Seat No" SortExpression="NoSeat" />
                                
                                <asp:TemplateField HeaderText="" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("BusId") %>' OnClick="DeleteBus">
                                        <span class="fa fa-times"></span></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Bus]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>