<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCustomer.aspx.cs" Inherits="ExpressBus.Admin.AdminCustomer" %>

<asp:Content ID="CustomerHeader" ContentPlaceHolderID="CustomerHeader" runat="server">
    Customer
</asp:Content>
<asp:Content ID="Customer" ContentPlaceHolderID="Customer" runat="server">

    <div class="row">
        <div class="col-md-12">

            <!-- START DEFAULT DATATABLE -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table datatable">
                            <thead>
                                <tr>
                                    <th width="50">No</th>
                                    <th>Customer ID</th>
                                    <th>Full Name</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Contact No</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center"></td>
                                    <td class="text-center">27890</td>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                    <td class="text-center"><span class="label label-default">Customer</span></td>
                                    <td class="text-center"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- END DEFAULT DATATABLE -->

         </div>
      </div>
</asp:Content>

