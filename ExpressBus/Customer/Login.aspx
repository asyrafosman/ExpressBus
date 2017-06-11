<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExpressBus.Customer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Sedap Ekspess Sdn Bhd</title>
    <link rel="shortcut icon" href="favicon.ico" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>

    <link href="../font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="../css/full-login.css" rel="stylesheet"/>
    <style>
        
        @import url(http://fonts.googleapis.com/css?family=Roboto:400);
        body {
          background-color:#fff;
          -webkit-font-smoothing: antialiased;
          font: normal 14px Roboto,arial,sans-serif;
        }
        h3 {            
            color: red;
            animation-name: example;
            animation-duration: 3s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
        }

        /* Standard syntax */
        @keyframes example {
            from {color: #cc00cc;}
            to {color: #00e64d;}
        }

    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


    <div class="container col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
            <br />
            <br />
            <h3 style="text-align: center; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;">Always There For You.</h3>
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 style="text-align: center">Fill In Your Details</h4>
                </div>
                <form action="LoginServlet" method="post">
                    <div class="panel-body">
                        <div class="form-group">
                        <label>Username</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-circle-o" style="width: auto"></i>
                                </span>
                                <input type="text" name="username" required class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                        <label>Password</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-key" style="width: auto"></i>
                                </span>
                                <input type="password" name="password" required class="form-control"/>
                            </div>
                        </div>
                        <button id="btnLogin" runat="server" class="btn btn-default" style="width: 100%">
                            LOGIN
                        </button>
                    </div>
                </form>
                <p style="text-align: center; color: white"><a href="register.jsp">New in here? Click here.</a></p>
            </div>
            <br /><br />
            <footer>
                <p style="text-align: center; color: white">&copy;</p>
            </footer>
            
        </div>

    
    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    
</body>

</html>