<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="SelectSeat.aspx.cs" Inherits="ExpressBus.Customer.SelectSeat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Express Bus</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="favicon.ico" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- font-awesome icons -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- //font-awesome icons -->
    

    <style type="text/css">
        body {
            background: #202020;
            font: bold 12px Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            min-width: 960px;
            color: #bbbbbb;
        }

        a {
            text-decoration: none;
            color: #00c6ff;
        }

        h1 {
            font: 4em normal Arial, Helvetica, sans-serif;
            padding: 20px;
            margin: 0;
            text-align: center;
        }

            h1 small {
                font: 0.2em normal Arial, Helvetica, sans-serif;
                text-transform: uppercase;
                letter-spacing: 0.2em;
                line-height: 5em;
                display: block;
            }

        h2 {
            font-weight: 700;
            color: #bbb;
            font-size: 20px;
        }

        h2, p {
            margin-bottom: 10px;
        }

        table {
            margin: 10px;
            border-collapse: separate;
        }

        .seat {
            background-clip: padding-box;
            background-color: #99d6ff;
            color: black;
            border: 5px solid #0066ff;
            border-radius: 15px;
        }

        input[type=checkbox]:checked + label {
            background-clip: padding-box;
            background-color: #00ff00;
            border-radius: 10px;
        }

        input[type=checkbox]:disabled + label {
            background-clip: padding-box;
            background-color: #ff4d4d;
            border-radius: 10px;
        }

        @font-face {
            font-family: 'BebasNeueRegular';
            src: url('fonts/BebasNeue-webfont.eot');
            src: url('fonts/BebasNeue-webfont.eot?#iefix') format('embedded-opentype'), url('fonts/BebasNeue-webfont.woff') format('woff'), url('fonts/BebasNeue-webfont.ttf') format('truetype'), url('fonts/BebasNeue-webfont.svg#BebasNeueRegular') format('svg');
            font-weight: normal;
            font-style: normal;
        }

        .container {
            width: 960px;
            margin: 0 auto;
            overflow: hidden;
        }

        #point {
            position: relative;
            -moz-animation: mymove 1s ease infinite;
            -webkit-animation: mymove 1s ease infinite;
            padding-left: 10px;
            padding-right: 10px;
        }

        @-webkit-keyframes mymove {
            0% {
                opacity: 1.0;
                text-shadow: 0 0 20px #00c6ff;
            }

            50% {
                opacity: 0;
                text-shadow: none;
            }

            100% {
                opacity: 1.0;
                text-shadow: 0 0 20px #00c6ff;
            }
        }

        @-moz-keyframes mymove {
            0% {
                opacity: 1.0;
                text-shadow: 0 0 20px #00c6ff;
            }

            50% {
                opacity: 0;
                text-shadow: none;
            }

            100% {
                opacity: 1.0;
                text-shadow: 0 0 20px #00c6ff;
            }
        }
        .auto-style1 {
            background-clip: padding-box;
            background-color: #99d6ff;
            color: black;
            border: 5px solid #0066ff;
            border-radius: 15px;
            height: 19px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3 style="text-align: center; font-family: 'BebasNeueRegular'">Select Your seat</h3>
    <br />

    <div align="center">
        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="seat" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="50%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="seat" HeaderText="Seat Number" InsertVisible="False" ReadOnly="True" SortExpression="seat" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <%--<asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />--%>
                <asp:TemplateField HeaderText="Status" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                     <asp:Label ID="Status" runat="server" Text='<%# Eval("status").ToString() == "0" ? "Available" : "Booked" %>'></asp:Label>
                        
                    </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="" SortExpression="status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("seat") %>'
                        OnClick="BookSeat">
                        <span class="fa fa-search fa-lg"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [BusSeat]"></asp:SqlDataSource>
    </div>
    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
</asp:Content>