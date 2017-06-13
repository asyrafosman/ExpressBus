<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBus.aspx.cs" Inherits="ExpressBus.Admin.AdminBus" %>

<asp:Content ID="BusHeader" ContentPlaceHolderID="BusHeader" runat="server">
    Bus
</asp:Content>

<asp:Content ID="Bus" ContentPlaceHolderID="Bus" runat="server">

<div class="row">
<div class="col-md-6 col-lg-offset-3">
    <div class="panel panel-default">

        <div class="panel-heading">
            <h3 class="panel-title">ALL SEATS (Booked:
                <c:out value="${requestScope.booked}" />
                , Available:
                <c:out value="${requestScope.availablex}" />
                )</h3>
        </div>
        <div class="panel-body panel-body-table">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-actions">
                    <thead>
                        <tr>
                            <th>Seat No</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-center"></td>
                            <td class="text-center"><span class="label label-success">AVAILABLE</span></td>
                            <td class="text-center"><span class="fa fa-lock"></span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>
</asp:Content>
