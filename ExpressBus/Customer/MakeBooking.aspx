<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeBooking.aspx.cs" Inherits="ExpressBus.Customer.MakeBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sedap Ekspess Sdn Bhd</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="shortcut icon" href="favicon.ico" />

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet"/>

        <link href="../font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        
        <style type="text/css">
            body{
                background:#202020;
                font:bold 12px Arial, Helvetica, sans-serif;
                margin:0;
                padding:0;
                min-width:960px;
                color:#bbbbbb; 
            }

            a { 
                text-decoration:none; 
                color:#00c6ff;
            }

            h1 {
                font: 4em normal Arial, Helvetica, sans-serif;
                padding: 20px;	margin: 0;
                text-align:center;
            }

            h1 small{
                font: 0.2em normal  Arial, Helvetica, sans-serif;
                text-transform:uppercase; letter-spacing: 0.2em; line-height: 5em;
                display: block;
            }

            h2 {
                font-weight:700;
                color:#bbb;
                font-size:20px;
            }

            h2, p {
                margin-bottom:10px;
            }

            table {
                margin: 10px;
                border-collapse: separate;
            }

            @font-face {
                font-family: 'BebasNeueRegular';
                src: url('fonts/BebasNeue-webfont.eot');
                src: url('fonts/BebasNeue-webfont.eot?#iefix') format('embedded-opentype'),
                    url('fonts/BebasNeue-webfont.woff') format('woff'),
                    url('fonts/BebasNeue-webfont.ttf') format('truetype'),
                    url('fonts/BebasNeue-webfont.svg#BebasNeueRegular') format('svg');
                font-weight: normal;
                font-style: normal;

            }

            .container {width: 960px; margin: 0 auto; overflow: hidden;}

            #point { position:relative; -moz-animation:mymove 1s ease infinite; -webkit-animation:mymove 1s ease infinite; padding-left:10px; padding-right:10px; }

            @-webkit-keyframes mymove 
            {
                0% {opacity:1.0; text-shadow:0 0 20px #00c6ff;}
                50% {opacity:0; text-shadow:none; }
                100% {opacity:1.0; text-shadow:0 0 20px #00c6ff; }	
            }


            @-moz-keyframes mymove 
            {
                0% {opacity:1.0; text-shadow:0 0 20px #00c6ff;}
                50% {opacity:0; text-shadow:none; }
                100% {opacity:1.0; text-shadow:0 0 20px #00c6ff; }	
            }

        </style>
    </head>
    <body>
        <h1 style="font-family:'BebasNeueRegular'"><a href = "index.jsp">Sedap Ekspress Sdn Bhd</a><small><c:choose>  
                    <c:when test="${sessionScope.customersession == null}">>
                        <a href="#">Contact</a> | 
                        <a href="loginpage.jsp">Login</a> |
                        <a href="register.jsp">Register</a>
                    </c:when>
                    <c:when test="${sessionScope.customersession != null}">
                        <a href="GetCustomerServlet">Welcome: <c:out value="${fn:toUpperCase(sessionScope.customersession)}"/></a> | 
                        <a href="#">Contact</a> | 
                        <a href="Logout">Logout</a>
                    </c:when>
                </c:choose></small></h1>
        <h3 style="text-align: center; font-family:'BebasNeueRegular'">Your Trip is Ready</h3>
        <br/>

        <div class="container" align="center">
            <form runat="server">
                <table class="table table-hover">
                    <tr class="success">
                        <th><div style="color:black">Full Name</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.customers.fname}" /></div></td>
                    </tr>
                    
                    <tr class="success">
                        <th><div style="color:black">Origin</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.origin}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Destination</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.destination}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Depart Date</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.date}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Depart Time</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.realtime}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Seat Number</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.allseat}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">No Of Passenger</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.no}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Total Price</div></th>
                        <td class="info"><div style="color:black">RM <c:out value= "${sessionScope.price}" />0</div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Contact No</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.customers.telno}" /></div></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">E-Mail</div></th>
                        <td class="info"><div style="color:black"><c:out value= "${sessionScope.customers.email}" /></div></td>
                    </tr>
                </table>
                    <br/><br/>
                <div class="form-group" id="demo1" style="display:none;">
                    <legend><div style="color:white">Credit card payment</div></legend>
                    <p style='text-align: center'>We accept:</p>
                    <label><img src='img/cards/visae.png'/></label>
                    <label><img src='img/cards/visa.png'/></label>
                    <label><img src='img/cards/mastercard.png'/></label>
                    <label><img src='img/cards/cirrus.png'/></label>
                    <label><img src='img/cards/amex.png'/></label>
                    <label><img src='img/cards/paypal.png'/></label>
                    <input name="alasan" style="text-align:center;" type="text" class="form-control" required/>
                    <small>Your information is secure.</small>
                    <br/><br/>
                    <button type="button" class="btn btn-default" onclick="hideInput()">Back</button>
                    <button type="submit" class="btn btn-success">Pay</button>
                </div>
                    
                <div class="form-group" id="demo2" >
                    <button type="button" class="btn btn-success" onclick="showInput()">Make Payment</button>
                </div>
            </form>
        </div>

        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <center><a href ="http://ap.logout"><p>&copy; aaa</p></a></center>
                </div>
            </div>
            <!-- /.row -->
        </footer>


        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
        <script> 
            function showInput() {
                document.getElementById('demo1').style.display = 'block';
                document.getElementById('demo2').style.display = 'none';
            }

            function hideInput() {
                document.getElementById('demo1').style.display = 'none';
                document.getElementById('demo2').style.display = 'block';
            }
        </script>
        


    </body>
</html>
