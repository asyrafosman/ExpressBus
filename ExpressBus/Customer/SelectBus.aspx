<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="SelectBus.aspx.cs" Inherits="ExpressBus.Customer.SelectBus" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Express Bus Sdn Bhd</title>
    <link rel="shortcut icon" href="favicon.ico" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <link href="../font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
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

        @font-face {
            font-family: 'BebasNeueRegular';
            src: url('../fonts/BebasNeue-webfont.eot');
            src: url('../fonts/BebasNeue-webfont.eot?#iefix') format('embedded-opentype'), url('../fonts/BebasNeue-webfont.woff') format('woff'), url('../fonts/BebasNeue-webfont.ttf') format('truetype'), url('../fonts/BebasNeue-webfont.svg#BebasNeueRegular') format('svg');
            font-weight: normal;
            font-style: normal;
        }

        .container {
            width: 960px;
            margin: 0 auto;
            overflow: hidden;
        }

        .clock {
            width: 800px;
            margin: 0 auto;
            padding: 30px;
            border: 1px solid #333;
            color: #fff;
        }

        #Date {
            font-family: 'BebasNeueRegular', Arial, Helvetica, sans-serif;
            font-size: 36px;
            text-align: center;
            text-shadow: 0 0 5px #00c6ff;
        }

        ul {
            width: 735px;
            margin: 0 auto;
            padding: 0px;
            list-style: none;
            text-align: center;
        }

            ul li {
                display: inline;
                font-size: 10em;
                text-align: center;
                font-family: 'BebasNeueRegular', Arial, Helvetica, sans-serif;
                text-shadow: 0 0 5px #00c6ff;
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
    </style>
    <script type="text/javascript" src="../js/plugins/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Create two variable with the names of the months and days in an array
            var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

            // Create a newDate() object
            var newDate = new Date();
            // Extract the current date from Date object
            newDate.setDate(newDate.getDate());
            // Output the day, date, month and year    
            $('#Date').html(dayNames[newDate.getDay()] + " " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());

            setInterval(function () {
                // Create a newDate() object and extract the seconds of the current time on the visitor's
                var seconds = new Date().getSeconds();
                // Add a leading zero to seconds value
                $("#sec").html((seconds < 10 ? "0" : "") + seconds);
            }, 1000);

            setInterval(function () {
                // Create a newDate() object and extract the minutes of the current time on the visitor's
                var minutes = new Date().getMinutes();
                // Add a leading zero to the minutes value
                $("#min").html((minutes < 10 ? "0" : "") + minutes);
            }, 1000);

            setInterval(function () {
                // Create a newDate() object and extract the hours of the current time on the visitor's
                var hours = new Date().getHours();
                // Add a leading zero to the hours value
                $("#hours").html((hours < 10 ? "0" : "") + hours);
            }, 1000);

        });
    </script>
    <link rel="canonical" href="http://www.alessioatzeni.com/wp-content/tutorials/jquery/CSS3-digital-clock/index.html" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
        <div class="clock">
            <div id="Date"></div>

            <ul>
                <li id="hours"></li>
                <li id="point">:</li>
                <li id="min"></li>
                <li id="point">:</li>
                <li id="sec"></li>
            </ul>

        </div>
    </div>

    <h3 style="text-align: center; font-family: 'BebasNeueRegular'">Available Trip for You</h3>


    
        
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BusId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="BusNo" HeaderText="Bus Number" SortExpression="BusNo" />
                    <asp:BoundField DataField="Depart" HeaderText="Depart Time" SortExpression="Depart" />
                    <asp:BoundField DataField="Arrive" HeaderText="Arrival Time" SortExpression="Arrive" />
                    <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="NoSeat" HeaderText="Total Seat" SortExpression="NoSeat" />
                    <asp:CommandField ShowSelectButton="True" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpressBusCS %>" SelectCommand="SELECT * FROM [Bus] WHERE (([Origin] LIKE '%' + @Origin + '%') AND ([Destination] LIKE '%' + @Destination + '%'))">
                <SelectParameters>
                    <asp:SessionParameter Name="Origin" SessionField="Origin" Type="String" />
                    <asp:SessionParameter Name="Destination" SessionField="Destination" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            
        
    


    


    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</asp:Content>
