<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Games</title>
    <script>
        $(document).ready(function () {            
            $(".gnav li a").click(function () {
                $(".disnone").slideToggle();
            });
            $(".ltoggle").click(function () {
                $(".disnone").slideToggle();
            });
        });
    </script>
    <style>
        .pdten
        {padding:0px 0px 0px 10px;user-select:none;}
        .ghd
        {color:black;margin-bottom:20%;margin-top:10%;}
        .ghm
        {color:white;text-shadow:1px 1px 25px pink;}
        .ghd:hover,.ghm:hover
        {color:white;text-shadow:1px 1px 25px pink;}        
        @media screen and (max-width: 768px) 
          { .ghd { display:none;}}
        @media screen and (min-width: 768px) 
          { .ghm { display:none;}}
        @media screen and (max-width: 768px) 
          { .pdten { padding:10px 0px 0px 0px;}}
        @media screen and (max-width: 768px) 
          { .ldis { display:none;}}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="container-fluid slide">
        <div class="row">
            <div class="col-sm-3" style="border-radius:10px;background:#ff7885;padding-top:15px;padding-bottom:1px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">    
                        <div class="row" style="padding-top:5px;">
                            <div class="col-xs-3">
                                <div class="ldis"  style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;"><span class="glyphicon glyphicon-list-alt"></span></div>
                                <button type="button" class="navbar-toggle ltoggle">
                                <span class="glyphicon glyphicon-menu-hamburger"></span>                        
                                </button>
                            </div>
                            <div class="col-xs-9" style="margin-top:-5px;margin-left:-30px;"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Games List :</p></div>
                        </div>
                    </div>
                    <div class="panel-body" style="padding:0px;">
                        <div class="collapse navbar-collapse disnone">
                        <ul class="nav nav-pills nav-stacked gnav">
                            <li style="padding-top:15px;"><a href="#crckt" data-toggle="pill" title="Cricket"><span class="glyphicon glyphicon-hand-right"></span> Cricket</a></li>
                            <li><a href="#bskt" data-toggle="pill" title="Basketball"><span class="glyphicon glyphicon-hand-right"></span> Basketball</a></li>
                            <li><a href="#vlly" data-toggle="pill" title="Volleyball"><span class="glyphicon glyphicon-hand-right"></span> Volleyball</a></li>
                            <li><a href="#bdmntn" data-toggle="pill" title="Badminton"><span class="glyphicon glyphicon-hand-right"></span> Badminton</a></li>
                            <li><a href="#crm" data-toggle="pill" title="Carrom Board"><span class="glyphicon glyphicon-hand-right"></span> Carrom Board</a></li>
                            <li><a href="#chss" data-toggle="pill" title="Chess Board"><span class="glyphicon glyphicon-hand-right"></span> Chess Board</a></li>
                            <li style="padding-bottom:15px;"><a href="#tbltns" data-toggle="pill" title="Table Tenis"><span class="glyphicon glyphicon-hand-right"></span> Table Tenis</a></li>
                        </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-9 pdten">
                <div style="border-radius:10px;background:#ff7885;padding:15px;">
                <div class="tab-content">
                    <div id="def" class="tab-pane fade in active">
                        <div class="text-center">
                                <div class="ghd slide">
                                    <h1 style="font-size:200px;font-weight:bold;font-family:Jokerman;">Games</h1>
                                    <div style="margin-top:-15px;font-family:'Old English Text MT';font-size:25px;font-weight:bold;"><a href="#" class="ghd" title="SCRIET Official" target="_blank" style="text-decoration:none;">@ Sir Chhotu Ram Institute of Engineering & Technology</a></div>
                                </div>
                                <div class="ghm slide">
                                    <h1 style="font-size:85px;font-weight:bold;margin-top:50%;font-family:Jokerman;">Games</h1>
                                    <div style="margin-top:-10px;margin-bottom:50%;font-family:'Old English Text MT';font-size:15px;">@ Sir Chhotu Ram Institute of Engineering & Technology</div>
                                </div>                                
                            </div>
                        </div>
                    <div id="crckt" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Cricket :</p></div>
                            <div class="panel-body">
                            <div class="col-sm-7">
                                <h3>Rules For Speech:</h3>
                                <blockquote style="border-color:lightblue;">
                                <p class="ev-rule-txt">
                                    <span class="glyphicon glyphicon-arrow-right"></span> The topic will be disclosed beforehand.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either Hindi or English language.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Each candidate would be given 3 minutes to deliver his speech.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> A warning bell would be rung after 2 mins.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Anything said after warning bell would not be considered.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Negative marking will be done for taking extra time.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />
                                </p></blockquote>
                                <h3>Rules For Turncoat:</h3>
                                <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                    <span class="glyphicon glyphicon-arrow-right"></span> Topics will be disclosed beforehand.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Each speaker will have to speak for 4min 30 sec on the given topic.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> The order or changing side is as follows:<br />
                                    &nbsp&nbsp&nbsp&nbsp&nbsp A) 2 min for the motion.<br />
                                    &nbsp&nbsp&nbsp&nbsp&nbsp B) 2 min against the topic.<br />
                                    &nbsp&nbsp&nbsp&nbsp&nbsp C) 30 sec to present the summary.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> First bell will be rung after 2 min which indicates to change the motion whereas the second bell would be rung after 4 min ,so that you can start summing up your views .<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Negative marking will be done for taking extra time.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />
                                </p></blockquote>
                                <h3>Rules For Mad Ad:</h3>
                                <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                    <span class="glyphicon glyphicon-arrow-right"></span> Topic will be given on spot.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> You will be given 2 min to think and 2 min to perform on the stage.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> You will be given the name of product which you have to advertise.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> You can’t use any brands name which are in the market.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Try to opt for desi name marketing style.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> warning bell will to rung after 1min 30 sec.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Negative marking will be done for taking extra time.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> You can use taglines & short poems to advertise, singing is also allowed.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> No vulgar language is allowed.<br />
                                    <span class="glyphicon glyphicon-arrow-right"></span> Decision of the judges will be abided.<br />
                                </p></blockquote>
                            </div>

                            <div class="col-sm-5 text-center">
                                <h3 style="color:red!important;">Topic for Speech</h3>
                                <p class="ev-rule-txt">Garbage Managment</p>
                                <h3 style="color:red!important;">Topic for Turncoat</h3>
                                <p class="ev-rule-txt">
                                    1.Reel Life vs Real Life<br />
                                    2.Android Phone vs iOS Phones<br />
                                    3.Traditional Books vs Ebooks<br />
                                    4.Role of Journalism in shaping nation<br />
                                    [ NOTE: Choose any one. ]
                                </p>
                                <h3 style="color:red!important;">Topic for Mad Ad</h3>
                                <p class="ev-rule-txt">Topic will be given on spot.</p>
                                    <br /><h3>Core Member</h3>
                                    <p class="ev-rule-txt">
                                        <a href="#" style="text-decoration:none;" target="_blank">Sidhantika</a><br />
                ​                        <a href="#" style="text-decoration:none;" target="_blank">Hitendra Awasthi</a><br />
                                        <a href="#" style="text-decoration:none;" target="_blank">Rashmi Rupam</a><br />
                                        <a href="#" style="text-decoration:none;" target="_blank">Prashant Patel</a><br />
                                        <a href="#" style="text-decoration:none;" target="_blank">Deeksha Chaturvedi​</a><br />
                                        <a href="#" style="text-decoration:none;" target="_blank">Mudit Shrivastav</a>
                                    </p>
                                    <h3>Event Details</h3>
                                    <p class="ev-rule-txt">
                                        Akash Kumar Jaiswal<br />
                                        Akash Kumar Jaiswal<br />
                                        Akash Kumar Jaiswal<br />
                                        Akash Kumar Jaiswal<br />
                                        Akash Kumar Jaiswal<br />
                                        Akash Kumar Jaiswal<br />
                                    </p>
                                    <br /><br /><button type="button" data-toggle="modal" data-target="#aposkills" class="btn btn-success btn-block btn-lg">Apply for Cricket</button><br />
                                    <div class="modal fade" id="aposkills" role="dialog">
                                        <div class="modal-dialog">
                                            <div class="modal-content"style="background:#f2f2f2!important;">
                                                <br /><div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                </div>
                                                <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                    <p style="font-weight:bold;">Fill the Creditionals for Cricket</p>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="etcrckt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                        <asp:TextBox ID="ptcrckt" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>                                                        
                                                        <br /><asp:CheckBox ID="chboskills" runat="server" Text=" &ensp;I have read Rules" />
                                                        <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                        <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                        <br /><br /><asp:Button ID="regcrckt" CssClass="btn btn-success pull-left" runat="server" Text="Apply" /><br />
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div id="bskt" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Basketball :</p></div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div id="vlly" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Volleyball :</p></div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div id="bdmntn" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Badminton :</p></div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div id="crm" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Carrom Board :</p></div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div id="chss" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Chess Board :</p></div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div id="tbltns" class="tab-pane fade">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Table Tenis :</p></div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
    <br /><br /><footer class="container-fluid text-center" style="color:white;">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
</asp:Content>

