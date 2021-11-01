<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Techlon.aspx.cs" Inherits="Techlon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Techlon</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="panel panel-primary">
        <div class="panel-heading text-center"><p style="font-family:Calibri; font-weight:bold; font-size:30px;margin-top:10px;">Previous Technical & Educational Events</p></div>
        <div class="panel-body">
            <div class="container">
                <div class="panel panel-info">
                <div class="panel-heading">
                    <p style="font-family:Calibri; font-weight:bold; font-size:35px;margin-top:10px;text-align:center;">Techlon'13</p>
                </div>
                <div style="height:300px;background:red;">
                    <div id="techon" class="carousel" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#techon" data-slide-to="0" class="active"></li>
                            <li data-target="#techon" data-slide-to="1"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                        <div class="item active">
                            <img src="Images/SliderImages/tech1.jpg" style="width:100%; height:300px;"/>
                        </div>
                        <div class="item">
                            <img src="Images/SliderImages/tech2.jpg" style="width:100%; height:300px;"/>
                        </div>
                    </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#techon" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#techon" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
                    <div class="panel-body">
                        <blockquote style="border-color:blue;">
                            <p>
                                 
                            </p>
                        </blockquote>
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

