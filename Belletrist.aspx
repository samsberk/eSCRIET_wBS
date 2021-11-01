<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Belletrist.aspx.cs" Inherits="Belletrist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
    <title>CVGClub: Belletrist</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="panel panel-primary slide">
        <div class="panel-heading text-center" style="padding:1px!important;"><p style="font-family:Calibri; font-weight:bold; font-size:40px;">Club Belletrist</p></div>
        <div class="panel-body">
            <div class="panel panel-info">
                <div class="panel-heading" style="padding:1px!important;">
                    <p style="font-family:Calibri; font-weight:bold; font-size:35px;text-align:center;">Mentors</p>
                </div>
                <div class="panel-body text-center">
                    Dr. Vijyant Maan (Coordinator)<br />
                    Dr. Anurag Tyagi (Co-coordinator)<br />
                    Er. Vijay Kumar Ram (Co-coordinator)
                </div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading" style="padding:1px!important;">
                    <p style="font-family:Calibri; font-weight:bold; font-size:35px;text-align:center;">Belletrist Events Members</p>
                </div>
                <div class="panel-body text-right">
                    <a href="Events" title="Go for Apply" style="text-decoration:none;"><b>Go to Event Page <span class="glyphicon glyphicon-arrow-right"></span></b></a><br /><br />
                    <div class="panel-group" id="octev">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="panel-title text-center"><a data-toggle="collapse" data-parent="#octev" href="#colp1"><b>Poetry&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></h3></div>
                            <div id="colp1" class="panel-collapse collapse">
                                <div class="panel-body text-center">
                                    <b style="font-weight:bold;font-size:18px;">Core</b><br />
                                    Vaibhav Pandey<br />
                                    Neha Katiyar<br />
                                    <br />
                                    <b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
                                    Mudit Shrivastav<br />
                                    Aman Rajput<br />
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="panel-title text-center"><a data-toggle="collapse" data-parent="#octev" href="#colp2"><b>Writing Skills&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></h3></div>
                            <div id="colp2" class="panel-collapse collapse">
                                <div class="panel-body text-center">
                                    <b style="font-weight:bold;font-size:18px;">Core</b><br />
                                    Ankit Chauhan<br />
                                    Shitanshu Pandey
                                    <br /><br />
                                    <b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
                                    Manish Prajapati<br />
                                    Aradhya Arya<br />
                                    Abhishek Singh<br />
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="panel-title text-center"><a data-toggle="collapse" data-parent="#octev" href="#colp3"><b>Oratory Skills&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></h3></div>
                            <div id="colp3" class="panel-collapse collapse">
                                <div class="panel-body text-center">
                                    <b style="font-weight:bold;font-size:18px;">Core</b><br />
                                    Rashmi Rupam<br />
                                    Arpit Malik<br />
                                    Swatantra Gupta
                                    <br /><br />
                                    <b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
                                    Harikesh Yadav<br />
                                    Enayat Ali<br />
                                    Deeksha Chaturvedi<br />
                                    Ajay Pratap<br />
                                </div>
                            </div>
                        </div>
                    </div>               
                </div>
            </div>
        </div>

        <br /><br /><footer class="container-fluid text-center" style="color:black;">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:black;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
     </div>
</asp:Content>

