<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Events</title>
    <script>
        $(document).ready(function () {            
            $(".gnav li a").click(function () {
                $(".disnone").slideToggle("slow");
            });
            $(".ltoggle").click(function () {
                $(".disnone").slideToggle("slow");
            });
        });
    </script>
    <style>
        .pdten
        {padding:0px 0px 0px 10px;user-select:none;}
        .ghd
        {color:black;margin-bottom:20%;margin-top:11%;}
        .ghm
        {color:white;text-shadow:1px 1px 25px pink;}
        .ghd:hover,.ghm:hover
        {color:white;text-shadow:1px 10px 25px pink;}        
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
            <div class="col-md-3 ev-list" style="border-radius:10px;background:#ff7885;padding-top:15px;padding-bottom:1px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">    
                        <div class="row" style="padding-top:5px;">
                            <div class="col-xs-3">
                                <div class="ldis"  style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;"><span class="glyphicon glyphicon-list-alt"></span></div>
                                <button type="button" class="navbar-toggle ltoggle">
                                <span class="glyphicon glyphicon-menu-hamburger"></span>                        
                                </button>
                            </div>
                            <div class="col-xs-9" style="margin-top:-5px;margin-left:-40px;">
                                <p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Event List :</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body" style="padding-top:0px;padding-bottom:0px;">
                        <div class="collapse navbar-collapse disnone">                            
                            <ul class="nav nav-pills nav-stacked gnav">
                                <li style="padding-top:15px;"><a href="#oskills" data-toggle="pill" title="Oratory Skills"><span class="glyphicon glyphicon-hand-right"></span> Odyssey</a></li>
                                <li><a href="#quiz" data-toggle="pill" title="Quiz"><span class="glyphicon glyphicon-hand-right"></span> Enquizitia</a></li>
                                <li><a href="#pgraphy" data-toggle="pill" title="Photography"><span class="glyphicon glyphicon-hand-right"></span> Photography</a></li>
                                <li><a href="#pptcomp" data-toggle="pill" title="PPT Competition"><span class="glyphicon glyphicon-hand-right"></span> PPT Competition</a></li>
                                <li><a href="#mmaking" data-toggle="pill" title="Model Making"><span class="glyphicon glyphicon-hand-right"></span> Modek Battlefield</a></li>
                                <li><a href="#lang" data-toggle="pill" title="LAN Gaming"><span class="glyphicon glyphicon-hand-right"></span> Lantastic</a></li>
                                <li><a href="#thunt" data-toggle="pill" title="Treasure Hunt"><span class="glyphicon glyphicon-hand-right"></span> Treasure Hunt</a></li>
                                <li><a href="#docvideos" data-toggle="pill" title="Documentary Video"><span class="glyphicon glyphicon-hand-right"></span> Documentary Video</a></li>
                                <li><a href="#codehunt" data-toggle="pill" title="Code Hunt"><span class="glyphicon glyphicon-hand-right"></span> Code Hunt</a></li>
                                <li><a href="#aattack" data-toggle="pill" title="Art Attack"><span class="glyphicon glyphicon-hand-right"></span> Art Attack</a></li>
                                <li><a href="#poetry" data-toggle="pill" title="Poetry"><span class="glyphicon glyphicon-hand-right"></span> Poetry</a></li>
                                <li><a href="#wskills" data-toggle="pill" title="Writing Skills"><span class="glyphicon glyphicon-hand-right"></span> Lekha</a></li>
                                <li style="padding-bottom:15px;"><a href="#minimi" data-toggle="pill" title="Minimilitia"><span class="glyphicon glyphicon-hand-right"></span> Minimilitia</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9 pdten" style="padding-bottom:1px;">
                <div style="border-radius:10px;background:#ff7885;padding:15px;">
                    <div class="tab-content">
                        <div class="tab-pane fade in active">
                            <div class="text-center">
                                <div class="ghd slide">
                                    <h1 style="font-size:200px;font-family: 'Freckle Face', cursive;">Events</h1>
                                    <div style="margin-top:-15px;font-family: 'Hi Melody', cursive;font-size:35px;font-weight:bold;"><a href="#" class="ghd" title="SCRIET Official" target="_blank" style="text-decoration:none;">@ Sir Chhotu Ram Institute of Engineering & Technology</a></div>
                                </div>
                                <div class="ghm slide">
                                    <h1 style="font-size:85px;margin-top:50%;font-family: 'Freckle Face', cursive;">Events</h1>
                                    <p style="margin-top:-10px;margin-bottom:50%;font-family: 'Hi Melody', cursive;font-size:20px;">@ Sir Chhotu Ram Institute of Engineering & Technology, Meerut</p>
                                </div>                                
                            </div>
                        </div>
                        <div id="oskills" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Odyssey :</p></div>
                            <div class="row">
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
                                    <h3>Rules For Debate (Hindi/English):</h3>
                                    <blockquote style="border-color:lightblue;">
                                    <p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> A College/Institution can send one team comprising of 2 speakers boys, girls or both.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The medium of expression will be Hindi/English. One speaker shall speak for the motion and the other<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> against. It must be intimated to the Stage Secretary before the commencement of the competition.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The programme and the participants shall speak after drawing lots to decide, who is to speak first, second and so on.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The time allotted to each participant is not less than 3 minutes and not more than 5 minutes.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only two best speakers one for the motion and other against the motion will be recommended from each zone.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The first speaker will be the leader of the house and he/she also wind up the Debate.<br />
                                    </p></blockquote>
                                </div>

                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Topic for Speech</h3>
                                    <p class="ev-rule-txt">
                                        1 : What are the main factors behind low medal tally of India in olympics.<br />
                                        2 : Celebrities who break the low should recieve the stiffer penalities.<br />
                                        3 : Role of Indian Media in shaking public opinian.<br />
                                        [ NOTE: Choose any one. ]
                                    </p>
                                    <h3 style="color:red!important;">Topic for Turncoat</h3>
                                    <p class="ev-rule-txt">
                                        1 : Ghosts are not real<br />
                                        2 : Euthenesia vs right to live<br />
                                        3 : Windows vs Mac<br />
                                        4 : Indian youth are less creative<br />
                                        [ NOTE: Choose any one. ]
                                    </p>
                                    <h3 style="color:red!important;">Topic for Debate</h3>
                                    <p class="ev-rule-txt">
                                        1 : Should abortion be legal?<br />
                                        2 : Is a college education worth it?<br />
                                        3 : Should death penalty be allowed?<br />
                                        [ NOTE: Choose any one. ]
                                    </p>
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Rashmi Rupam<br />
                                            Arpit Malik<br />
                                            Swatantra Gupta<br />
                                            <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                        </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : EC Seminar Hall<br />
                                            Time : 9:45 AM to 11:45 AM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#aposkills" class="btn btn-success btn-block btn-lg">Apply for Odyssey</button><br />
                                        <div class="modal fade" id="aposkills" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Odyssey</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etoskills" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptoskills" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <asp:CheckBox ID="spchoschbox" runat="server" Text="&ensp;Speech" />&emsp;<asp:CheckBox ID="trnctoschbox" runat="server" Text="&ensp;Turncoat" />&emsp;<asp:CheckBox ID="mdadoschbox" runat="server" Text="&ensp;Debate" />
                                                            <br /><asp:CheckBox ID="chboskills" runat="server" Text=" &ensp;I have read Rules" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regoskills" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regoskills_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="quiz" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Enquizitia :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Quiz:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only team entries are allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> You have to register individually.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> A team shall consist of two persons (BOTH SHOULD BE FROM SAME BRANCH).<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Participation should be of same branch/college. (can be 1 or more teams)<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The decision of the quiz master will be final and will NOT be subjected to any change.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Participants shall NOT be allowed to use phones or any other electronic devices.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Audience shall NOT give any type of hints to the competitors.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If any teams use unfair means, it would be immediately disqualified from the competition.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Replacement of any participants of a team is NOT allowed after registration.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Passing of questions are allowed and bonus marks will be given for it.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Topic for Enquizitia</h3>
                                    <p class="ev-rule-txt">General, Technical & Sports</p>
                                    
                                    <br /><h3>Core Member</h3>
                                    <p class="ev-rule-txt">
                                        Aslam Ahmed Khan<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                    <h3>Event Details</h3>
                                    <p class="ev-rule-txt">
                                        Date : 21<sup>st</sup> April<br />
                                        Venue : EC Seminar Hall<br />
                                        Time : 12:00 PM to 3:00 PM<br />
                                    </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                    <br /><br /><button type="button" data-toggle="modal" data-target="#apquiz" class="btn btn-success btn-block btn-lg">Apply for Enquizitia</button><br />
                                        <div class="modal fade" id="apquiz" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Enquizitia</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etquiz" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server" ></asp:TextBox>
                                                            <asp:TextBox ID="ptquiz" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server" ></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbquiz" runat="server" Text=" &ensp;I have read Rules for Enquizitia" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regquiz" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regquiz_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="pgraphy" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">ZoomIn :</p></div> 
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Photography:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Each participant has to give one main photograph which can be complemented by one or two more photographs showing the different views of that main photograph.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only the photographs sent to us would be valid. Any other sources would not be accepted.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The photograph should not be edited with the help of any software or application. Each photograph must be clicked from mobile phones. In case any of the above rules are neglected, such photographs would be disqualified.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Each photograph must have a story within it. The points would be granted equally on basis of photography as well as story behind it.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> In case you are selected, you have to explain what does that picture means for you and why you took it.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If any type of misbehaviour or indiscipline would be noticed, the contestant would be immediately disqualified.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If any type of misbehavior or indiscipline is noticed<br /> participants would be disqualified immediately.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The decision of the judges will be final.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> You have to give the caption below the photographs that why yo took it?<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The contestants will send the final photographs to Akhil Yadav on his e-mail id is "akhilyaduvanshi13@gmail.com".<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Last date of submission is 20th of April 2017 till 11:59 PM.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Theme for ZoomIn</h3>
                                    <p class="ev-rule-txt">
                                        Street Photography<br /><br />
                                        <span class="glyphicon glyphicon-asterisk"></span> What is street Photography – Street photography is also termed as candid photography sometimes whose main purpose is to capture random beauty, event or random incidents happening within public places in a quite artistic way. <span class="glyphicon glyphicon-asterisk"></span>
                                    </p>
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Akhil Yadav<br />
                    ​                        Prabhat Sagar<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : CS-IT Lab-2<br />
                                            Time : 1:30 PM to 3:30 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#appgraphy" class="btn btn-success btn-block btn-lg">Apply for ZoomIn</button><br />
                                        <div class="modal fade" id="appgraphy" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for ZoomIn</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etpgraphy" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server" ></asp:TextBox>
                                                            <asp:TextBox ID="ptpgraphy" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server" ></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbpgraphy" runat="server" Text=" &ensp;I have read Rules for ZoomIn" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regpgraphy" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regpgraphy_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="pptcomp" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">PPT Competition :</p></div> 
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For PPT Competition:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> All the participants are allowed to use maximum of 15 slides in their PowerPoint presentation.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The participants should make their Title headlines.<br />
                                        &ensp; For Example:- Population Growth (Description)  /  Population grow by 40% (Headline).<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The titles Used by The participants must tell the topics.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The presenter must use the proper language skills to make the audience and judges to get the theme correctly and clearly.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> It can be in Both Hindi and English (prefer English if you can).<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The participant is asked to bring their P.P.T file either in the DVD or pen drives so that in the case of data loss it can be used to show your presentation slides. Or else you are allowed to carry your own laptops to show your own P.P.T slides.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The participant should have a proper dress up and body language, any vulgar behavior is not at all tolerated.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If anybody was found doing that his/her name is removed from participant list.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The participant must complete his/her presentation in the allotted time period only as per rules.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No extra time is given and no excuses are heard.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The participant should give their names with the topic of presentation to the event in charge by one week before the event.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The participant should be present in the event venue, an hour before it was started over.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> It was allowed to give presentation at the time of his/her turn only.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> All the audiences are asked to “KEEP PIN DROP SILENCE” in the presentation room.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> It may directly or indirectly effect the participant’s performance.<br /> 
                                        <span class="glyphicon glyphicon-arrow-right"></span> If anybody is found doing nuisance activity will be sent out of the room immediately.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The maximum time limit provided to each participant is 10 min.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If the participant needs laser light and scale for highlighting points he/she should get these by themselves none of these items are provided by us.<br /> 
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Topic for PPT Presentation</h3>
                                    <p class="ev-rule-txt">
                                        1 : Purpose of Life<br />
                                        2 : Effect of Social Networking<br />
                                        [ NOTE: Choose any one. ]
                                    </p>
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Devendra Yadav<br />
                    ​                        Riya Sharma<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : CS-IT Lab-4<br />
                                            Time : 1:30 PM to 3:30 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apppt" class="btn btn-success btn-block btn-lg">Apply for PPT Competition</button><br />
                                        <div class="modal fade" id="apppt" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for PPT Competition</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etppt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptppt" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbppt" runat="server" Text=" &ensp;I have read Rules for PPT Competition" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regppt" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regppt_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="mmaking" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:27px;margin-top:10px;">Modek Battlefield :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Model Making:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Maximum four members allowed in one team.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> At least one member is required to describe the model.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Discipline must be maintain in campus.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No harmful and flammable things are allowed in model.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges are final and no one can challenge the judgment.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Maintain a file related to their model in which they show all details, theory and advantage of model etc.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Model will be submitted before three days of event date.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Model may be of two types working and non-working.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Model making members should be of same institute for a group or team.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Working model must be in working condition at the time examining.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Name of the Model should be given at the time of registration.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Model with demonstration has to be presented one day prior to event.
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Ashish Yadav<br />
                    ​                        Dhirendra Yadav<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : ME Department<br />
                                            Time : 2:00 PM to 4:00 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apmmaking" class="btn btn-success btn-block btn-lg">Apply for Modek Battlefield</button><br />
                                        <div class="modal fade" id="apmmaking" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Modek Battlefield</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etmmaking" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptmmaking" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbmmaking" runat="server" Text=" &ensp;I have read Rules for Modek Battlefield" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regmmaking" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regmmaking_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="lang" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Lantastic :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>General Rules:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span style="color:red"><span class="glyphicon glyphicon-arrow-right"></span> NOTE: These rules apply to everyone attending. They can be changed without notice.</span><br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> You are responsible for your actions and equipment.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> We are not liable for anything that happens to you and your equipment.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Do not attempt to steal items from the event or anyone else, legal consequences will be there.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Cheating is an offence. Doing so may lead to disqualification.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Do not bring any type of hacks/viruses/etc. to the event.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Listen to those in charge.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> We reserve the right to remove anyone from premises for any reason we fit.<br />  
                                    </p></blockquote>
                                    <h3>Rules For Counter Strike:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> 1st round will be knife round.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> For the knife round. The winner of the knife round picks the side they want to play first (CT or T).<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Matches will be played 5 on 5.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The map list for the tournament will be informed by the organizers on the day of tournament.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Automatic snipers (D3/Au-1, Krieg-550), tactical shield, SG- 552, SG-550, Scout, G3SG/1  are strictly not allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> General rules settings:<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span> Starting Money: $800.<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Spectate is OFF, fade to block is ON.<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Map Time :5 minutes<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  C4 Timer:45 seconds<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Freeze Time:5 seconds<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Buy Time:30 seconds<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Friendly Fire: OFF<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Team messages are allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If disconnection occurs during a match then scores till the last round will continue and starting money will be decided by the organizers.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Playing with fewer than 5 players in any match is permitted with captain’s agreement.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Under no circumstances are silent plants allowed; whether accidentally or intentionally.<br />
                                    </p></blockquote>
                                    <h3>Rules For NFS Most Wanted:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only use of Game Version: NFS Most Wanted 1.3<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> General Competition Method: 4 players<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Rules for Preliminaries:<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Game Type: Circuit, Sprint<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  The Circuit is for 2 rounds<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Players getting the 1st position shall qualify for the next round.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Rules for the tournament:<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  The tournament will be knock out.<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  The player who wins their 1st stage match advances to the next stage.<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  There will not be any match played for the third spot.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Game Settings<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Courses: Course selection will done by the Game Administrator<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Car Settings: All cars are available.<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Race Mode Options:<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span> Nitrous: ON<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Performance Matching: OFF<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Units: Player's own discretion<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Collision Detection: ON<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Player Mode Options:<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Game Moment Camera: OFF<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Car Damage: OFF<br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Rear View Mirror: Player's own discretion.<br />
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Players are provided with a standard keyboard and mouse.<br /> 
                                        &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Controllers and Steering Wheel are allowed.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Shivam Kakkar<br />
                    ​                        Ankit Singh<br />
                                            Abhishek Tripathi<br />
                                            Ashish Yadav<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : CS-IT  Lab-4<br />
                                            Time : 2:00 PM to 5:00 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#aplang" class="btn btn-success btn-block btn-lg">Apply for NFS Most Wanted</button><br />
                                        <div class="modal fade" id="aplang" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for NFS Most Wanted</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etlang" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptlang" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chblang" runat="server" Text=" &ensp;I have read Rules for NFS Most Wanted" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="reglang" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="reglang_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <button type="button" data-toggle="modal" data-target="#apcslang" class="btn btn-success btn-block btn-lg">Apply for Counter Strike</button><br />
                                        <div class="modal fade" id="apcslang" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Counter Strike (Team)</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="ecapt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID - Player 1 (Captain)" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="eptwt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID - Player 2" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="eptht" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID - Player 3" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="epfrt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID - Player 4" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="epfvt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID - Player 5" runat="server"></asp:TextBox><br />
                                                            <asp:TextBox ID="pcscapt" TextMode="Password" CssClass="form-control box-txt" placeholder="Password - Player 1 (Captain)" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbcslang" runat="server" Text=" &ensp;I have read Rules for Counter Strike" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <asp:Button ID="regcslang" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regcslang_Click"/>
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="thunt" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Treasure Hunt :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Treasure Hunt:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> There will be two rounds.<br />
                                        &nbsp&nbsp&nbsp&nbsp 1) First is questioning {question will be related to SIR CHHOTU RAM, CCSU & CURRENT AFFAIR}<br />
                                        &nbsp&nbsp&nbsp&nbsp 2) Second is search for clue.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> There will be five teams {for participants in each team}.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> All team members will go together for searching the clue.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Phones are not allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> 30 minute will provided for searching the each clue.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The team that will search all the clue first will be winning team.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No unfair means and vehicles should be used during the game. <br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Area college campus till applied science.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Each clue will lead the team to the next clue.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> There will be five clue at different places for team.
                                    </p></blockquote>
                                    <h3>Rules For Round 1:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> It is a Knock-out round.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The rules for the game will be announced on the spot.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only winning team will qualify for finals.<br />
                                    </p></blockquote>
                                    <h3>Rules For Round 2:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Teams have to reach the treasure by way gathering the clues planted by organization.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> All the clues found by participation during the hunt must be submitted to the organizers at the end of the event; only then the team will be eligible for judgment.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> teams will get the successive clue from the place that the current one leads to.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> treasure hunt should be completed within the time or less than that and the duration for the hunt will be announced on the spot.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> team that reached out to the treasure FIRST will be the winner.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> organizing committee reserves the right to change the venue, time and rules if desired.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Vaibhav Pandey<br />
                    ​                        Nidhi Saxsena<br />
                                            Moh Javed<br />
                                            Aarju Gupta<br />
                                            Jigyasa Agrawal​<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 20<sup>th</sup> April<br />
                                            Venue : SCRIET Library<br />
                                            Time : 3:00 PM to 5:00 PM<br />
                                            <span style="color:red;"><span class="glyphicon glyphicon-asterisk"></span> This event is only for SCRIET Students. <span class="glyphicon glyphicon-asterisk"></span></span>
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apthunt" class="btn btn-success btn-block btn-lg">Apply for Treasure Hunt</button><br />
                                        <div class="modal fade" id="apthunt" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Treasure Hunt</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etthunt" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptthunt" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbthunt" runat="server" Text=" &ensp;I have read Rules for Treasure Hunt" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regthunt" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regthunt_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="docvideos" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Cineasta :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Documentary Video:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Documentary must be based on SOCIAL AWARENESS.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Time limit of documentary 2:30min - 4min.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Documentary will only be accepted in 720p resolution.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Participant’s feed must be in the documentary, else documentary will not be considered.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only four participants are allowed in one team.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Documentary must be submitted till 20th of April till 10 A.M., otherwise it will not be accepted.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Participants must provide their proper details (name, phone no., e-mail address, college ID card).<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If documentary is not on the given topic, then it will be disqualified.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Registrations are to be done by CVGClub.org.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Topic for Cineasta</h3>
                                    <p class="ev-rule-txt">Social Awareness</p>
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Akhil Yadav<br />
                    ​                        Prabhat Sagar<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : CS-IT Lab-4<br />
                                            Time : 1:30 PM to 3:30 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apdvideos" class="btn btn-success btn-block btn-lg">Apply for Cineasta</button><br />
                                        <div class="modal fade" id="apdvideos" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Cineasta</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etdvid" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptdvid" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbdvid" runat="server" Text=" &ensp;I have read Rules for Cineasta" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regdvid" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regdvid_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="codehunt" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Code Hunt :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Code Hunt:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> The duration of the event will be 1:30 hours.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The event consists of 2 rounds.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> First round is multiple type questions.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Second round is numerical based questions.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> The teams will write codes for solving some of the trickiest numerical problems which can't be solved by using a calculator.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Mobiles and calculator is not allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Member cannot interact with each other during the event. <br />   
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Pinky<br />
                    ​                        Krishna<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : CS-IT Lab-3<br />
                                            Time : 1:30 PM to 3:30 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apchunt" class="btn btn-success btn-block btn-lg">Apply for Code Hunt</button><br />
                                        <div class="modal fade" id="apchunt" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Code Hunt</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etch" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptch" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbch" runat="server" Text=" &ensp;I have read Rules for Code Hunt" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regch" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regch_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="aattack" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Art Attack :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Sketching:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> It is a solo event.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Along with your sketch you will need to describe about your sketch on A4 sheet.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Mobile phones and gadgets are not allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Time 1 hr only.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> You are requested to bring own tools including colours, pencil etc for your convenience.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> All the contestant must complete their moral within one hour.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> All the paintings must be completed on provided canvas.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If any contestant misbehaves during the competition he or she will be disqualified.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision by the judges will be final.There is no appeal process.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only pencil chart paper sharpener eraser will be provided participants can take their own requirements e.g. compass, scale etc. (but not colour)<br />  
                                    </p></blockquote>
                                    <h3>Rules For Best out of Waste:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> maximum 3 participants in a group.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Students from other institutes may also take part.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Along with your painting or sketch you will need to describe about your painting on A4 sheet provived.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Only chart papers and A4 sheet will be provided.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> We provide basic materials such as-newspaper, disposal, ice- cream stick, cello tape, fevicol, thermocol etc.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> All the contestant must complete their moral within one hour.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Group switching are not allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> If any contestant misbehaves during the competition he or she will be disqualified.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision by the judges will be final.There is no appeal process.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> You can bring out your own materials but it should be waste materials; otherwise you will be disqualified.<br />  
                                    </p></blockquote>
                                    <h3>Rules For Face Painting:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> colours and brushes will be provided.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Students from other institutes may also take part.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> A group contain only 2 members.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Time 45 min.<br />
                                    </p></blockquote>
                                    <h3>Rules For Rangoli:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> max participants are 3 and min is one.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> five basic colours will be provided.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> you are allowed to bring your own colours only no other material is allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> max time 1 hr.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> it should be theme based otherwise you will be disqualified.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> printed or any other material are not allowed.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Theme for Sketching</h3>
                                    <p class="ev-rule-txt">
                                        Change the mentality so you can change the world<br />
                                        [Express yourself beyond your own imagination]<br />
                                    </p>
                                    <h3 style="color:red!important;">Theme for Rangoli</h3>
                                    <p class="ev-rule-txt">
                                        PATRIOTIC<br />
                                        UNITY IN DIVERSITY<br />
                                        SAVE EARTH<br />
                                    </p>
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Shivani Atray<br />
                    ​                        Kalyani Verma<br />
                                            Swapnil Sharma<br />
                                            Neha Katiyar<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <h4>Sketching, Best out of Waste</h4>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : ME Department<br />
                                            Time : 2:00 PM to 3:00 PM<br />
                                        </p>
                                        <h4>Face Painting, Rangoli</h4>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : EC Department<br />
                                            Time : 10:30 AM to 12:30 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#aparta" class="btn btn-success btn-block btn-lg">Apply for Art Attack</button><br />
                                        <div class="modal fade" id="aparta" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Art Attack</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etarta" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptarta" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chsketch" runat="server" Text="&ensp;Sketching" /><br /><asp:CheckBox ID="chboof" runat="server" Text="&ensp;Best out of Waste" /><br /><asp:CheckBox ID="chface" runat="server" Text="&ensp;Face Painting" /><br /><asp:CheckBox ID="chrangoli" runat="server" Text="&ensp;Rangoli" /><br />
                                                            <br /><asp:CheckBox ID="chbarta" runat="server" Text=" &ensp;I have read Rules" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regarta" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regarta_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="poetry" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Sukhanvar :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Self Written Poetry Recitation:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Poetry should be self-written and should be submitted before recitation.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Maximum time limit is 300 sec. Extra time will lead to negative marking.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No objectionable wording and expression should be used.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Participations have to pass the cutoff round.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Failure to complete the will result disqualification.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Poetry should be submitted before time it will be crosschecked and only selected ones will be allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Presenting any other poetry except the submitted one will lead to disqualification.<br />   
                                    </p></blockquote>
                                    <h3>Rules For Poetry Recitation of Famous Poet:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> Any poetry of a poet may be recited but should be submitted before recitation.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Maximum time limit is 300 sec. Extra time will lead to negative marking.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No objectionable wording and expression should be used.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Participations have to pass the cutoff round.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Failure to complete the will result disqualification.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Poetry should be submitted before time it will be crosschecked and only selected ones will be allowed.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Presenting any other poetry except the submitted one will lead to disqualification.<br />   
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Vaibhav Pandey<br />
                    ​                        Neha Katiyar<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 20<sup>th</sup> April<br />
                                            Venue : EC Seminar Hall<br />
                                            Time : 3:00 PM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#appoet" class="btn btn-success btn-block btn-lg">Apply for Sukhanvar</button><br />
                                        <div class="modal fade" id="appoet" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Sukhanvar</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etpoet" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptpoet" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chsw" runat="server" Text="&ensp;Self Written" /><br /><asp:CheckBox ID="chfp" runat="server" Text="&ensp;Famous Poet's" /><br />
                                                            <br /><asp:CheckBox ID="chbpoet" runat="server" Text=" &ensp;I have read Rules for Sukhanvar" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regpoet" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regpoet_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="wskills" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Lekha :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Poetry Writing:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> An event of story writing/drama writing based on picture or quote provided.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Picture or quote will be provided at instant.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either English or Hindi language.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Each candidate will be provided 1 hour after providing the picture or quote to think and write.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No extra time will be given.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />  
                                    </p></blockquote>
                                    <h3>Rules For Article Writing:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> An event of story writing/drama writing based on picture or quote provided.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Picture or quote will be provided at instant.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either English or Hindi language.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Each candidate will be provided 1 hour after providing the picture or quote to think and write.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No extra time will be given.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />  
                                    </p></blockquote>
                                    <h3>Rules For Drama/Story Writing:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> An event of story writing/drama writing based on picture or quote provided.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Picture or quote will be provided at instant.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either English or Hindi language.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Each candidate will be provided 1 hour after providing the picture or quote to think and write.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No extra time will be given.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />  
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3 style="color:red!important;">Topic for Lekha</h3>
                                    <p class="ev-rule-txt">Topic will be provided on the spot.</p>
                                        <br /><h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Ankit Chauhan<br />
                    ​                        Shitanshu Pandey<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : EC Classroom-101<br />
                                            Time : 9:45 AM to 11:45 AM<br />
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apwskills" class="btn btn-success btn-block btn-lg">Apply for Lekha</button><br />
                                        <div class="modal fade" id="apwskills" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Lekha</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etwskills" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptwskills" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="poetch" runat="server" Text="&ensp;Poetry" /><br /><asp:CheckBox ID="artich" runat="server" Text="&ensp;Article" /><br /><asp:CheckBox ID="dramach" runat="server" Text="&ensp;Drama" /><br />
                                                            <br /><asp:CheckBox ID="chwskills" runat="server" Text=" &ensp;I have read Rules for Lekha" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regwskills" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regwskills_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                        <div id="minimi" class="tab-pane fade">
                            <div class="panel panel-primary"><div class="panel-heading"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Minimilitia :</p></div>
                            <div class="row">
                                <div class="panel-body">
                                <div class="col-sm-7">
                                    <h3>Rules For Minimilitia:</h3>
                                    <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                        <span class="glyphicon glyphicon-arrow-right"></span> 4-5 members in each team.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> Map will be decided by the co-ordinators.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> There will be 3 rounds. Each round for 6 minutes. Best of two will move to the next round.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> APK will be provided by the co-ordinators at the time of the event.<br />
                                        <span class="glyphicon glyphicon-arrow-right"></span> No sign-in is allowed.<br />
                                    </p></blockquote>
                                </div>
                                <div class="col-sm-5 text-center">
                                    <h3>Core Member</h3>
                                        <p class="ev-rule-txt">
                                            Shivam Kakkar<br />
                                            Ankit Singh<br />
                                            Abhishek Tripathi<br />
                                            Ashish Yadav<br />
                                        <a href="Developers" title="for Contact Support" target="_blank">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
                                    </p><br />
                                        <h3>Event Details</h3>
                                        <p class="ev-rule-txt">
                                            Date : 21<sup>st</sup> April<br />
                                            Venue : CS-IT Lab-3<br />
                                            Time : 11:00 AM to 1:00 PM
                                        </p><br />
                                        <h3 style="color:red;">Prizes for Winners</h3>
                                        <p class="ev-rule-txt">
                                            <b>1<sup>st</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                            <b>2<sup>nd</sup> Prize :<br /></b>
                                            &emsp;&emsp;&emsp; - Trophy<br />
                                            &emsp;&emsp;&emsp; - Certificate<br />
                                            &emsp;&emsp;&emsp; - Cash Prize<br />
                                        </p>
                                        <br /><br /><button type="button" data-toggle="modal" data-target="#apminim" class="btn btn-success btn-block btn-lg">Apply for Minimilitia</button><br />
                                        <div class="modal fade" id="apminim" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content"style="background:#f2f2f2!important;">
                                                    <br /><div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h3 style="font-weight:bold;">APPLY CONFIRMATION</h3>
                                                    </div>
                                                    <div class="modal-body" style="padding-left:10%;padding-right:10%;">
                                                        <p style="font-weight:bold;">Fill the Creditionals for Minimilitia</p>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="etminim" TextMode="Email" CssClass="form-control box-txt" placeholder="Registered Email ID" runat="server"></asp:TextBox>
                                                            <asp:TextBox ID="ptminim" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox>
                                                            <br /><asp:CheckBox ID="chbminim" runat="server" Text=" &ensp;I have read Rules for Minimilitia" />
                                                            <br /><a href="Registration" title="New Registration" target="_blank" style="text-decoration:none;">Not Registered..?</a><br />
                                                            <a href="Forgot_Password" title="Reset Password" target="_blank" style="text-decoration:none;">Forgot Password..?</a>
                                                            <br /><br /><asp:Button ID="regminim" CssClass="btn btn-success pull-left" runat="server" Text="Apply" OnClick="regminim_Click" /><br />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div></div>
                        </div></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <br /><div class="container-fluid slide" style="min-height:85px;background:#ff7885;border-radius:10px;">
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
        </div>
    <br /><br /><footer class="container-fluid text-center" style="color:white;">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
</asp:Content>

