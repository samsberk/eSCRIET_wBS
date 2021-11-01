<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Alumni.aspx.cs" Inherits="Alumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Alumni</title>
    <meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="panel panel-default slide" style="border:none;">
        <div class="panel-body">
            <div class="container" style="width:100%;height:350px;">
               <img src="Images/alpic.png" style="border-radius:10px;width:100%;height:350px;" />
            </div>
            <div class="container" style="width:100%;text-align:center;">
                <a href="Alumni_Registration" style="font-size:15px;font-weight:bold;color:#00aeef;text-decoration:underline;">Alumni Registration <sup><span class="badge" style="color:white;background:red;font-size:10px;">New</span></sup></a><br /><br />
            </div>
            <div class="panel-group" id="octev">
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp0" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2014-2018</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t14">0</asp:Label></span></h3></div>
                    <div id="colp0" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b1418"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp1" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2013-2017</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t13">0</asp:Label></span></h3></div>
                    <div id="colp1" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b1317"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp2" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2012-2016</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t12">0</asp:Label></span></h3></div>
                    <div id="colp2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b1216"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp3" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2011-2015</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t11">0</asp:Label></span></h3></div>
                    <div id="colp3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b1115"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp4" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2010-2014</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t10">0</asp:Label></span></h3></div>
                    <div id="colp4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b1014"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp5" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2009-2013</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t09">0</asp:Label></span></h3></div>
                    <div id="colp5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0913"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp6" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2008-2012</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t08">0</asp:Label></span></h3></div>
                    <div id="colp6" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0812"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp7" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2007-2011</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t07">0</asp:Label></span></h3></div>
                    <div id="colp7" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0711"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp8" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2006-2010</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t06">0</asp:Label></span></h3></div>
                    <div id="colp8" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0610"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp9" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2005-2009</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t05">0</asp:Label></span></h3></div>
                    <div id="colp9" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0509"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp10" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2004-2008</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t04">0</asp:Label></span></h3></div>
                    <div id="colp10" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0408"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp11" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2003-2007</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t03">0</asp:Label></span></h3></div>
                    <div id="colp11" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0307"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp12" style="color:black;font-weight:bold;font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span>&emsp;Batch 2002-2006</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t02">0</asp:Label></span></h3></div>
                    <div id="colp12" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:PlaceHolder runat="server" ID="b0206"></asp:PlaceHolder>
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
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:#ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
        <div class="panel-footer" style="padding:0px;border:none;width:100%;height:200px;background-image:url('Images/alpic2.png');background-position:center;"></div>
     </div>
</asp:Content>

