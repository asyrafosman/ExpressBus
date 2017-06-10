<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectBus.aspx.cs" Inherits="ExpressBus.Customer.SelectBus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Sedap Ekspess Sdn Bhd</title>
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

            .clock {width:800px; margin:0 auto; padding:30px; border:1px solid #333; color:#fff; }

            #Date { font-family:'BebasNeueRegular', Arial, Helvetica, sans-serif; font-size:36px; text-align:center; text-shadow:0 0 5px #00c6ff; }

            ul { width:735px; margin:0 auto; padding:0px; list-style:none; text-align:center; }
            ul li { display:inline; font-size:10em; text-align:center; font-family:'BebasNeueRegular', Arial, Helvetica, sans-serif; text-shadow:0 0 5px #00c6ff; }

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
    </head>
    <body>
        <h1 style="font-family:'BebasNeueRegular'">Sedap Ekspress Sdn Bhd<small><c:choose>  
                    <c:when test="${sessionScope.customersession == null}">
                        <a href="contact.jsp">Contact</a> | 
                        <a href="loginpage.jsp">Login</a> |
                        <a href="register.jsp">Register</a>
                    </c:when>
                    <c:when test="${sessionScope.customersession != null}">
                        <a href="#">Welcome: <c:out value="${fn:toUpperCase(sessionScope.customersession)}"/></a> | 
                        <a href="contact.jsp">Contact</a> | 
                        <a href="Logout">Logout</a>
                    </c:when>
                </c:choose></small></h1>
        <div class="container">
            <div class="clock">
                <div id="Date"></div>

                <ul>
                    <li id="hours"> </li>
                    <li id="point">:</li>
                    <li id="min"> </li>
                    <li id="point">:</li>
                    <li id="sec"> </li>
                </ul>

            </div>
        </div>

        <h3 style="text-align: center; font-family:'BebasNeueRegular'">Available Trip for You</h3>


        <div style="margin-top: 25px">
            <div class="container">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr class="active">
                            <th><div style="color:black">No</div></th>
                            <th><div style="color:black">Date</div></th>
                            <th><div style="color:black">Time</div></th>
                            <th><div style="color:black">Origin</div></th>
                            <th><div style="color:black">Destination</div></th>
                            <th><div style="color:black">Available seat</div></th>
                            <th><div style="color:black">Book</div></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td><div style="color:black">1</div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.date}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.time1}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.origin}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.destination}" /></div></td>
                            <td><div style="color:black"><c:out value= "${requestScope.available}" /></td>
                            <td><div style="color:black"><a href="InsertTimeServlet?time=<c:out value= '${sessionScope.time1}' />" class="btn btn-primary btn-xs">Select Seat</a></div></td>
                        </tr>
                        <tr class="danger">
                            <td><div style="color:black">2</div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.date}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.time2}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.origin}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.destination}" /></div></td>
                            <td><div style="color:black">FULL</div></td>
                            <td><div style="color:black"><button class="btn btn-primary btn-xs" data-href="InsertTimeServlet?time=<c:out value= '${sessionScope.time1}' />" disabled>Select Seat</button></div></td>
                        </tr>
                        <tr class="danger">
                            <td><div style="color:black">3</div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.date}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.time3}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.origin}" /></div></td>
                            <td><div style="color:black"><c:out value= "${sessionScope.destination}" /></div></td>
                            <td><div style="color:black">FULL</div></td>
                            <td><div style="color:black"><button class="btn btn-primary btn-xs" data-href="InsertTimeServlet?time=<c:out value= '${sessionScope.time1}' />" disabled>Select Seat</button></div></td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>
        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <center><a href ="http://ap.logout"><p>&copy; aa</p></a></center>
                </div>
            </div>
            <!-- /.row -->
        </footer>


        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>
