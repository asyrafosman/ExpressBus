<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="SelectSeat.aspx.cs" Inherits="ExpressBus.Customer.SelectSeat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Express Bus Sdn Bhd</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <h3 style="text-align: center; font-family: 'BebasNeueRegular'">Select Your seat</h3>
    <br />

    <div align="center">

        <table>
            <tr>
                <td class="seat" rowspan="2">
                    <img src="../img/selected_seat_img.gif" />Driver</td>
                <c:foreach items="${sessionScope.seatSession}" begin="0" end="12" var="seats" varstatus="loop">
                                <c:if test="${seats.status == 0}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>
                                    <c:if test="${seats.status == 1}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" disabled /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>   
                                </c:foreach>
            </tr>
            <tr>
                <c:foreach items="${sessionScope.seatSession}" begin="13" end="25" var="seats" varstatus="loop">
                            <c:if test="${seats.status == 0}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>
                                    <c:if test="${seats.status == 1}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" disabled /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>   
                                </c:foreach>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>AISLE</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>AISLE</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <c:foreach items="${sessionScope.seatSession}" begin="26" end="26" var="seats" varstatus="loop">
                            <c:if test="${seats.status == 0}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>
                                    <c:if test="${seats.status == 1}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" disabled /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>   
                                </c:foreach>
            </tr>

            <tr>
                <td style="text-align: center; vertical-align: bottom">DOOR</td>
                <c:foreach items="${sessionScope.seatSession}" begin="27" end="40" var="seats" varstatus="loop">
                            <c:if test="${seats.status == 0}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>
                                    <c:if test="${seats.status == 1}">
                                <td class="seat"><input type="checkbox" name="seat" value="<c:out value="${seats.seat}" />" id="c" disabled /><label for="c"><img src="img/available_seat_img.gif"/><c:out value="${seats.seat}" /></label></td>
                                    </c:if>   
                                </c:foreach>
            </tr>
        </table>

        <br />
        <img src="../img/available_seat_img.gif" style="background-clip: padding-box; background-color: #99d6ff; border-radius: 10px;" />Available Seat
                &nbsp;
                <img src="../img/available_seat_img.gif" style="background-clip: padding-box; background-color: #00ff00; border-radius: 10px;" />Selected Seat
                &nbsp;
                <img src="../img/available_seat_img.gif" style="background-clip: padding-box; background-color: #ff4d4d; border-radius: 10px;" />Booked Seat

                <br />
        <br />

        <input type="reset" class="btn btn-default" value="Reset" />
        <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Proceed" OnClick="Button1_Click" />


    </div>

    <hr>
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <center><a href ="twitter.com/aamiruddinn"><p>&copy; aa</p></a></center>
            </div>
        </div>
        <!-- /.row -->
    </footer>


    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>




</asp:Content>
