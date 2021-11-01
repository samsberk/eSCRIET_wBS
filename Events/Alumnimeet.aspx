<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alumnimeet.aspx.cs" Inherits="Events_Alumnimeet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122943421-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-122943421-1');
    </script>
    <title>Alumni Registration</title>
    <meta name="google-site-verification" content="14WxE_r0dxgHMhJIoxiODhdgq9mPksFOXFzJOn7kYGo" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>  
    <meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <!--font-family: 'Hind', sans-serif;
        font-family: 'Gamja Flower', cursive;
        font-family: 'Hi Melody', cursive;
        font-family: 'Freckle Face', cursive;
        font-family: 'Faster One', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="../ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <script src="../MyJS/MyJS.js"></script>
    <style>
        .mychkbox
        { padding:5px 4px 1px 5px; background:white; color:blue; border:1px solid black; border-radius:10px;}
        .imgprev img
        {border-radius:3px;}
        #td1,#td2,#td3,#td4,#td5,#td6,#td7,#td8,#td9,#td10,#td11
        {background:white;border:none;}
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-fixed-top mainnav">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle mytoggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="glyphicon glyphicon-menu-hamburger"></span>                   
                </button>
                <a class="navbar-brand mynavbrand" title="Home" href="Home">CVGClub</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                   <li><a href="Home">HOME</a></li>
                    <li><a href="Clubs">CLUBS</a></li>
                    <li><a href="Alumni">ALUMNI</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">LOGIN<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Login">STUDENT LOGIN</a></li>
                            <li><a href="Admin">ADMIN LOGIN</a></li>
                        </ul>
                    </li>
                    <li><a href="Developers">CONTACT US</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <br /><br /><br /><div class="panel panel-default slide">
        <div class="panel-body">
            <div class="container" style="width:100%;height:350px;">
               <img src="Images/alpic.png" style="border-radius:10px;width:100%;height:350px;" />
            </div>
            <div class="row" id="updatetop">
                <div class="col-sm-2"></div>
                <div class="col-sm-8" style="background:lightgray;border-radius:5px;padding:20px;">
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <span style="font-weight:bold;font-size:20px;letter-spacing:6px;">ALUMNI REGISTRATION</span><hr style="margin-bottom:0px;" />
                        </div>
                    </div>
                    <div class="editbox">
                        <div class="row">
                            <div class="col-sm-6"><br />
                                <label for="emailid">Email ID :</label>
                                <asp:TextBox runat="server" TextMode="Email" MaxLength="50" ID="emailid" CssClass="form-control" placeholder="Enter Your Email ID" style="text-transform:lowercase;"></asp:TextBox>
                            </div>
                            <div class="col-sm-6"><br />
                                <label for="name">Name (Mention your complete Name) :</label>
                                <asp:TextBox runat="server" MaxLength="30" ID="name" CssClass="form-control" placeholder="Enter Your Full Name" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6"><br />
                                <label for="branch">Select Branch :</label>
                                <asp:DropDownList ID="branch" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select Branch</asp:ListItem>
                                    <asp:ListItem>B.Tech (AG)</asp:ListItem>
                                    <asp:ListItem>B.Tech (CE)</asp:ListItem>
                                    <asp:ListItem>B.Tech (CS)</asp:ListItem>
                                    <asp:ListItem>B.Tech (EC)</asp:ListItem>
                                    <asp:ListItem>B.Tech (EI)</asp:ListItem>
                                    <asp:ListItem>B.Tech (ME)</asp:ListItem>
                                    <asp:ListItem>B.Tech (IT)</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                    <asp:ListItem>MBA (IB)</asp:ListItem>
                                    <asp:ListItem>MCA</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-6"><br />
                                <label for="batch">Select Passout Batch (Year of Passing) :</label>
                                <asp:DropDownList ID="batch" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select Batch</asp:ListItem>
                                    <asp:ListItem>2014-2018</asp:ListItem>
                                    <asp:ListItem>2013-2017</asp:ListItem>
                                    <asp:ListItem>2012-2016</asp:ListItem>
                                    <asp:ListItem>2011-2015</asp:ListItem>
                                    <asp:ListItem>2010-2014</asp:ListItem>
                                    <asp:ListItem>2009-2013</asp:ListItem>
                                    <asp:ListItem>2008-2012</asp:ListItem>
                                    <asp:ListItem>2007-2011</asp:ListItem>
                                    <asp:ListItem>2006-2010</asp:ListItem>
                                    <asp:ListItem>2005-2009</asp:ListItem>
                                    <asp:ListItem>2004-2008</asp:ListItem>
                                    <asp:ListItem>2003-2007</asp:ListItem>
                                    <asp:ListItem>2002-2006</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6"><br />
                                <label for="desig">Designation (current Designation at Company) :</label>
                                <asp:TextBox runat="server" MaxLength="30" ID="desig" CssClass="form-control" placeholder="Enter Your Designation" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
                            <div class="col-sm-6"><br />
                                <label for="comname">Company Name (with Address and Contact) :</label>
                                <asp:TextBox runat="server" MaxLength="70" ID="comname" CssClass="form-control" placeholder="Enter Company Name with Details" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6"><br />
                                <label for="contact">Contact (Only 10 Digit) :</label>
                                <asp:TextBox runat="server" TextMode="Number" MaxLength="10" ID="contact" CssClass="form-control" placeholder="Enter 10 Digit Mobile Number"></asp:TextBox>
                            </div>
                            <div class="col-sm-6"><br />
                                <label for="hrcontact">Contact of HR (if available):</label>
                                <asp:TextBox runat="server" TextMode="Number" ID="hrcontact" CssClass="form-control" placeholder="Enter Contact Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6"><br />
                                <label for="alumpic">Upload Picture (Passport Size) :</label>
                                <asp:FileUpload runat="server" ID="alumpic" CssClass="form-control" />
                            </div>
                            <div class="col-sm-6"><br />
                                <div style="background:gray;border:1px solid orange;color:white;font-weight:bold;padding:5px;border-radius:5px;">
                                    1- Photograph must be passport size and in ".jpg", ".jpeg" or ".png" format.<br />
                                    2- Dimension must have 150*200 Pixel (means width=150 & height=200).
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6"><br />
                                <label for="evattend">What event will you attand :</label>
                                <asp:DropDownList ID="evattend" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select Event</asp:ListItem>
                                    <asp:ListItem>Alumni Related</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-6"><br />
                                <label for="crpart">Consent Regarding Participation :</label>
                                <asp:DropDownList ID="crpart" runat="server" CssClass="form-control">
                                    <asp:ListItem>Choose Option</asp:ListItem>
                                    <asp:ListItem>Participating</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12"><br />
                                <label for="contribute">what and how can you contribute to SCRIET :</label>
                                <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="100" ID="contribute" CssClass="form-control" placeholder="Enter Your Answer" Style="resize:none;text-transform:capitalize;"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="mprev" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content"><br /><br />
                                <div class="modal-header">
                                    <button type="button" class="close editform" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Preview</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <table>
                                                <tr><th>Email ID</th><td>: <input type="text" id="td1"/></td></tr>
                                                <tr><th>Name</th><td>: <input type="text" id="td2"/></td></tr>
                                                <tr><th>Branch</th><td>: <input type="text" id="td3"/></td></tr>
                                                <tr><th>Batch</th><td>: <input type="text" id="td4"/></td></tr>
                                                <tr><th>Designation</th><td>:<input type="text" id="td5"/></td></tr>
                                                <tr><th>Conmapny</th><td>: <input type="text" id="td6"/></td></tr>
                                                <tr><th>Contact</th><td >: <input type="text" id="td7"/></td></tr>
                                                <tr><th>HR Contact</th><td>: <input type="text" id="td8"/></td></tr>
                                                <tr><th>Event Attend</th><td>: <input type="text" id="td9"/></td></tr>
                                                <tr><th>CR Participation</th><td >: <input type="text" id="td10"/></td></tr>
                                                <tr><th>Contribution</th><td>: <input type="text" id="td11"/></td></tr>
                                            </table>
                                        </div>
                                        <div class="col-sm-4 imgprev" style="margin-top:15px;"></div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="alert alert-xs alert-danger" style="text-align:left;"><strong>NOTE : After FINAL SUBMIT you will not able to change any field.</strong></div>
                                    <button type="button" class="btn btn-warning editform" data-dismiss="modal">Update</button>
                                    &emsp;<asp:Button runat="server" ID="alumsub" CssClass="btn btn-success" Text="Final Submit" OnClick="alumsub_Click" />
                                </div>
                            </div>
                        </div>
                    </div><hr />
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <div style="background:gray;border:1px solid green;color:white;font-weight:bold;padding:5px;border-radius:5px;text-align:center;">
                                <asp:CheckBox runat="server" ID="agrtnc" CssClass="mychkbox"/>&emsp;Please check this box to enable the Submit button.
                            </div><br />
                            <button type="button" id="p" class="btn btn-success">Submit</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
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
    </form>
    <script>
        $(".rembtndiv").hide();
        $("#p").attr("disabled", true);
        $("#alumpic").bind("change", function () {
            var ext = $("#alumpic").val().split('.').pop().toLowerCase();
            var a = document.getElementById("alumpic");
            if ($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
                alert("Invalid File Type. It shoud be jpg, jpeg or png file.");
                this.value = null;
            }
            else {
                var _URL = window.URL;
                var img = new Image();
                img.onload = function () {
                    /*if (this.height != "200" || this.width != "150") {
                        alert("Invalid Dimension. It should be 150*200 Pixel (means width=150px & height=200px)");
                        a.value = null;
                        $(".imgprev img").hide();
                        $("#alumpic").attr("disabled", false);
                        $("#remdiv").show();
                        $(".rembtndiv").hide();
                    }*/
                }
                img.src = _URL.createObjectURL(this.files[0]);
            }
        });
        /*$(".rembtndiv button").click(function () {
            var a = document.getElementById("alumpic");
            a.value = null;
            $("#alumpic").attr("disabled", false);
            $(".imgprev img").hide();
            $("#remdiv").show();
            $(".rembtndiv").hide();
        });*/
        $(function () {
            $("#contact").blur(function () {
                var c = document.getElementById("contact");
                if (c.value < 999999999 || c.value > 9999999999) {
                    alert("Invalid Contact Number. Enter 10 Digit Only.");
                    c.value = null;
                }
            });
        });
        $(function () {
            $("#hrcontact").blur(function () {
                var c = document.getElementById("hrcontact");
                if (c.value < 999999 || c.value > 999999999999) {
                    alert("Invalid Contact Number.");
                    c.value = null;
                }
            });
        });
        $("#agrtnc").bind("change", function () {
            var chk = document.getElementById("agrtnc");
            var eid = document.getElementById("emailid");
            var nm = document.getElementById("name");
            var brn = document.getElementById("branch");
            var bch = document.getElementById("batch");
            var dsg = document.getElementById("desig");
            var cnm = document.getElementById("comname");
            var cnt = document.getElementById("contact");
            var hrcn = document.getElementById("hrcontact");
            var alp = document.getElementById("alumpic");
            var eatn = document.getElementById("evattend");
            var crp = document.getElementById("crpart");
            var cont = document.getElementById("contribute");
            var cpch = document.getElementById("captxt");
            if (chk.checked == true) {
                if (eid.value == "") {
                    alert("Please enter Email ID first.");
                    chk.checked = false;
                }
                else if (nm.value == "") {
                    alert("Please enter your Name first.");
                    chk.checked = false;
                }
                else if (brn.value == "Select Branch") {
                    alert("Please select your Branch first.");
                    chk.checked = false;
                }
                else if (bch.value == "Select Batch") {
                    alert("Please select your Batch first.");
                    chk.checked = false;
                }
                else if (dsg.value == "") {
                    alert("Please enter your Designation first.");
                    chk.checked = false;
                }
                else if (cnm.value == "") {
                    alert("Please enter your Company Name first.");
                    chk.checked = false;
                }
                else if (cnt.value == "") {
                    alert("Please enter your Contact Number first.");
                    chk.checked = false;
                }
                else if (alp.files.length == 0) {
                    alert("Please upload a Photograph first.");
                    chk.checked = false;
                }
                else if (eatn.value == "Select Event") {
                    alert("Please select Event first.");
                    chk.checked = false;
                }
                else if (crp.value == "Choose Option") {
                    alert("Please select Consent Regarding Participation first.");
                    chk.checked = false;
                }
                else if (cont.value == "") {
                    alert("Please enter about Contribution first.");
                    chk.checked = false;
                }
                else {
                    $("#p").attr("disabled", false);
                }
            }
            else {
                $("#p").attr("disabled", true);
            }
        });

        $("#p").click(function () {
            $("#mprev").modal("show");
            var t1 = document.getElementById("td1");
            var t2 = document.getElementById("td2");
            var t3 = document.getElementById("td3");
            var t4 = document.getElementById("td4");
            var t5 = document.getElementById("td5");
            var t6 = document.getElementById("td6");
            var t7 = document.getElementById("td7");
            var t8 = document.getElementById("td8");
            var t9 = document.getElementById("td9");
            var t10 = document.getElementById("td10");
            var t11 = document.getElementById("td11");

            var f1 = document.getElementById("emailid");
            var f2 = document.getElementById("name");
            var f3 = document.getElementById("branch");
            var f4 = document.getElementById("batch");
            var f5 = document.getElementById("desig");
            var f6 = document.getElementById("comname");
            var f7 = document.getElementById("contact");
            var f8 = document.getElementById("hrcontact");
            var f9 = document.getElementById("evattend");
            var f10 = document.getElementById("crpart");
            var f11 = document.getElementById("contribute");
            var pic = document.getElementById("alumpic");
            t1.value = f1.value;
            t2.value = f2.value;
            t3.value = f3.value;
            t4.value = f4.value;
            t5.value = f5.value;
            t6.value = f6.value;
            t7.value = f7.value;
            t8.value = f8.value;
            t9.value = f9.value;
            t10.value = f10.value;
            t11.value = f11.value;
            $("#td1, #td2, #td3, #td4, #td5, #td6, #td7, #td8, #td9, #td10, #td11").attr("disabled", true);
            var reader = new FileReader();
            reader.onload = function (e) {
                $(".imgprev img").remove();
                $(".imgprev").append("<img style='height:200px;width:150px;' />");
                $(".imgprev img").attr("src", e.target.result);
            }
            reader.readAsDataURL(pic.files[0]);
        });

        $(".editform").click(function () {
            var ch = document.getElementById("agrtnc");
            var pic = document.getElementById("alumpic");
            ch.checked = false;
            $("#p").attr("disabled", true);
            $(".imgprev img").remove();
            location.href = "#updatetop";
        });
    </script>
</body>
</html>
