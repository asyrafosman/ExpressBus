<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ExpressBus.Customer.ContactUs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" id="theme" href="../css/theme-default.css"/>

    <!-- font-awesome icons -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- //font-awesome icons -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <!-- PAGE CONTENT -->
            <div class="page-content">                                                           
                   
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-users"></span> Meet The Developer <small>4 People</small></h2>
                </div>
                <!-- END PAGE TITLE -->    
                    
                    <div class="row">
                        <div class="col-md-3">
                           <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="../img/profile/acap2.jpg" alt="John Travolta"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Asyraf Osman</div>
                                        <div class="profile-data-title">The Boss</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Matric Number</small><br/>A14CS0053</p>
                                        <p><small>Email</small><br/>asyraf@domain.com</p>
                                        <p><small>Education</small><br/>Bachelor of Science Computer (Software Engineering)</p>                                    
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="../img/profile/amir4.jpg"  alt="John Travolta"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Amiruddin Roslam</div>
                                        <div class="profile-data-title">Software Designer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Matric Number</small><br/>A14CS0068</p>
                                        <p><small>Email</small><br/>amiruddin@domain.com</p>
                                        <p><small>Education</small><br/>Bachelor of Science Computer (Software Engineering)</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="../img/profile/shah.jpg"  alt="John Travolta"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Salman Shah</div>
                                        <div class="profile-data-title">Database Engineer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Matric Number</small><br/>A14CS0080</p>
                                        <p><small>Email</small><br/>salmanshah@domain.com</p>
                                        <p><small>Education</small><br/>Bachelor of Science Computer (Software Engineering)</p>                                     
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="../img/profile/naim.jpg"  alt="John Travolta"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Na'im Mansor</div>
                                        <div class="profile-data-title">Software Engineer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Matric Number</small><br/>A14CS0079</p>
                                        <p><small>Email</small><br/>naimmansor@domain.com</p>
                                        <p><small>Education</small><br/>Bachelor of Science Computer (Software Engineering)</p>                                      
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>

                        </div>                        
                    </div>
               
                <!-- END PAGE CONTENT WRAPPER -->                                                 
            </div>            
            <!-- END PAGE CONTENT -->

         

</asp:Content>
