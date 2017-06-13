<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBusStation.aspx.cs" Inherits="ExpressBus.Admin.AdminBusStation" %>

<asp:Content ID="StationHeader" ContentPlaceHolderID="StationHeader" runat="server">
    Station
</asp:Content>

<asp:Content ID="Station" ContentPlaceHolderID="Station" runat="server">

    <div class="row">
        <div class="col-md-6 col-lg-offset-3">
            <div class="panel panel-default">

                <div class="panel-heading">
                    <h3 class="panel-title">Bus Stations</h3>
                    <br />
                    <asp:Button ID="Button1" runat="server" class="form-control" Text="Add New Station" OnClick="Button1_Click" />
                </div>

                <div class="panel-body panel-body-table">

                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="stationname" HeaderText="Station Name" SortExpression="stationname" />
                                
                                <asp:TemplateField HeaderText="Status" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:Label ID="Status" runat="server" Text='<%# Eval("stationstatus").ToString() == "0" ? "Available" : "Not Available" %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="EnableStation">
                                        <span class="fa fa-random"></span></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="DeleteStation">
                                        <span class="fa fa-times"></span></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Station]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>