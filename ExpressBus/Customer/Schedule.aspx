<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="ExpressBus.Customer.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
            <br />
            <h3 style="text-align: center; text-shadow: -1px 0 white, 0 1px black, 1px 0 black, 0 -1px black;">Always There For You.</h3>
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 style="text-align: center">Pick Your Destination and Date</h4>
                </div>
                
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Origin</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-arrow-circle-up" style="width: auto"></i>
                                </span>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Station] WHERE ([status] = @status)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                
                            </div>
                        </div>
                        <div class="form-group">
                        <label>Destination</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-arrow-circle-down" style="width: auto"></i>
                                </span>
                                 <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                                
                            </div>
                        </div>
                        <div class="form-group">
                        <label>Date departure</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-calendar-check-o" style="width: auto"></i>
                                </span>
                                
                                <input type="date" name="date" required class="form-control"/>
                            </div>
                            
                        </div>
                        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SEARCH" OnClick="Button1_Click" />
                        
                    </div>
               
            </div>
            <br /><br />

</asp:Content>
