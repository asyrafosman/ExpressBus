<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminStation.aspx.cs" %>

<asp:Content ID="StationHeader" ContentPlaceHolderID="StationHeader" runat="server">
    Station
</asp:Content>

<asp:Content ID="Station" ContentPlaceHolderID="Station" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-heading">
                    <h3 class="panel-title">Bus Stations</h3>
                </div>

                <div class="panel-body panel-body-table">

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-actions">
                            <thead>
                                <tr>
                                    <th width="50">No.</th>
                                    <th>Name</th>
                                    <th width="100">Image</th>
                                    <th width="100">Status</th>
                                    <th width="100">Enable/Disable</th>
                                    <th width="150">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center"></td>
                                    <td><strong></strong></td>
                                    <td></td>
                                    <td class="text-center"><span class="label label-danger">NOT ACTIVE</span></td>
                                    <td class="text-center">Enable</td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>                                

                </div>
            </div>                                                

        </div>
    </div>
</asp:Content>
