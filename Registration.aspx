<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>CVGClub: Registration</title>
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
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>    
    <script src="MyJS/MyJS.js"></script>
    <style>
        body, html
        {
            height:100%;
            margin:0px;
        }
        #myPage
        { 
            background:#3b3251;
        }
		.input-group{
			margin-bottom:10px;
		}
		.form-control{
			font-weight:bold;
			background:white;
		}
		.mytxt{
			text-transform:uppercase;
		}
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
		</nav><br /><br /><br />
		<div class="container-fluid" style="color:black;min-height:100vh;">
			<div class="row" style="font-family:Calibri; font-size:17px;">
				<div class="col-sm-3"></div>
				<div class="col-sm-6 form-group" style="background:ghostwhite;border-radius:10px;padding-left:15px;padding-right:15px;">
					<div class="row">
					<h3 style="font-weight:bold;text-align:center;"><span class="glyphicon glyphicon-registration-mark"></span>  Registration Form</h3><hr />
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Email ID"><span class="glyphicon glyphicon-envelope"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="emtxt" CssClass="form-control" TextMode="Email" runat="server" placeholder="Email ID" MaxLength="50" style="text-transform:lowercase;"></asp:TextBox>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Roll Number"><span class="glyphicon glyphicon-hand-right"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="rolltxt" CssClass="form-control mytxt" TextMode="Number" runat="server" placeholder="Roll Number" MaxLength="20"></asp:TextBox>
								<span class="input-group-addon" data-toggle="tooltip" data-placement="left" title="Instruction for Roll Number"><span id="irn" class="glyphicon glyphicon-exclamation-sign" style="cursor:pointer;"></span></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="First Name"><span class="glyphicon glyphicon-user"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="fntxt" CssClass="form-control mytxt" runat="server" placeholder="First Name" MaxLength="20"></asp:TextBox>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Last Name"><span class="glyphicon glyphicon-user"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="lntxt" CssClass="form-control mytxt" runat="server" placeholder="Last Name" MaxLength="20"></asp:TextBox>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Date of Birth"><span class="glyphicon glyphicon-calendar"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="dobtxt" CssClass="form-control" TextMode="Date" runat="server" placeholder="Date of Birth"></asp:TextBox>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Gender"><span class="glyphicon glyphicon-yen"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:DropDownList runat="server" ID="gentxt" CssClass="form-control">
									<asp:ListItem>SELECT GENDER</asp:ListItem>
									<asp:ListItem>MALE</asp:ListItem>
									<asp:ListItem>FEMALE</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="College"><span class="glyphicon glyphicon-blackboard"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:DropDownList runat="server" ID="coltxt" CssClass="form-control">
									<asp:ListItem>SELECT COLLEGE</asp:ListItem>
									<asp:ListItem>SCRIET</asp:ListItem>
									<asp:ListItem>OTHER</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Gender"><span class="glyphicon glyphicon-blackboard"></span></span>
								<asp:TextBox runat="server" ID="ocoltxt" CssClass="form-control mytxt" MaxLength="100" placeholder="College ( if other than SCRIET )"></asp:TextBox>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Department"><span class="glyphicon glyphicon-briefcase"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:DropDownList runat="server" ID="ndepttxt" CssClass="form-control">
									<asp:ListItem>SELECT DEPARTMENT</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList runat="server" ID="depttxt" CssClass="form-control">
									<asp:ListItem>SELECT DEPARTMENT</asp:ListItem>
									<asp:ListItem>B.TECH</asp:ListItem>
									<asp:ListItem>MBA</asp:ListItem>
									<asp:ListItem>MCA</asp:ListItem>
									<asp:ListItem>OTHER</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Branch"><span class="glyphicon glyphicon-education"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox runat="server" ID="obrtxt" CssClass="form-control mytxt" MaxLength="50" placeholder="Enter Branch Name"></asp:TextBox>
								<asp:DropDownList runat="server" ID="brtxt" CssClass="form-control">
									<asp:ListItem>SELECT BRANCH</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList runat="server" ID="btechbrtxt" CssClass="form-control">
									<asp:ListItem>SELECT BRANCH</asp:ListItem>
                                    <asp:ListItem>AGRICULTURE ENGINEERING</asp:ListItem>
                                    <asp:ListItem>CHEMICAL ENGINEERING</asp:ListItem>
                                    <asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
                                    <asp:ListItem>ELECTRONICS & COMMUNICATION</asp:ListItem>
                                    <asp:ListItem>ELECTRONICS & INSTRUMENTATION</asp:ListItem>
                                    <asp:ListItem>MECHANICAL ENGINEERING</asp:ListItem>
                                    <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList runat="server" ID="mbabrtxt" CssClass="form-control">
									<asp:ListItem>SELECT BRANCH</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                    <asp:ListItem>MBA (HA)</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList runat="server" ID="mcabrtxt" CssClass="form-control">
									<asp:ListItem>NO BRANCH</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Date of Birth"><span class="glyphicon glyphicon-flag"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:DropDownList runat="server" ID="yeartxt" CssClass="form-control">
									<asp:ListItem>SELECT YEAR</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList runat="server" ID="btechyeartxt" CssClass="form-control">
									<asp:ListItem>SELECT YEAR</asp:ListItem>
									<asp:ListItem>1st YEAR</asp:ListItem>
									<asp:ListItem>2nd YEAR</asp:ListItem>
									<asp:ListItem>3rd YEAR</asp:ListItem>
									<asp:ListItem>4th YEAR</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList runat="server" ID="myeartxt" CssClass="form-control">
									<asp:ListItem>SELECT YEAR</asp:ListItem>
									<asp:ListItem>1st YEAR</asp:ListItem>
									<asp:ListItem>2nd YEAR</asp:ListItem>
								</asp:DropDownList>

							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="10 Digit Mobile Number"><span class="glyphicon glyphicon-calendar"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="conttxt" CssClass="form-control mytxt" TextMode="Number" runat="server" placeholder="Contact ( 10 Digit )"></asp:TextBox>
							</div>
						</div>
					</div>
					<div class="input-group">
						<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Upload Picture"><span class="glyphicon glyphicon-camera"></span></span>
						<asp:FileUpload runat="server" ID="pic" CssClass="form-control" />
						<span class="input-group-addon" data-toggle="tooltip" data-placement="left" title="Instruction for Upload"><span id="ipu" class="glyphicon glyphicon-exclamation-sign" style="cursor:pointer;"></span></span>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Create Password"><span class="glyphicon glyphicon-lock"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="pastxt" CssClass="form-control" TextMode="Password" runat="server" MaxLength="20" placeholder="Create Password"></asp:TextBox>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group">
								<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Re-enter Password"><span class="glyphicon glyphicon-lock"></span> <sup><b style="color:red;">*</b></sup></span>
								<asp:TextBox ID="repastxt" CssClass="form-control" TextMode="Password" runat="server" MaxLength="20" placeholder="Re-enter Password"></asp:TextBox>
							</div>
						</div>
					</div>
					Note - The mark with <b style="color:red;">*</b> are Required.
					<h4 style="text-align:center;"><a href="Login" data-toggle="tooltip" data-placement="top" title="Go to Login Page" style="text-decoration:none;color:black;">Already Registered <span class="glyphicon glyphicon-ok-circle"></span></a><br /><br />
					<asp:CheckBox runat="server" ID="agrtnc" Text="&ensp;Agree" /><br /><br />
					<asp:Button ID="subregbtn" CssClass="btn btn-success btn-lg text-center" runat="server" OnClick="subregbtn_Click" /></h4>
					<br />
				</div>
				<div class="col-sm-3"></div>
			</div>
    
			<br /><br /><footer class="container-fluid text-center" style="color:white;">
				<a href="#myPage" title="To Top">
					<span class="glyphicon glyphicon-chevron-up"></span>
				</a><br />
				<h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
				<p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
			</footer>
	
		</div>
    </form>
	<script type="text/javascript">
		$(document).ready(function () {
			$('[data-toggle="tooltip"]').tooltip();
		});
		
		$("#obrtxt").hide();
		$("#depttxt").hide();
		$("#btechbrtxt").hide();
		$("#mbabrtxt").hide();
		$("#mcabrtxt").hide();
		$("#btechyeartxt").hide();
		$("#myeartxt").hide();

		$("#ocoltxt").attr("disabled", true);
		$("#ndepttxt").attr("disabled", true);
		$("#brtxt").attr("disabled", true);
		$("#yeartxt").attr("disabled", true);
		$("#subregbtn").attr("disabled", true);
		$("#subregbtn").val("Please agree T&C before submit");
		var chk = document.getElementById("agrtnc");
		var em = document.getElementById("emtxt");
		var roll = document.getElementById("rolltxt");
		var fname = document.getElementById("fntxt");
		var lname = document.getElementById("lntxt");
		var dob = document.getElementById("dobtxt");
		var gender = document.getElementById("gentxt");
		var col = document.getElementById("coltxt");
		var ocol = document.getElementById("ocoltxt");
		var dept = document.getElementById("depttxt");
		var obr = document.getElementById("obrtxt");
		var btechbr = document.getElementById("btechbrtxt");
		var mbabr = document.getElementById("mbabrtxt");
		var mcabr = document.getElementById("mcabrtxt");
		var btechyr = document.getElementById("btechyeartxt");
		var myr = document.getElementById("myeartxt");
		var con = document.getElementById("conttxt");
		var p = document.getElementById("pic");
		var pas = document.getElementById("pastxt");
		var repas = document.getElementById("repastxt");
		$("#conttxt").blur(function () {
			if (con.value == "") {

			}
			else if (con.value < 999999999 || con.value > 9999999999) {
				alert("Invalid Contact Number. Enter 10 Digit Only.");
				con.value = null;
				con.focus();
			}
		});
		$("#coltxt").change(function () {
			if (col.selectedIndex == 0) {
				$("#ocoltxt").attr("disabled", true);
				$("#ndepttxt").show();
				$("#depttxt").hide();
			}
			else if (col.selectedIndex == 1) {
				$("#ocoltxt").attr("disabled", true);
				$("#ndepttxt").hide();
				$("#depttxt").show();
			}
			else if (col.selectedIndex == 2) {
				$("#ocoltxt").attr("disabled", false);
				$("#ndepttxt").hide();
				$("#depttxt").show();
			}
		});
		$("#depttxt").change(function () {
			if (dept.selectedIndex == 0) {
				$("#brtxt").show();
				$("#obrtxt").hide();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").hide();
				$("#yeartxt").show();
				$("#btechyeartxt").hide();
				$("#myeartxt").hide();
			}
			else if (dept.selectedIndex == 1) {
				$("#brtxt").hide();
				$("#obrtxt").hide();
				$("#btechbrtxt").show();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").hide();
				$("#yeartxt").hide();
				$("#btechyeartxt").show();
				$("#myeartxt").hide();
			}
			else if (dept.selectedIndex == 2) {
				$("#brtxt").hide();
				$("#obrtxt").hide();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").show();
				$("#mcabrtxt").hide();
				$("#yeartxt").hide();
				$("#btechyeartxt").hide();
				$("#myeartxt").show();
			}
			else if (dept.selectedIndex == 3) {
				$("#brtxt").hide();
				$("#obrtxt").hide();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").show();
				$("#yeartxt").hide();
				$("#btechyeartxt").hide();
				$("#myeartxt").show();
			}
			else if (dept.selectedIndex == 4) {
				$("#brtxt").hide();
				$("#obrtxt").show();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").hide();
				$("#yeartxt").hide();
				$("#btechyeartxt").show();
				$("#myeartxt").hide();
			}
		});
		$("#pic").bind("change", function () {
            var ext = $("#pic").val().split('.').pop().toLowerCase();
			if ($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
				alert("Invalid File Type. It shoud be jpg, jpeg or png file.");
				p.value = null;
			}
			else {
				if (p.files[0].size > 512000) {
					alert("Invalid file size. It should be less than or equal to 500kb.");
					p.value = null;
				}
			}
		});


		$("#agrtnc").bind("change", function () {
			if (chk.checked == true) {
				if (em.value == "") {
					alert("Please enter Email ID.");
					chk.checked = false;
					em.focus();
				}
				else if (roll.value == "") {
					alert("Please enter Roll Number.");
					chk.checked = false;
					roll.focus();
				}
				else if (fname.value == "") {
					alert("Please enter First Name.");
					chk.checked = false;
					fname.focus();
				}
				else if (lname.value == "") {
					alert("Please enter Last Name.");
					chk.checked = false;
					lname.focus();
				}
				else if (dob.value == "") {
					alert("Please enter Date of Birth.");
					chk.checked = false;
					dob.focus();
				}
				else if (gender.selectedIndex == 0) {
					alert("Please select your Gender.");
					chk.checked = false;
					gender.focus();
				}
				else if (col.selectedIndex == 0) {
					alert("Please select your College.");
					chk.checked = false;
					col.focus();
				}
				else if (dept.selectedIndex == 0) {
					alert("Please select your Department.");
					chk.checked = false;
					dept.focus();
				}
				else if (con.value == "") {
					alert("Please enter 10 Digit Mobile Number.");
					chk.checked = false;
					con.focus();
				}
				else if (pas.value == "") {
					alert("Please Create Password");
					chk.checked = false;
					pas.focus();
				}
				else {
					if (col.selectedIndex == 2 && ocol.value == "") {
						alert("Please enter College Name.");
						chk.checked = false;
						ocol.focus();
					}
					else if ((dept.selectedIndex == 1 && btechbr.selectedIndex == 0) || (dept.selectedIndex == 2 && mbabr.selectedIndex == 0) || (dept.selectedIndex == 4 && obr.value == "")) {
						if (dept.selectedIndex == 4 && obr.value == "") {
							alert("Please Enter your Branch.");
							chk.checked = false;
							obr.focus();
						}
						else {
							alert("Please select your Branch.");
							chk.checked = false;
							btechbr.focus();
							mbabr.focus();
							mcabr.focus();
						}
					}
					else if ((dept.selectedIndex == 1 && btechyr.selectedIndex == 0) || (dept.selectedIndex == 4 && btechyr.selectedIndex == 0) || (dept.selectedIndex == 2 && myr.selectedIndex == 0) || (dept.selectedIndex == 3 && myr.selectedIndex == 0)) {
						alert("Please select your Year.");
						chk.checked = false;
						btechyr.focus();
						myr.focus();
					}
					else if (pas.value != repas.value) {
						alert("Password does not match.");
						chk.checked = false;
						repas.value = "";
						repas.focus();
					}
					else {
						$("#subregbtn").attr("disabled", false);
						$("#subregbtn").val("Submit");
					}
				}
			}
			else {
				$("#subregbtn").attr("disabled", true);
				$("#subregbtn").val("Please agree T&C before submit");
			}
		});
		$("#irn").click(function () {
			alert("You can enter your 9 digit Roll Number, if you haven't then you can enter your two digit roll number. like - 3 or 28 etc.")
		});
		$("#ipu").click(function () {
			alert("Upload you passport size picture, size must be lest than 500KB.")
		});
	</script>
</body>
</html>
