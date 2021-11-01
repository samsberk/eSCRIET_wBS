<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="StudentZone_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub: Student Home</title>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122943421-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-122943421-1');
    </script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
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
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="../ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/> 
    <script src="../MyJS/MyJS.js"></script>
    <style>
        #cmain
        {
            min-height:100vh;
        }
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60" style="background:repeating-radial-gradient(lightgray,gray);">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <nav class="navbar navbar-default navbar-fixed-top mainnav">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle mytoggle" data-toggle="collapse" data-target="#myNavbar">
                    <asp:Label ID="u2lbl" runat="server"></asp:Label> <span class="caret"></span>                      
                </button>
                <a class="navbar-brand mynavbrand" title="Home" href="../Home" target="_blank">CVGClub</a>
            </div>
            
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Student_Home">HOMEPAGE</a></li>
                    <li><a href="Reset_Password">PASSWORD</a></li>
                    <li><a href="Logging_out">LOGOUT</a></li>
                </ul>
            </div>
        </div>
    </nav><br /><br /><br />
        <div id="cmain">
            <div class="panel-body" style="font-size:15px;">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div style="height:auto;width:100%;text-align:center;">
                            <h4 style="font-weight:bold;"><span class="glyphicon glyphicon-cog"></span> Login Statistics <span class="glyphicon glyphicon-cog"></span></h4>
                            <p style="font-weight:bold;">
                                Your Email: <asp:Label ID="uemaillbl" runat="server" Text="Unauthorised"></asp:Label><br />
                                Your IP: <asp:Label ID="uiplbl" runat="server" Text="Unauthorised"></asp:Label><br />
                                Last Login: <asp:Label ID="lastloginlbl" runat="server" Text="Unauthorised"></asp:Label><br />
                                Your Session timeout: 30 Min<br />
                            </p>
                        </div>
						<h3 style="font-weight:bold;"><span class="glyphicon glyphicon-bullhorn"></span> Important Notice</h3>
                        <h4 style="font-weight:bold;">&emsp;<span class="glyphicon glyphicon-glass"></span> Welcome, Dear <asp:Label ID="u1lbl" runat="server" Text="UNAUTHORIZED SESSION"></asp:Label></h4>
                        <div style="width:100%;min-height:200px;background:ghostwhite!important;border-radius:10px; padding:2% 4% 2% 4%;">
                            <h4 style="color:red;font-weight:bold;">important notifications :</h4><hr style="padding:0.3%; margin-bottom:3%; margin-top:3%; background:gray;border-radius:5px;"/>
                            <p style="font-weight:bold;">
                                <span class="glyphicon glyphicon-chevron-right"></span> <a href="../Events/Gana_Naad-Awaz-E-Khalaq_Notification.pdf" target="_blank">Download Notification for Gana Naad-Awaz-E-Khalaq</a><br />

                            </p>
                        </div><br />
						<h4 style="font-weight:bold;">For Patriotic Program <br /><i>Gana Naad-Awaz-E-Khalaq</i> :</h4>
                        <div style="width:100%;min-height:200px;background:ghostwhite!important;border-radius:10px; padding:2% 4% 2% 4%;">
                            <h4 style="font-weight:bold;">T&C for Participation :</h4><hr style="padding:0.3%; margin-bottom:3%; margin-top:3%; background:gray;border-radius:5px;"/>
                            <div class="alert alert-warning">
                                <a href="../Events/Gana_Naad-Awaz-E-Khalaq_Notification.pdf" target="_blank">Download Notification for Gana Naad-Awaz-E-Khalaq</a>
                            </div>
                            <h4 style="font-weight:bold;">Choose your event :</h4><hr style="padding:0.3%; margin-bottom:3%; margin-top:3%; background:gray;border-radius:5px;"/>
							<label for="poettxt">Poetry Recitation :</label>
                            <asp:DropDownList runat="server" ID="poettxt" CssClass="form-control" style="margin-bottom:10px;">
								<asp:ListItem Value="SELECT PARTICIPATION"></asp:ListItem>
								<asp:ListItem Value="SELF WRITTEN"></asp:ListItem>
								<asp:ListItem Value="WRITTEN BY OTHER"></asp:ListItem>
								<asp:ListItem Value="NOT PARTICIPATING"></asp:ListItem>
                            </asp:DropDownList>
							<label for="singtxt">Singing :</label>
                            <asp:DropDownList runat="server" ID="singtxt" CssClass="form-control" style="margin-bottom:10px;">
								<asp:ListItem Value="SELECT PARTICIPATION"></asp:ListItem>
								<asp:ListItem Value="SOLO"></asp:ListItem>
								<asp:ListItem Value="GROUP"></asp:ListItem>
								<asp:ListItem Value="NOT PARTICIPATING"></asp:ListItem>
                            </asp:DropDownList>
							<label for="dancetxt">Dancing :</label>
                            <asp:DropDownList runat="server" ID="dancetxt" CssClass="form-control" style="margin-bottom:10px;">
								<asp:ListItem Value="SELECT PARTICIPATION"></asp:ListItem>
								<asp:ListItem Value="SOLO"></asp:ListItem>
								<asp:ListItem Value="GROUP"></asp:ListItem>
								<asp:ListItem Value="NOT PARTICIPATING"></asp:ListItem>
                            </asp:DropDownList>
							<label for="insttxt">Instrument Playing :</label>
                            <asp:DropDownList runat="server" ID="insttxt" CssClass="form-control" style="margin-bottom:10px;">
								<asp:ListItem Value="SELECT PARTICIPATION"></asp:ListItem>
								<asp:ListItem Value="SOLO"></asp:ListItem>
								<asp:ListItem Value="GROUP"></asp:ListItem>
								<asp:ListItem Value="NOT PARTICIPATING"></asp:ListItem>
                            </asp:DropDownList>
							<label for="dramatxt">Drama :</label>
                            <asp:DropDownList runat="server" ID="dramatxt" CssClass="form-control" style="margin-bottom:10px;">
								<asp:ListItem Value="SELECT PARTICIPATION"></asp:ListItem>
								<asp:ListItem Value="SOLO"></asp:ListItem>
								<asp:ListItem Value="GROUP"></asp:ListItem>
								<asp:ListItem Value="NOT PARTICIPATING"></asp:ListItem>
                            </asp:DropDownList><br />
							<center><asp:CheckBox runat="server" ID="agrchkbx" Text="&emsp;Agree to Participation" style="user-select:none;" /><br /><br />
							<asp:Button runat="server" ID="subgnaek" CssClass="btn btn-success" Text="Submit Participation" OnClick="subgnaek_Click" /><br /><br /></center>
                        </div><br />
						<div style="display:none;">
                        <h4 style="font-weight:bold;">For SCRIET Magazine 2018 :</h4>
                        <div style="width:100%;min-height:200px;background:ghostwhite!important;border-radius:10px; padding:2% 4% 2% 4%;">
                            <h4 style="font-weight:bold;">T&C for upload file :</h4><hr style="padding:0.3%; margin-bottom:3%; margin-top:3%; background:gray;border-radius:5px;"/>
                            <div class="alert alert-warning">
                                1. Article file must have in <b>.pdf</b> or <b>.txt</b> format.<br />
                                2. Convert your file according to<br />
                                <b>&emsp;<a href="https://pdf.io/jpg2pdf/" target="_blank">JPG to PDF</a><br />
                                &emsp;<a href="https://pdf.io/png2pdf/" target="_blank">PNG to PDF</a><br />
                                &emsp;<a href="https://pdf.io/doc2pdf/" target="_blank">DOC to PDF</a><br /></b>
                                3. You can upload single file only.<br />
                            </div>
                            <h4 style="font-weight:bold;">Upload your Article :</h4><hr style="padding:0.3%; margin-bottom:3%; margin-top:3%; background:gray;border-radius:5px;"/>
                            <asp:PlaceHolder runat="server" ID="magbox"></asp:PlaceHolder>
                                    
                            <asp:FileUpload ID="magfile" runat="server" CssClass="form-control" /><br />
                            <div class="alert alert-danger" id="alert-jpg">You can not upload jpg file. You must go <a href="https://pdf.io/jpg2pdf/" target="_blank"><b>Here</b></a> and convert your file into pdf and then upload it.</div>
                            <div class="alert alert-danger" id="alert-png">You can not upload png file. You must go <a href="https://pdf.io/png2pdf/" target="_blank"><b>Here</b></a> and convert your file into pdf and then upload it.</div>
                            <div class="alert alert-danger" id="alert-doc">You can not upload doc file. You must go <a href="https://pdf.io/doc2pdf/" target="_blank"><b>Here</b></a> and convert your file into pdf and then upload it.</div>
                            <asp:Button runat="server" ID="btnmagfile" CssClass="btn btn-success" Text="Submit Article" OnClick="btnmagfile_Click" /><br /><br />
                        </div></div>
                        <!--<h3 style="font-weight:bold;">Events Application Status</h3>
                        <div style="width:100%;min-height:200px;background:ghostwhite!important;border-radius:10px; padding:2% 4% 2% 4%;">
                            <h4 style="color:black;font-weight:bold;">Your Participated Events :</h4><hr style="padding:0.3%; margin-bottom:3%; margin-top:3%; background:gray;border-radius:5px;"/>
                            <p style="font-size:18px;">
                                <asp:Label ID="oslbl" runat="server"></asp:Label>
                                <asp:Label ID="qlbl" runat="server"></asp:Label>
                                <asp:Label ID="pglbl" runat="server"></asp:Label>
                                <asp:Label ID="pptlbl" runat="server"></asp:Label>
                                <asp:Label ID="mmlbl" runat="server"></asp:Label>
                                <asp:Label ID="nfslbl" runat="server"></asp:Label>
                                <asp:Label ID="thlbl" runat="server"></asp:Label>
                                <asp:Label ID="dvlbl" runat="server"></asp:Label>
                                <asp:Label ID="chlbl" runat="server"></asp:Label>
                                <asp:Label ID="rrlbl" runat="server"></asp:Label>
                                <asp:Label ID="aalbl" runat="server"></asp:Label>
                                <asp:Label ID="plbl" runat="server"></asp:Label>
                                <asp:Label ID="wslbl" runat="server"></asp:Label>
                                <asp:Label ID="mlbl" runat="server"></asp:Label>
                                <asp:Label ID="emptylbl" runat="server" style="color:orangered;"></asp:Label>
                                <asp:Label ID="fullbl" runat="server" style="color:forestgreen;"></asp:Label>
                            </p>
                        </div><br />
                        <a href="Events" title="Go to Event Page" target="_blank" style="font-size:20px;font-weight:bold;">View Event Details <span class="glyphicon glyphicon-new-window"></span></a>
                        <h4 style="font-weight:bold;"><span class="glyphicon glyphicon-registration-mark"></span> &nbsp;Apply for Event :</h4>
                        <div class="form-group">
                            <asp:DropDownList ID="regevdrpdwn" CssClass="form-control" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Odyssey (ALL)</asp:ListItem>
                                <asp:ListItem>Enquizitia</asp:ListItem>
                                <asp:ListItem>ZoomIn</asp:ListItem>
                                <asp:ListItem>PPT Competition</asp:ListItem>
                                <asp:ListItem>Modek Battlefield</asp:ListItem>
                                <asp:ListItem>Lantastic (NFS)</asp:ListItem>
                                <asp:ListItem>Treasure Hunt</asp:ListItem>
                                <asp:ListItem>Cineasta</asp:ListItem>
                                <asp:ListItem>Code Hunt</asp:ListItem>
                                <asp:ListItem>Art Attack (ALL)</asp:ListItem>
                                <asp:ListItem>Sukhanvar (ALL)</asp:ListItem>
                                <asp:ListItem>Lekha (ALL)</asp:ListItem>
                                <asp:ListItem>Minimilitia</asp:ListItem>
                            </asp:DropDownList>
                            <br /><asp:Button ID="subregevbtn" CssClass="btn btn-lg btn-success pull-right" runat="server" Text="Apply" OnClick="subregevbtn_Click" />
                        </div><br />
                        <h4 style="font-weight:bold;"><span class="glyphicon glyphicon-trash"></span> &nbsp;Cancel Application for Event :</h4>
                        <div class="form-group">
                            <asp:DropDownList ID="deregevdrpdwn" CssClass="form-control" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Odyssey (ALL)</asp:ListItem>
                                <asp:ListItem>Enquizitia</asp:ListItem>
                                <asp:ListItem>ZoomIn</asp:ListItem>
                                <asp:ListItem>PPT Competition</asp:ListItem>
                                <asp:ListItem>Modek Battlefield</asp:ListItem>
                                <asp:ListItem>Lantastic (NFS)</asp:ListItem>
                                <asp:ListItem>Treasure Hunt</asp:ListItem>
                                <asp:ListItem>Cineasta</asp:ListItem>
                                <asp:ListItem>Code Hunt</asp:ListItem>
                                <asp:ListItem>Art Attack (ALL)</asp:ListItem>
                                <asp:ListItem>Sukhanvar (ALL)</asp:ListItem>
                                <asp:ListItem>Lekha (ALL)</asp:ListItem>
                                <asp:ListItem>Minimilitia</asp:ListItem>
                            </asp:DropDownList>
                            <br /><asp:Button ID="subderegevbtn" CssClass="btn btn-lg btn-danger pull-right" runat="server" Text="De-Register" OnClick="subderegevbtn_Click" />
                        </div>
                        -->
						<br /><br /><h4 style="font-weight:bold;"><span class="glyphicon glyphicon-sunglasses"></span> &nbsp;How Can I Help You..??</h4>
                        <div class="form-group">
                        <asp:TextBox ID="querytxt" runat="server" TextMode="MultiLine" Rows="6" MaxLength="150" CssClass="form-control" placeholder="Enter Query Here ( Max. 30 word )" style="resize:none;font-family: 'Hind', sans-serif;"></asp:TextBox><br />
                        <asp:Button ID="subquerybtn" runat="server" CssClass="btn btn-lg btn-info pull-right" Text="Submit your Query" OnClick="subquerybtn_Click" />
                        </div><br /><br />
                        <h4 style="font-weight:bold;"><span class="glyphicon glyphicon-comment"></span> &nbsp;Give Us Your Feedback</h4>
                        <div class="form-group">
                        <asp:TextBox ID="fdbktxt" runat="server" TextMode="MultiLine" Rows="6" MaxLength="150" CssClass="form-control" placeholder="Enter Feedback Here ( Max. 30 word )" style="resize:none;font-family: 'Hind', sans-serif;"></asp:TextBox><br />
                        <asp:Button ID="subfdbkbtn" runat="server" CssClass="btn btn-lg btn-info pull-right" Text="Submit your Feedback" OnClick="subfdbkbtn_Click" />
                        </div>
                        <br /><br />
					</div>
					<div class="col-md-2"></div>
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
    </form>
	<script type="text/javascript">
		//$("#shown").click(function () {
		//	$("#notbox").slideDown();
		//	$("#shown").hide();
		//	$("#hiden").show();
		//});
		//$("#hiden").click(function () {
		//	$("#notbox").slideUp();
		//	$("#hiden").hide();
		//	$("#shown").show();
		//});
	</script>
    <script>
        $("#alert-jpg").hide();
        $("#alert-png").hide();
		$("#alert-doc").hide();
        $("#btnmagfile").hide();
		$("#subgnaek").attr("disabled", true);
		$("#subgnaek").val("Agree before Submit");
		$("#agrchkbx").bind("change", function () {
			var t1 = document.getElementById("poettxt");
			var t2 = document.getElementById("singtxt");
			var t3 = document.getElementById("dancetxt");
			var t4 = document.getElementById("insttxt");
			var t5 = document.getElementById("dramatxt");
			var chk = document.getElementById("agrchkbx");
			if (t1.selectedIndex == 0) {
				alert("Please Choose any option for Poetry Recitation.");
				chk.checked = false;
				t1.focus();
			}
			else if (t2.selectedIndex == 0) {
				alert("Please Choose any option for Singing.");
				chk.checked = false;
				t2.focus();
			}
			else if (t3.selectedIndex == 0) {
				alert("Please Choose any option for Dancing.");
				chk.checked = false;
				t3.focus();
			}
			else if (t4.selectedIndex == 0) {
				alert("Please Choose any option for Instrument Playing.");
				chk.checked = false;
				t4.focus();
			}
			else if (t5.selectedIndex == 0) {
				alert("Please Choose any option for Drama.");
				chk.checked = false;
				t5.focus();
			}
			else {
				alert("You can submit your participation only at once.");
				$("#subgnaek").attr("disabled", false);
				$("#subgnaek").val("Submit Paricipation");
			}
		});
		$("#magfile").bind("change", function () {
			$("#alert-jpg").hide();
			$("#alert-png").hide();
			$("#alert-doc").hide();
			$("#btnmagfile").hide();
			var ext = $("#magfile").val().split('.').pop().toLowerCase();
			var a = document.getElementById("magfile");
			if ($.inArray(ext, ['jpg', 'jpeg']) != -1) {
				$("#alert-jpg").fadeIn();
				$("#alert-jpg").fadeOut();
				$("#alert-jpg").fadeIn();
				this.value = null;
			}
			else if ($.inArray(ext, ['png']) != -1) {
				$("#alert-png").fadeIn();
				$("#alert-png").fadeOut();
				$("#alert-png").fadeIn();
				this.value = null;
			}
			else if ($.inArray(ext, ['doc', 'docx']) != -1) {
				$("#alert-doc").fadeIn();
				$("#alert-doc").fadeOut();
				$("#alert-doc").fadeIn();
				this.value = null;
			}

			else {
				if ($.inArray(ext, ['pdf', 'txt']) == -1) {
					alert("Invalid File Type. It shoud be pdf or txt file.");
					this.value = null;
				}
				else {
					$("#btnmagfile").fadeIn();
				}
			}
		});
    </script>
</body>
</html>
