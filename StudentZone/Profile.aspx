<%@ Page Title="" Language="C#" MasterPageFile="~/StudentZone/StudentMaster.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="StudentZone_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Student Profile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="container-fluid slide" style="font-size:17px;">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 form-group">
                <h3 style="font-weight:bold;text-align:center;"><span class="glyphicon glyphicon-list-alt"></span> Profile ( Read Only )</h3><br />
                <div class="row">
                    <div class="col-xs-6">
                        <label for="fname">First Name:</label>
                        <asp:TextBox ID="fname" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="lname">Last Name:</label>
                        <asp:TextBox ID="lname" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-xs-6">
                        <label for="dob">Date of Birth (YYYY/MM/DD):</label>
                        <asp:TextBox ID="dob" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="gender">Gender:</label>
                        <asp:TextBox ID="gender" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-xs-6">
                        <label for="branch">Branch/Stream:</label>
                        <asp:TextBox ID="branch" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="contact">Year:</label>
                        <asp:TextBox ID="year" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-xs-6">
                        <label for="email">College:</label>
                        <asp:TextBox ID="clgname" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="contact">Contact:</label>
                        <asp:TextBox ID="contact" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-xs-12">
                        <label for="email">Email ID:</label>
                        <asp:TextBox ID="email" CssClass="form-control dis-box-txt" runat="server" disabled="true"></asp:TextBox>
                    </div>
                </div>
                <br /><br /><a class="btn btn-lg pull-right btn-info" href="Student_Home"><span class="glyphicon glyphicon-check"></span> All Right</a>
                <a class="btn btn-lg pull-left btn-warning" href="Developers" target="_blank"><span class="glyphicon glyphicon-alert"></span> &ensp;Something wrong</a>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
</asp:Content>

