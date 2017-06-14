<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="ExpressBus.Customer.ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 200px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well well-lg">
        <fieldset>
            <legend>Account Details</legend>
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1"><b>Full Name</b></td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtFullName" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please enter your full name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Username</b></td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" class="form-control" disabled></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Password</b></td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" type="password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Contact Number</b></td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtContactNo" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Please enter your contact number" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Email</b></td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid email</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" OnClick="btnUpdate_Click" CssClass="btn btn-success" />
                    </td>
                </tr>
            </table>
            <br />
        </fieldset>
        <br />
        <fieldset>
            <legend>Booking History</legend>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" CssClass="table table-striped table-bordered table-hover">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="bstatus" HeaderText="Booking Status" SortExpression="bstatus" />
                    <asp:BoundField DataField="busNo" HeaderText="Bus Plate Number" SortExpression="busNo" />
                    <asp:BoundField DataField="bdate" HeaderText="Ticket Date" SortExpression="bdate" />
                    <asp:BoundField DataField="seatNo" HeaderText="Seat No" SortExpression="seatNo" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT [bstatus], [busNo], [bdate], [seatNo] FROM [Booking] WHERE ([custName] = @custName)">
                <SelectParameters>
                    <asp:SessionParameter Name="custName" SessionField="fname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
    </div>
</asp:Content>