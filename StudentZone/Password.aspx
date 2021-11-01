<%@ Page Title="" Language="C#" MasterPageFile="~/StudentZone/StudentMaster.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="StudentZone_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="conatiner-fluid slide" style="font-size:15px;">
        <div class="row">
            <div class="col-sm-4">
                
            </div>
            <div class="col-sm-4 text-center">
                <br /><h3 style="font-weight:bold;"><span class="glyphicon glyphicon-edit"></span> Reset Password</h3>
                <div class="form-group"><br />
                    <asp:TextBox ID="opasstxt" TextMode="Password" CssClass="form-control box-txt" runat="server" placeholder="Old Password" required="true"></asp:TextBox><br />
                    <asp:TextBox ID="npasstxt" TextMode="Password" CssClass="form-control box-txt" runat="server" placeholder="New Password" required="true"></asp:TextBox><br />
                    <asp:TextBox ID="repasstxt" TextMode="Password" CssClass="form-control box-txt" runat="server" placeholder="Re-enter Password" required="true"></asp:TextBox>
                    <asp:Label ID="chpaslbl" runat="server" style="color:red;"></asp:Label><br />
                    <asp:CheckBox ID="agrchbox" runat="server" Text="&ensp;Confirm" /><br />
                    <asp:Button ID="subpassbtn" class="btn btn-lg btn-warning pull-right" runat="server" Text="Reset" OnClick="subpassbtn_Click" />
                </div>
            </div>
            <div class="col-sm-4">
                
            </div>
        </div>
    </div>
</asp:Content>

