<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminStation.aspx.cs" %>

<asp:Content ID="StationHeader" ContentPlaceHolderID="StationHeader" runat="server">
    Station
</asp:Content>

<asp:Content ID="Station" ContentPlaceHolderID="Station" runat="server">

    <div class="row">
        <div class="col-md-6 col-lg-offset-3">
            <div class="panel panel-default">

                <div class="panel-heading">
                    <h3 class="panel-title">Bus Stations</h3>
                </div>

                <div class="panel-body panel-body-table">

                 <div class="table-responsive">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-actions">
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                             <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                             <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Station]"></asp:SqlDataSource>
                 </div>            

                </div>
            </div>                                                

        </div>
    </div>
</asp:Content>
