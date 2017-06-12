<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExpressBus.Customer.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Express Bus</title>
    <link rel="shortcut icon" href="favicon.ico" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- font-awesome icons -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- //font-awesome icons -->

    <!-- Custom CSS -->
    <link href="../css/full-login.css" rel="stylesheet" />
    <style>
        @import url(http://fonts.googleapis.com/css?family=Roboto:400);

        body {
            background-color: #fff;
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
            from {
                color: #cc00cc;
            }

            to {
                color: #00e64d;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
            <br />
            <br />
            <h3 style="text-align: center; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;">Always There For You.</h3>
            <br />
            <div class="panel panel-default">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <div class="row">
                        <div class="alert alert-dismissible alert-danger">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Wrong username/password!</h4>
                            <p>Please enter the right username and password.</p>
                            <p>If you don't have account, please <a href="Register.aspx" class="alert-link">create new account</a>.</p>
                        </div>
                    </div>
                </asp:Panel>
                <div class="panel-heading">
                    <label style="text-align: center">Fill In Your Details</label>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Username</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtUser" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Please enter your username" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-key" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" Width="100%" CssClass="btn btn-default" OnClick="btnLogin_Click" />
                </div>

                <p style="text-align: center; color: white"><a href="Register.aspx">New in here? Click here.</a></p>
            </div>
            <br />
            <br />
        </div>

        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
    </form>
</body>
</html>