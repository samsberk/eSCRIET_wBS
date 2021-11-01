<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="FPassword.aspx.cs" Inherits="FPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Forgot Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="container-fluid" style="font-size:17px;"><br /><br />
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4 text-center" style="background:ghostwhite;border-radius:15px;">
                <br /><h2 style="font-weight:bold;"><span class="glyphicon glyphicon-edit"></span> Reset Password</h2><hr />
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon box-txt" title="Email ID" style="border-bottom:none!important;" id="fpemailaddon"><span class="glyphicon glyphicon-envelope"></span></span>
                        <asp:TextBox ID="emailidtxt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" aria-describedby="fpemailaddon" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group" title="10 Digit Contact Number">
                        <span class="input-group-addon box-txt" style="border-bottom:none!important;" id="fpfonaddon"><span class="glyphicon glyphicon-phone"></span></span>
                        <asp:TextBox ID="contxt" TextMode="Number" CssClass="form-control box-txt" placeholder="10 digit Contact Number" aria-describedby="fpfonaddon" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group" title="Date of Birth">
                        <span class="input-group-addon box-txt" style="border-bottom:none!important;" id="dobaddon"><span class="glyphicon glyphicon-calendar"></span></span>
                        <asp:TextBox ID="dobtxt" TextMode="Date" CssClass="form-control box-txt" placeholder="Date of Birth" aria-describedby="dobaddon" runat="server"></asp:TextBox>
                    </div>
                    <asp:CheckBox ID="chboxfp" runat="server" Text="&nbsp; Agree" /><br />
                    <a href="Registration" title="Go for Registration" style="text-decoration:none;color:black;"><span class="glyphicon glyphicon-remove-circle"></span> Not Registered...?</a><br />
                    <a href="Login" title="Go for Login" style="text-decoration:none;color:black;">Login <span class="glyphicon glyphicon-log-in"></span></a><br /><br />                    
                    <asp:Button ID="btnreset" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Send Temporary Password" OnClick="btnreset_Click" /><br />
                </div>

            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
    <script>
        $("#contxt").blur(function () {
            var c = document.getElementById("contxt");
            if (c.value < 1000000000 || c.value > 9999999999) {
                alert("Enter 10 digit Only");
                c.value = "";
            }
        });
        $(function () {
            $("#btnreset").attr("disabled", true);
            $("#btnreset").val("Please agree before submit");
            $("#chboxfp").bind("change", function () {
                var chk = document.getElementById("chboxfp");
                var e = document.getElementById("emailidtxt");
                var c = document.getElementById("contxt");
                var d = document.getElementById("dobtxt");
                if (chk.checked == true) {
                    if (e.value == "") {
                        alert("Please enter registered Email ID first.");
                        chk.checked = false;
                    }
                    else if (c.value == "") {
                        alert("Please enter registered contact no first.");
                        chk.checked = false;
                    }
                    else if (d.value == "") {
                        alert("Please select date of birth first.");
                        chk.checked = false;
                    }
                    else {
                        $("#btnreset").attr("disabled", false);
                        $("#btnreset").val("Send Temporary Password");
                    }
                }
                else {
                    $("#btnreset").attr("disabled", true);
                    $("#btnreset").val("Please agree T&C before submit");
                }
            });
        });
    </script>
</asp:Content>

