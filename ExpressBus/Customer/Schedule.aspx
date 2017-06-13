<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="ExpressBus.Customer.Schedule" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- font-awesome icons -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- //font-awesome icons -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3 style="text-align: center; text-shadow: -1px 0 white, 0 1px black, 1px 0 black, 0 -1px black;">Always There For You.</h3>
    <br />
    <div class="panel panel-default">
        <div class="panel-heading">
            <label>Pick Your Destination and Date</label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label>Origin</label>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-arrow-up" style="width: auto"></i>
                    </span>
                    <asp:DropDownList ID="ddlOrigin" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Station] WHERE ([status] = @status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select your origin" ControlToValidate="ddlOrigin" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Destination</label>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-arrow-down" style="width: auto"></i>
                    </span>
                    <asp:DropDownList ID="ddlDestination" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select your destination" ControlToValidate="ddlDestination" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Date departure</label>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-calendar" style="width: auto"></i>
                    </span>
                    <asp:TextBox ID="txtDate" runat="server" class="form-control"></asp:TextBox>
                    <asp:ScriptManager runat="server"></asp:ScriptManager>
                    <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" TargetControlID="txtDate" />
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your date" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="BtnSubmit" runat="server" CssClass="btn btn-default" Text="SEARCH" OnClick="BtnSubmit_Click" />
        </div>
    </div>
    <br />
    <br />
</asp:Content>