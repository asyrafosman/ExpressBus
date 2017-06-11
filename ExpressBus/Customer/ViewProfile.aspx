<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="ExpressBus.Customer.ViewProfile" %>

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
                        <a href="contact.jsp">Contact</a> | 
                        <a href="loginpage.jsp">Login</a> |
                        <a href="register.jsp">Register</a>
                    </c:when>
                    <c:when test="${sessionScope.customersession != null}">
                        <a href="GetCustomerServlet">Welcome: <c:out value="${fn:toUpperCase(sessionScope.customersession)}"/></a> | 
                        <a href="contact.jsp">Contact</a> | 
                        <a href="Logout">Logout</a>
                    </c:when>
                </c:choose></small></h1>
        <h3 style="text-align: center; font-family:'BebasNeueRegular'">My Profile</h3>
        <br/>

        <div class="container" align="center">
            <form action="EditCustomerServlet" method="post">
                <table class="table table-hover">
                    <tr class="success">
                        <th><div style="color:black">Full Name</div></th>
                        <td class="info"><input type="text" class="form-control" value="<c:out value= "${sessionScope.profile.fname}" />" name="fname" /></td>
                    </tr>
                    
                    <tr class="success">
                        <th><div style="color:black">Username</div></th>
                        <td class="info"><input type="text" class="form-control" value="<c:out value= "${sessionScope.profile.uname}" />" name="uname" /></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Password</div></th>
                        <td class="info"><input type="text" class="form-control" value="<c:out value= "${sessionScope.profile.pw}" />" name="pw" /></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Contact Number</div></th>
                        <td class="info"><input type="text" class="form-control" value="<c:out value= "${sessionScope.profile.telno}" />" name="telno" /></td>
                    </tr>
                    <tr class="success">
                        <th><div style="color:black">Email</div></th>
                        <td class="info"><input type="text" class="form-control" value="<c:out value= "${sessionScope.profile.email}" />" name="email" /></td>
                    </tr>
                    
                </table>
                <div class="form-group" id="demo2" >
                    <button type="button" class="btn btn-info" onclick="showInput()">Booking History</button>
                    <button type="submit" class="btn btn-success">Update Profile</button>
                </div>
                
                <div id="demo1" style="display:none">
                    <h3 style="text-align: center; font-family:'BebasNeueRegular'">YOUR TRANSACTION HISTORY</h3>
                    <table class="table table-bordered table-actions">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Origin</th>
                                    <th>Destination</th>
                                    <th>Depart Date</th>
                                    <th>Passenger</th>
                                    <th>Seat No</th>
                                    <th>Total Price</th>
                                    <th>Depart Time</th>
                                    <th>Status</th>

                                </tr>
                            </thead>
                             <tbody>                                            
                                <c:forEach items="${sessionScope.custbook}" var="currentbooking" varStatus="loop">
                                    <tr>
                                      <td><c:out value="${loop.index + 1}" /></td>
                                      <td><c:out value="${currentbooking.origin}" /></td>
                                      <td><c:out value="${currentbooking.destination}" /></td>
                                      <td><c:out value="${currentbooking.departDate}" /></td>
                                      <td><c:out value="${currentbooking.passengerNo}" /></td>
                                      <td><c:out value="${currentbooking.seatNo}" /></td>
                                      <td>RM <c:out value="${currentbooking.price}" /></td>
                                      <td><c:out value="${currentbooking.time}" /></td>        
                                      <c:choose>
                                          <c:when test="${currentbooking.status == 0}">
                                              <c:url value="PaidBookingServlet" var="PaidBookingServletURL">
                                                      <c:param name="id"   value="${currentbooking.bookingId}" />
                                              </c:url>
                                              <td><a href="<c:out value='${PaidBookingServletURL}'/>"<span class="label label-warning">IN PROCESS</span></a></td>
                                          </c:when>

                                          <c:when test="${currentbooking.status == 1}">
                                              <td><span class="label label-success">APPROVED</span></td>
                                          </c:when>

                                          <c:when test="${currentbooking.status == 2}">
                                              <td><span class="label label-danger">CANCELED</span></td>
                                          </c:when>

                                          <c:when test="${currentbooking.status == 3}">
                                              <td><span class="label label-primary">PAID</span></td>
                                          </c:when>   

                                          <c:when test="${currentbooking.status == 4}">
                                              <td><td><span class="label label-default">DONE</span></td></td>
                                          </c:when>    
                                      </c:choose>
                                   </c:forEach>
                             </tbody>
                        </table>
                    <button type="button" class="btn btn-primary" onclick="hideInput()">Hide</button>
                </div>    
                    <br/><br/>
                
                    
                
            </form>
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
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
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
