<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Student Login.aspx.cs" Inherits="Student_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
    <title>CVGClub: Student Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="container-fluid" style="font-size:17px;"><br />
        <div class="row slide">
            <div class="col-sm-4"></div>
            <div class="col-sm-4 text-center" style="background:ghostwhite;border-radius:15px;">
                <br /><h3 style="font-weight:bold;margin-top:1px;"><span class="glyphicon glyphicon-log-in"></span> Login Form</h3><hr />
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon box-txt" style="border-bottom:none!important;" id="usridaddon"><span class="glyphicon glyphicon-user"></span></span>
                        <asp:TextBox ID="emailidtxt" TextMode="Email" CssClass="form-control box-txt" placeholder="Enter Email ID" aria-describedby="usridaddon" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon box-txt" style="border-bottom:none!important;" id="usrpassaddon"><span class="glyphicon glyphicon-lock"></span></span>
                        <asp:TextBox ID="userpasstxt" TextMode="Password" CssClass="form-control box-txt" placeholder="Enter Password" aria-describedby="usrpassaddon" runat="server"></asp:TextBox>
                    </div>
                    <asp:CheckBox ID="chboxagrlogin" runat="server" Text="&nbsp; Agree" /><br />
                    <a href="Registration" title="Go for Registration" style="text-decoration:none;color:black;"><span class="glyphicon glyphicon-remove-circle"></span> Not Registered...?</a><br />
                    <a href="Forgot_Password" title="Forgot Password" style="text-decoration:none;color:black;"><span class="glyphicon glyphicon-edit"></span> Forgot Password...?</a><br /><br />
                    <asp:Button ID="btnlogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Secure Login" OnClick="btnlogin_Click" />
                    <a href="Registration" class="btn btn-warning btn-lg btn-block">Sign Up</a>
                </div>
                <h4 style="font-weight:bold">Having Trouble - <a class="btn btn-info" href="developers">Contact Us...<span class="glyphicon glyphicon-flag"></span></a></h4><br />

            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
    
    
    <!--<div class="container-fluid slide" style="min-height:85px;background:#ff7885;border-radius:10px;">
            <div class="row">
                <div class="col-sm-3" style="padding-top:22px;">
                    <p style="text-align:center;"><span class="badge" style="font-size:30px;background:gray;color:#ff7885;">SPONSORED BY <span class="glyphicon glyphicon-chevron-right"></span></span></p>
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-2 text-center" style="padding:15px 0px 15px 0px;">
                            <b><i class="fas fa-chevron-down"></i> POWERED BY</b>
                            <a href="https://www.tcsion.com/dotcom/TCSSMB/education/segment/vocationaltraining.html" target="_blank"><img src="Images/sptcs.png" style="width:90%;border-radius:5px;" /></a>
                        </div>
                        <div class="col-sm-2 text-center" style="padding:15px 0px 15px 0px;;">
                            <b><i class="fas fa-chevron-down"></i> CO-POWERED BY</b>
                            <a href="http://www.careerlauncher.com" target="_blank"><img src="Images/spcl.png" style="width:80%;" /></a>
                        </div>
                        <div class="col-sm-2 text-center"></div>
                        <div class="col-sm-2 text-center"></div>
                        <div class="col-sm-2 text-center"></div>
                    </div>
                </div>
            </div>
        </div>-->
    
    
    <br />
    <br /><br /><footer class="container-fluid text-center" style="color:white;">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
</asp:Content>

