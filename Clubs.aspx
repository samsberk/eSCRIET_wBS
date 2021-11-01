<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Clubs.aspx.cs" Inherits="Clubs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
    <title>CVGClub: Clubs</title>
    <style>
        .zoomer {
            width: 100%;
            height: 100%;
            border-radius: 8px 8px 0px 0px;
            transform: scale(1);
            transition: transform 1s;
        }
        .zoomer:hover
        {
            transform:scale(1.2);
            transition:transform 1s;
        }
        .clubdetail
        {
            position:relative;
            top:0;
            left:0;
            min-height:40px;
            width:100%;
            background:rgba(255, 120, 133, 0.76);
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-4 slide">
                        <br /><a href="Octavas" title="Singing, Dancing, Instrumental, Dramatics" style="color:black;text-decoration:none;">
                            <div style="height:200px;border-radius:8px 8px 0px 0px;overflow:hidden;">
                                <img src="Images/oct.jpg" class="zoomer"/>
                            </div>
                        <div style="height:35px;background:white;text-align:center;margin-top:-20px;border-radius:0px 0px 8px 8px;">
                            <h2 style="font-weight:bold;">Octavas</h2>
                        </div></a>
                    </div>
                    <div class="col-sm-4 slide">
                        <br /><a href="Aperture" title="Photography, PPT Presentation, Model Making, Doc. Video" style="color:black;text-decoration:none;">
                            <div style="height:200px;border-radius:8px 8px 0px 0px;overflow:hidden;">
                                <img src="Images/apr.jpg" class="zoomer" />
                            </div>
                        <div style="height:35px;background:white;text-align:center;margin-top:-20px;border-radius:0px 0px 8px 8px;">
                            <h2 style="font-weight:bold;">Aperture</h2>
                        </div></a>
                    </div>
                    <div class="col-sm-4 slide">
                        <br /><a href="Belletrist" title="Poetry, Writing Skills, Oratory Skills" style="color:black;text-decoration:none;">
                            <div style="height:200px;border-radius:8px 8px 0px 0px;overflow:hidden;">
                                <img src="Images/bull.jpg" class="zoomer" />

                            </div>
                        <div style="height:35px;background:white;text-align:center;margin-top:-20px;border-radius:0px 0px 8px 8px;">
                            <h2 style="font-weight:bold;">Belletrist</h2>
                        </div></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-4 slide">
                        <br /><a href="Sigma" title="Code Hunt, Gaming" style="color:black;text-decoration:none;">
                            <div style="height:200px;border-radius:8px 8px 0px 0px;overflow:hidden;">
                                <img src="Images/sigma.jpg" class="zoomer" />

                            </div>
                        <div style="height:35px;background:white;text-align:center;margin-top:-20px;border-radius:0px 0px 8px 8px;">
                            <h2 style="font-weight:bold;">Sigma</h2>
                        </div></a>
                    </div>
                    <div class="col-sm-4 slide">
                        <br /><a href="Enquizitia" title="Quiz, Treasure Hunt" style="color:black;text-decoration:none;">
                            <div style="height:200px;border-radius:8px 8px 0px 0px;overflow:hidden;">
                                <img src="Images/enclub.jpg" class="zoomer"/>

                            </div>
                        <div style="height:35px;background:white;text-align:center;margin-top:-20px;border-radius:0px 0px 8px 8px;">
                            <h2 style="font-weight:bold;">Enquizitia</h2>
                        </div></a>
                    </div>
                    <div class="col-sm-4 slide">
                        <br /><a href="Fine_Arts" title="Rangoli, Sketching etc." style="color:black;text-decoration:none;">
                            <div style="height:200px;border-radius:8px 8px 0px 0px;overflow:hidden;">
                                <img src="Images/fine.jpg" class="zoomer" />

                            </div>
                        <div style="height:35px;background:white;text-align:center;margin-top:-20px;border-radius:0px 0px 8px 8px;">
                            <h2 style="font-weight:bold;">Fine Arts</h2>
                        </div></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
    <br /><br /><footer class="container-fluid text-center" style="color:white;"><br /><br />
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
</asp:Content>

