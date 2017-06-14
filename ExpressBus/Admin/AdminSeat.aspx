<%@ Page Title="Express Bus" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSeat.aspx.cs" Inherits="ExpressBus.Admin.AdminSeat" %>

<asp:Content ID="SeatHeader" ContentPlaceHolderID="SeatHeader" runat="server">
    Seat
</asp:Content>
<asp:Content ID="Seat" ContentPlaceHolderID="Seat" runat="server">
    <div class="row">
        <div class="col-md-6 col-lg-offset-3">
            <div class="panel panel-default">

                <div class="panel-heading">
                    <h3 class="panel-title">Bus Seat</h3>
                </div>
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="seat" DataSourceID="SqlDataSource1" Width="191px" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:TemplateField HeaderText="No.">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex +1 %>.
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Width="5%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="3%" />
                                </asp:TemplateField>
                                <%--<asp:BoundField DataField="seat" HeaderText="seat" InsertVisible="False" ReadOnly="True" SortExpression="seat" />--%>
                                <asp:TemplateField HeaderText="Status" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:Label ID="Status" runat="server" Text='<%# Eval("sstatus").ToString() == "0" ? "Available" : "Booked" %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("seat") %>' OnClick="EnableSeat">
                                        <span class="fa fa-angle-right"></span></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [BusSeat]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>