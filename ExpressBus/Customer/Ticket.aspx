<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="ExpressBus.Customer.Ticket" %>

<!Doctyle HTML>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Sedap Ekspess Sdn Bhd</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
       body {
	 background-color: #e0e1e2;
	 font-family: 'Open Sans', sans-serif;
}

h1 {
	font-size: 34px;
	margin: 0;
	font-weight: 600;
}

h3 {
	font-size: 16px;
	margin: 0;
	font-weight: 700;
}

h4 {
	font-size: 11px;
	margin: 0;
	font-weight: 400;
}

h5 {
	font-size: 11px;
	font-weight: 600;
	margin: 25px 0 25px 0;
}

h6 {
	font-weight: 600;
	margin: 0;
}

.container {
	margin: 0 auto;
        width: 300px;
        background-color: white;
        position: relative;
        overflow: hidden;
}

.first {
	margin-top: 70px;
	height: 300px;
}

.second {
	margin-top: 0px;
	height: 120px;
	border-top: 1px solid #e0e1e2;
}

.top {
	top: -10px;
	position: absolute;
        width: 18px;
        height: 18px;
        border-radius: 100%;
        background-color: #e0e1e2;
}
.bottom {
	bottom: -10px;
	position: absolute;
        width: 18px;
        height: 18px;
        border-radius: 100%;
        background-color: #e0e1e2;
}
.left {
	left: -10px;
	position: absolute;
        width: 18px;
        height: 18px;
        border-radius: 100%;
        background-color: #e0e1e2;
}
.right {
	right: -10px;
	position: absolute;
        width: 18px;
        height: 18px;
        border-radius: 100%;
        background-color: #e0e1e2;
}

.spacer {
	padding: 25px 20px 20px 20px;
}

.spacer2 {
	padding: 15px 20px 20px 20px;
}

.spacer > img {
	width: 57px;
	float: left;
	padding-right: 30px;
}

.name-flight {
	float: left;
}

.name-flight > h3 {
	text-transform: uppercase;
	color: #4b4091;
}

.name-flight > h4 {
	color: #7c7c7c;
	margin-top: -5px;
}

h4 > span {
	font-size: 15px;
	font-weight: 700;
	color: #d9118d;
}

.destination {
	margin-top: 70px;
}

.from {
	float: left;
	width: 33%;
	color: #5d6474;
}

.center {
	float: left;
	width: 33%;

}

i {
	color: #5d6474;
	padding-top: 15px;
	padding-left: 25%;
}

.to {
	float: left;
	width: 33%;
	color: #5d6474;
}

.from > span {
	font-size: 12px;
	font-weight: 600;
}

.to > span {
	font-size: 12px;
	font-weight: 600;
}

.left-side {
	float: left;
	width: 33%;
}

h5 > span {
	font-weight: 700;
	font-size: 15px;
	color: #da0d8d;
}


.right-side {
	float: right;
	width: 33%;
}

h5 {
	color: #5e6675;
}

.spacer2 > h3 {
	color: #4b4091;
	text-transform: uppercase;
	text-align: center;
}

.flight-gate {
	float: left;
	width: 66%;
	margin-top: 15px;
}

.flight-gate > h5 {
	margin: 0 0 5px 0;
}

.text-barcode > img {
	float: left;
	width: 33%;
	margin-top: 5px;
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
    </style>
<head>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
    <div class="container first">
        <div class="top left corner"></div>
        <div class="top right corner"></div>
        <div class="bottom left corner"></div>
        <div class="bottom right corner"></div>
        <div class="spacer">
            <%--<img src="https://p1.picsto.re/Ys0k2.jpg">--%>
                <h3 style="font-family:'BebasNeueRegular'">SEDAP EKSPRESS</h3>
            <div class="name-flight">
                <h3>Gaben</h3>
                <h4>Bus: <span>JJJ 1234</span></h4>
                        
            </div>
            <div class="destination">
                <div class="from">
                    <h1>ORG</h1>
                                <h6>KUL</div></h6>
                </div>
                <div class="center">
                    <i class="material-icons">arrow_forward</i>
                </div>
                <div class="to">
                    <h1>DST</h1>
                    <h6>KUL</h6>
                </div>
            </div>
            <div class="details">
                <div class="left-side">
                    <h5>Date:22/6/2017</span></h5>
                    <h5>Price: </br><span>RM220</span></h5>
                </div>
                <div class="right-side">
                    <h5>Depart:12AM</span></h5>
                    <h5>Seat:</br><span>19</span></h5>
                </div>
            </div>
        </div>
    </div>
    <div class="container second">
        <div class="top left"></div>
        <div class="top right"></div>
        <div class="bottom left"></div>
        <div class="bottom right"></div>
        <div class="spacer2">
            <h3>Gaben</h3>
            <div class="text-barcode">
                <div class="flight-gate">
                    <h5>Bus: <span>JJJ 1234</span></h5>
                    <h5>Contact No: 0198578754</h5>
                </div>
                <img src="https://p1.picsto.re/jXKTO.jpg">
            </div>
        </div>
    </div>
</body>
    <div class="container" align="center">
        <h4><a href="index.jsp">Back</a></h4>
        <script>
            alert("Please print your ticket.");
        </script>
    <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        
    
</html>
