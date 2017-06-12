<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBooking.aspx.cs" Inherits="ExpressBus.Admin.AdminBooking" %>


<asp:Content ID="Booking" ContentPlaceHolderID="Booking" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Customer's Booking</h3>
                </div>
                <!-- Table for customer-->
                <div class="panel-body panel-body-table">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-actions">
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
                                    <th>Customer ID</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>RM </td>
                                    <td></td>
                                    <td><span class="label label-warning">IN PROCESS</span></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div><!-- end Table for customer-->
            </div>

        </div>
    </div>
</asp:Content>
