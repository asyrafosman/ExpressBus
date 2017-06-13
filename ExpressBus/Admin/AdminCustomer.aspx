<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCustomer.aspx.cs" Inherits="ExpressBus.Admin.AdminCustomer" %>

<asp:Content ID="CustomerHeader" ContentPlaceHolderID="CustomerHeader" runat="server">
    Customer
</asp:Content>
<asp:Content ID="Customer" ContentPlaceHolderID="Customer" runat="server">

    <div class="row">
        <div class="col-md-12">

            <!-- START DEFAULT DATATABLE -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="table-responsive">
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custid" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-actions">
                            <Columns>
                                <asp:BoundField DataField="custid" HeaderText="Customer ID" InsertVisible="False" ReadOnly="True" SortExpression="custid" />
                                <asp:BoundField DataField="fname" HeaderText="Full Name" SortExpression="fname" />
                                <asp:BoundField DataField="uname" HeaderText="Username" SortExpression="uname" />
                                <asp:BoundField DataField="pw" HeaderText="Password" SortExpression="pw" />
                                <asp:BoundField DataField="telno" HeaderText="Telephone No" SortExpression="telno" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    </div>
                </div>
            </div><!-- END DEFAULT DATATABLE -->

         </div>
      </div>
</asp:Content>

