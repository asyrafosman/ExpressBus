<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ExpressBus.Customer.Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Express Bus</title>
    <link rel="shortcut icon" href="favicon.ico" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- font-awesome icons -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- //font-awesome icons -->

    <!-- Custom CSS -->
    <link href="css/full-register.css" rel="stylesheet" />
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
                <div class="panel-heading">
                    <label style="text-align: center">Fill In Your Details</label>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Full Name</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-heart" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtFullName" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please enter your full name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtUserName" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName" ErrorMessage="Please enter your username" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-key" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:ScriptManager runat="server"></asp:ScriptManager>
                        <ajaxToolkit:PasswordStrength ID="txtPassword_PasswordStrength" runat="server" TargetControlID="txtPassword" DisplayPosition="BelowLeft" />
                    </div>
                    <div class="form-group">
                        <label>Contact Number</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtContactNo" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Please enter your contact number" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            </span>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid email</asp:RegularExpressionValidator>
                    </div>
                    <asp:Button ID="btnRegister" runat="server" Text="REGISTER" class="btn btn-default" Width="100%" OnClick="btnRegister_Click" />
                </div>
                <p style="text-align: center; color: white"><a href="Login.aspx">Already have account? Click here.</a></p>
            </div>
        </div>

        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
    </form>
</body>
</html>