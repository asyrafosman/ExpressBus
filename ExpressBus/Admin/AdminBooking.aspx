<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBooking.aspx.cs" Inherits="ExpressBus.Admin.AdminBooking" %>


<asp:Content ID="Booking" ContentPlaceHolderID="Booking" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Customer's Booking</h3>
                </div>

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

                                    <!--Modal-->
                                    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    Confirmation
                                                </div>
                                                <div class="modal-body">
                                                    Are you sure to continue?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                    <a class="btn btn-primary btn-ok">Continue</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
