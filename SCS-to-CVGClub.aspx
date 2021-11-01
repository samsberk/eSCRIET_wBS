<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SCS-to-CVGClub.aspx.cs" Inherits="SCS_to_CVGClub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122943421-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-122943421-1');
    </script>
    <title>A journey from SCS to CVGClub</title>
    <meta name="google-site-verification" content="14WxE_r0dxgHMhJIoxiODhdgq9mPksFOXFzJOn7kYGo" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>  
    <meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <!--font-family: 'Hind', sans-serif;
        font-family: 'Gamja Flower', cursive;
        font-family: 'Hi Melody', cursive;
        font-family: 'Freckle Face', cursive;
        font-family: 'Faster One', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <script src="MyJS/MyJS.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"/>
	<style>
		.glbck{
			background:ghostwhite;
			color:gray;
			padding:15px;
			border-radius:50%;
			font-size:20px;
			box-shadow:1px 2px 25px gray;
			transition:all 1s;
		}
		.glbck:hover{
			color:black;
			box-shadow:1px 2px 25px black;
			transition:all 1s;
		}
		
		.p-heading{
			font-family:muli;
			font-size:25px;
			color:#1b1818;
			font-weight:bold;
			letter-spacing:2px;
		}
		.wbox{
			min-height:100px;
			width:100%;
			background:rgba(255, 255, 255, 0.6);
			border:1px solid white;
			border-radius:5px;
			color:black;
			font-family:muli;
			font-size:18px;
			padding:10px;
			text-align:justify;
			user-select:none;
		}
		.panel-heading{
			padding:5px!important;
			font-family:muli;
		}
		#myImg,#myImg1,#myImg2,#myImg3,#myImg4,#myImg5,#myImg6,#myImg7,#myImg8,#myImg9,#myImg10,#myImg11,#myImg12,#myImg13,#myImg14,#myImg15,#myImg16,#myImg17,#myImg18,#myImg19,#myImg20,#myImg21,#myImg22,#myImg23,#myImg24,#myImg25,#myImg26,#myImg27 {
			border-radius: 5px;
			cursor: pointer;
			transition: 0.3s;
		}

			#myImg:hover,#myImg1:hover,#myImg2:hover,#myImg3:hover,#myImg4:hover,#myImg5:hover,#myImg6:hover,#myImg7:hover,#myImg8:hover,#myImg9:hover,#myImg10:hover,#myImg11:hover,#myImg12:hover,#myImg13:hover,#myImg14:hover,#myImg15:hover,#myImg16:hover,#myImg17:hover,#myImg18:hover,#myImg19:hover,#myImg20:hover,#myImg21:hover,#myImg22:hover,#myImg23:hover,#myImg24:hover,#myImg25:hover,#myImg26:hover,#myImg27:hover {
				opacity: 0.7;
			}

/* The Modal (background) */
		.modal {
			display: none; /* Hidden by default */
			position: fixed; /* Stay in place */
			z-index: 999999; /* Sit on top */
			padding-top: 60px; /* Location of the box */
			left: 0;
			top: 0;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0,0,0); /* Fallback color */
			background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
		}

/* Modal Content (Image) */
		.modal-content {
			margin: auto;
			display: block;
			width: 70%;
		}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
		#caption {
			margin: auto;
			display: block;
			width: 80%;
			max-width: 700px;
			text-align: center;
			color: #ccc;
			padding: 10px 0;
			height: 50px;
		}

/* Add Animation - Zoom in the Modal */
		.modal-content, #caption {
			animation-name: zoom;
			animation-duration: 0.6s;
		}

		@keyframes zoom {
			from {
				transform: scale(0)
			}

			to {
				transform: scale(1)
			}
		}

/* The Close Button */
		.close {
			position: absolute;
			top: 15px;
			right: 35px;
			color: #f1f1f1;
			font-size: 40px;
			font-weight: bold;
			transition: 0.3s;
		}

		.close:hover,
		.close:focus {
			color: #bbb;
			text-decoration: none;
			cursor: pointer;
		}

/* 100% Image Width on Smaller Screens */
		@media only screen and (max-width: 700px) {
			.modal-content {
				width: 95%;
			}
		}
	</style>
</head>
<body style="background-image:url('Images/journey.jpg');background-attachment:fixed;background-size:cover;background-position:center;" id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">
		<nav class="navbar navbar-default navbar-fixed-top mainnav ">
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
		<span class="p-heading"><span class="glyphicon glyphicon-chevron-right"></span> A Journey from <code>SCS</code> to <code>CVGClub...</code></span>
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-6">
					<h2 style="font-family:'Lucida Handwriting';font-size:80px;text-align:center;">About</h2>
					<div class="wbox">
						<p>
							<abbr data-toggle="tooltip" data-placement="top" title="SCRIET Cultural Society" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">SCS</abbr>
							was started in August 2010 by
							our student <b>Mr. Arpit Rastogi</b> (IT 2007-2011 Batch) along with
							<b>Er. Vijay Singh</b> (Lecturer CH Department). 
						</p>
						<p>
							&emsp;The formation of <abbr data-toggle="tooltip" data-placement="top" title="SCRIET Cultural Society" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">SCS</abbr>
							wouldn't have been complete without the support of certain people and the college students.
							It has been a collective teamwork over the years by the members in giving shape  to.
						</p>
						<p>
							&emsp;Special mention goes to <b>Sumit Kaushik</b>, <b>Shubhanshu Chatterjee</b>, <b>Varun Bheda</b>, <b>Aditya
							Sagar</b> and <b>Rishi Pandey</b> who helped in laying the framework of 
							<abbr data-toggle="tooltip" data-placement="top" title="SCRIET Cultural Society" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">SCS</abbr>.
							<b>Sumit Kaushik</b> and <b>Shubhanshu Chatterjee</b> gave the valuable
							momentum the society needed in its infant stages. All the presidents of the different clubs have led it with full enthusiasm. Also the young brigade of active workers that
							included <b>Nicy Sharma</b>, <b>Tarun Kumar</b>, <b>Piyush Gaur</b>, <b>Vivek Singh</b>, <b>Aman Upadhyay</b>, 
							<b>Sakshi Tandon</b>, <b>Shweta Singh</b>, <b>Snigdha Ghosh</b>, <b>Yasha Sirohi</b>, <b>Purnima Gaur</b>,
							<b>Prince Chaturvedi</b>, <b>Richa Chaudhary</b>, <b>Sangeeta Rawat</b>, <b>Ambika Talan</b>, <b>Rachit Choudhary</b>, 
							<b>Preeti Barthwal</b>, <b>Ankit Singh</b>, <b>Ansh Shrivastav</b>, <b>Anant Tyagi</b>, <b>Mohit Pradhan</b>, 
							<b>Amit Verma</b>, <b>Nitish Goswami</b>, <b>Natasha Tomar</b>, <b>Surbhi Garg</b>, <b>Anchal Yadav</b>, 
							<b>Deepak Saini</b>, <b>Vibhu Gaur</b>, <b>Tarun Sharma</b>, <b>Abhishek Verma</b> and <b>Abhijeet Singh</b> were all
							there at the start and have continued their support throughout.
						</p>
						<p>
							&emsp;It is not just these selected people but a whole set of unsung heroes who have made all this possible and are continuing
							to do so. The most important help to the society has been the support of <b>Colonel M C Govil</b> our Administrative Officer and
							<b>Er. Vijay Singh</b> our faculty advisor and <abbr data-toggle="tooltip" data-placement="top" title="SCRIET Cultural Society" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">SCS</abbr> incharge. 
						</p>
						<p>
							&emsp;<b>Er. Vijay Singh</b> sir is leading the society beautifully and his presence has been a big morale booster for the students.
							The society has been formed to organize various cultural and technical events in our college . The society's motto
							<code style="background:none;">Innovation * Constancy * Purpose</code> means to innovate constantly with a purpose and to provide the students of the college
							a platform to showcase and enhance their personality and soft skills.
						</p>
						<p>
							&emsp;After this, the journey continued with the next generation members presenting different cultural and technical events as
							<code>Techlon</code> and so on. In the leadership of 2011-2015 Batch , college was winner at <code style="background:none;">Rang De Basanti Event</code> organised
							by IIMT, Meerut  and participated in <code style="background:none;">Rendezous – IIT Delhi</code>.
						</p>
						<p>
							&emsp;In the year 2016, 2012-2016 batch come with a new concept to organize annual fest  <code>Convergence</code> this was a big success and
							motivates the next generation . The event was lead by <b>Mr. Shivam Shrivastava</b> and 2012-2016 batch members taking
							registration from <abbr data-toggle="tooltip" data-placement="top" title="Convergence of Venterous Genesis" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">CVG</abbr> Android application designed by <b>Mr. Vishal Dev</b>. 
						</p>
						<p>
							&emsp;In 2017, the Journey continues in the form of new version of <code>Convergence</code> as <code>Convergence-17</code>. In this event college
							presented its own Musical Band Team with its own compositions lead by <b>Mr. Gaurav Gautam</b>.
						</p>
						<p>
							&emsp;In the year 2018, as time required <abbr data-toggle="tooltip" data-placement="top" title="SCRIET Cultural Society" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">SCS</abbr>
							reforms itself in <abbr data-toggle="tooltip" data-placement="top" title="Convergence of Venterous Genesis Club" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">CVGClub</abbr>
							by <b>Mr. Vaibhav Pandey</b> (EI) and 2014-2018 Batch Members, with motivation of the Senior Members and Enthusiasm of Juniors
							under Supervision of College Lecturers and Dean Technology <b>Prof. Jaimala</b>. 
						</p>
						<p>
							&emsp;In the formation of <abbr data-toggle="tooltip" data-placement="top" title="Convergence of Venterous Genesis Club" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">CVGClub</abbr>
							<b>Rashmi Rupam</b>, <b>Swatantra Gupta</b>, <b>Shivam Kakkar</b>, <b>Akash Kumar Jaiswal</b>, <b>Chandan Kushwaha</b>, <b>Deeksha Chaturvedi</b>, <b>Shivam Kumar Vishwakarma</b>
							and all other members support is unforgettable.
						</p>
						<p>
							&emsp;<a href="https://www.linkedin.com/in/samsberk/" target="_blank" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile"><kbd>Mr. Shivam Kumar Vishwakarma</kbd></a>
							(IT 2017-2020 Batch), Website Designer of <abbr data-toggle="tooltip" data-placement="top" title="Convergence of Venterous Genesis Club" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">CVGClub</abbr> role play was very appraisable to provide a digital Space to <abbr data-toggle="tooltip" data-placement="top" title="Convergence of Venterous Genesis Club" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">CVGClub</abbr>
							in Supervision of <b>Asst. Prof Er. Pravin Pawar</b> (IT).
						</p>
						<p>
							&emsp;The Club organized its technical Carnival As <code>TechVergence'18</code> named by <b>Asst. Prof Sachin Singhal</b> with a
							massive success. College Cultural Commettie Convener <b>Ms. Savita Mittal</b> leads the Teachers body of six different Clubs...
							<br />&ensp;<span class="glyphicon glyphicon-arrow-right"></span> Octavas<br />
							&ensp;<span class="glyphicon glyphicon-arrow-right"></span> Arperture<br />
							&ensp;<span class="glyphicon glyphicon-arrow-right"></span> Belletrist<br />
							&ensp;<span class="glyphicon glyphicon-arrow-right"></span> Sigma<br />
							&ensp;<span class="glyphicon glyphicon-arrow-right"></span> Enquisitia<br />
							&ensp;<span class="glyphicon glyphicon-arrow-right"></span> Fine Arts
						</p>
						<p>
							&emsp;Convener Members of clubs regularly performs different events, seminars and workshops alongwith student club members.
							Belletrist Club Convener <b>Er. Vijyant Maan</b> (Asst. Prof. ME) actively organized <code style="background:none;">Hindi-Urdu Shero-Shayari</code> Competition
							<code style="background:none;">Sukhanvar</code> as he is also a very Good Poet . 
						</p>
						<p>
							&emsp;Technical team is also doing very well and all the registrations are now taken through Club Website. 
							In this awesome Journey, different members play their role with too much dedication. Without which nothing was possible.
							The CVG Club is paying respect to the senior College Passout members, demands energy from the present members and welcomes
							to the next generations...
						</p>
						<br /><p style="text-align:right;font-style:italic;">Team <abbr data-toggle="tooltip" data-placement="top" title="Convergence of Venterous Genesis Club" style="text-decoration:dotted;letter-spacing:2px;font-weight:bold;color:brown;">CVGClub</abbr>&emsp;</p>
					</div>
				</div>
				<div class="col-sm-5"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/rashmi.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
											
												Rashmi Rupam<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
											                                          
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/swatantra.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Swatantra Gupta<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/shivam.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Shivam Kakkar<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/vaibhav.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Vaibhav Pandey<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/nidhi.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Nidhi Saxena<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/shitanshu.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
											Shitanshu Pandey<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/riya.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Riya Sharma<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/jigyasa.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Jigyasa Agrawal<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/dhirandra.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Dhirendra Yadav <br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/neha.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Neha Katiyar<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
							<div class="panel panel-success slide">
								<div class="panel-body" style="padding:3px;">
									<div style="width:100%;"><img src="Images/SCStoCVGClub/ankit.jpg" style="width:100%;"/></div>
								</div>
								<div class="panel-heading">
										Ankit Chauhan<br />
										<i class="fas fa-briefcase"></i> : 2014-2018<br />
										<i class="fas fa-graduation-cap"></i> : B.Tech<br />
								</div>
							</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/shivani.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Shivani Atray<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/krishna.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Km. Krishna<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/pinki.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Km. Pinki<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/javed.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Mo. Javed<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/aslam.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Aslam Khan<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/kanika.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Kanika Sakhya<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/arpit.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Arpit Malik<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/devendra.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Devendra Yadav<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/swapnil.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Km. Swapnil<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/prabhat.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Prabhat Sagar<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/rahul.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Rahul Raghuvanshi<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/ankit-2.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Ankit Singh<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
								<div class="col-xs-6"><br />
									<div class="panel panel-success slide">
										<div class="panel-body" style="padding:3px;">
											<div style="width:100%;"><img src="Images/SCStoCVGClub/abhishek.jpg" style="width:100%;"/></div>
										</div>
										<div class="panel-heading">
												Abhishek Tripathi<br />
												<i class="fas fa-briefcase"></i> : 2014-2018<br />
												<i class="fas fa-graduation-cap"></i> : B.Tech<br />
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-5"><br />
					<div class="wbox">
						<span class="p-heading" style="font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span> 2012-2016 Batch Active Gems :</span><br />
						<p>
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Shivam Shrivastava<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Shristi Ojha<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Prakhar Srivastava<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Saurabh Kumar<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Prabhat Ranjan<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Satyendra gautam<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Vishal Singh<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Rajat <br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Ishani Agrawal<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Shubham Kumar<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Akshay Bhatnagar<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Ashish pratap singh<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Abhishek Singh<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Monish<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Yogesh jaiswal<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Pooja Gangwar<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Khushbu Chaudhary<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Shailesh Yadav<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Abhijeet Singh<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Priya<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Shaguntala Gautam<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Monika<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Shristi Achari<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Arshi <br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Divyansh Chaudhary<br />
						</p>
					</div>
				</div>
				<div class="col-sm-5"><br />
					<div class="wbox">
						<span class="p-heading" style="font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span> 2013-2017 Batch Active Gems :</span>
						<p>
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Gaurav Gautam<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Palash Jain<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Smriti Pandey<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Sidhantika<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Hemant Kumar<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Gaurav Yadav<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> K K Sharma<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Brilliance Sareen<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Amir Haidar<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Rohit Maurya<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Mohit Anand<br />
						</p>
					</div><br />
					<div class="wbox">
						<span class="p-heading" style="font-size:20px;"><span class="glyphicon glyphicon-chevron-right"></span> 2015 & Previous Batch Active Gems :</span>
						<p>
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Anas Ali<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Garima<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Harsh Dixit<br />
							&emsp;<span class="glyphicon glyphicon-arrow-right"></span> Ayush Singh<br />
							&emsp;&emsp;and many more...
						</p>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<span class="p-heading"><code><span class="glyphicon glyphicon-chevron-right"></span> These are just names, a lot of stars presently
						doing well in their career contribute their skills and dedication to this club,<br /> Pictures says a lot...</code></span><br />
					<br /><br />
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="panel-body" style="background:rgba(5, 5, 5, 0.8);padding-top:0px;border-radius:5px;">
				<h2 style="text-align:center;font-family:muli;font-weight:bold;color:white;">Picture Gallary</h2>
				<div class="row">
					<div class="col-sm-6">
						<div class="row">
							<div class="col-xs-6"><br />
								<img id="myImg" src="Images/SCStoCVGClub/p1.jpg" style="width:100%;"/><br /><br />
								<img id="myImg1" src="Images/SCStoCVGClub/p2.jpg" style="width:100%;"/><br /><br />
								<img id="myImg2" src="Images/SCStoCVGClub/p3.jpg" style="width:100%;"/><br /><br />
								<img id="myImg3" src="Images/SCStoCVGClub/p4.jpg" style="width:100%;"/><br /><br />
								<img id="myImg4" src="Images/SCStoCVGClub/p5.jpg" style="width:100%;"/><br /><br />
								<img id="myImg5" src="Images/SCStoCVGClub/p6.jpg" style="width:100%;"/><br /><br />
								<img id="myImg6" src="Images/SCStoCVGClub/p7.jpg" style="width:100%;"/><br /><br />
							</div>
							<div class="col-xs-6"><br />
								<img id="myImg7" src="Images/SCStoCVGClub/p8.jpg" style="width:100%;"/><br /><br />
								<img id="myImg8" src="Images/SCStoCVGClub/p9.jpg" style="width:100%;"/><br /><br />
								<img id="myImg9" src="Images/SCStoCVGClub/p10.jpg" style="width:100%;"/><br /><br />
								<img id="myImg10" src="Images/SCStoCVGClub/p11.jpg" style="width:100%;"/><br /><br />
								<img id="myImg11" src="Images/SCStoCVGClub/p12.jpg" style="width:100%;"/><br /><br />
								<img id="myImg12" src="Images/SCStoCVGClub/p13.jpg" style="width:100%;"/><br /><br />
								<img id="myImg13" src="Images/SCStoCVGClub/p14.jpg" style="width:100%;"/><br /><br />
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="row">
							<div class="col-xs-6"><br />
								<img id="myImg14" src="Images/SCStoCVGClub/p15.jpg" style="width:100%;"/><br /><br />
								<img id="myImg15" src="Images/SCStoCVGClub/p16.jpg" style="width:100%;"/><br /><br />
								<img id="myImg16" src="Images/SCStoCVGClub/p17.jpg" style="width:100%;"/><br /><br />
								<img id="myImg17" src="Images/SCStoCVGClub/p18.jpg" style="width:100%;"/><br /><br />
								<img id="myImg18" src="Images/SCStoCVGClub/p19.jpg" style="width:100%;"/><br /><br />
								<img id="myImg19" src="Images/SCStoCVGClub/p20.jpg" style="width:100%;"/><br /><br />
								<img id="myImg20" src="Images/SCStoCVGClub/p21.jpg" style="width:100%;"/><br /><br />
							</div>
							<div class="col-xs-6"><br />
								<img id="myImg21" src="Images/SCStoCVGClub/p22.jpg" style="width:100%;"/><br /><br />
								<img id="myImg22" src="Images/SCStoCVGClub/p23.jpg" style="width:100%;"/><br /><br />
								<img id="myImg23" src="Images/SCStoCVGClub/p24.jpg" style="width:100%;"/><br /><br />
								<img id="myImg24" src="Images/SCStoCVGClub/p25.jpg" style="width:100%;"/><br /><br />
								<img id="myImg25" src="Images/SCStoCVGClub/p26.jpg" style="width:100%;"/><br /><br />
								<img id="myImg26" src="Images/SCStoCVGClub/p27.jpg" style="width:100%;"/><br /><br />
								<img id="myImg27" src="Images/SCStoCVGClub/p28.jpg" style="width:100%;"/><br /><br />
							</div>
						</div>
						<br /><br /><h3 style="text-align:right;font-family:muli;font-weight:bold;color:white;">... and many more to come.<br />
										Thank You...<br /><br />
										<kbd><i>Team CVGClub</i></kbd>
						            </h3>

					</div>
				</div>
				<br /><br /><footer class="container-fluid text-center" style="color:white;font-family:muli;">
						<a href="#myPage" title="To Top">
							<span class="glyphicon glyphicon-chevron-up"></span>
						</a><br />
						<h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
						<p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
					</footer>
			</div>
			<!-- The Modal -->
			<div id="myModal" class="modal">
				<!-- The Close Button -->
				<span class="close">&times;</span>
				<!-- Modal Content (The Image) -->
				<img class="modal-content" id="img01"/>
				<!-- Modal Caption (Image Text) -->
				<div id="caption"></div>
			</div>
		</div>
		
    </form>
	<script>
		$(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
		});
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg');
		var img1 = document.getElementById('myImg1');
		var img2 = document.getElementById('myImg2');
		var img3 = document.getElementById('myImg3');
		var img4 = document.getElementById('myImg4');
		var img5 = document.getElementById('myImg5');
		var img6 = document.getElementById('myImg6');
		var img7 = document.getElementById('myImg7');
		var img8 = document.getElementById('myImg8');
		var img9 = document.getElementById('myImg9');
		var img10 = document.getElementById('myImg10');
		var img11 = document.getElementById('myImg11');
		var img12 = document.getElementById('myImg12');
		var img13 = document.getElementById('myImg13');
		var img14 = document.getElementById('myImg14');
		var img15 = document.getElementById('myImg15');
		var img16 = document.getElementById('myImg16');
		var img17 = document.getElementById('myImg17');
		var img18 = document.getElementById('myImg18');
		var img19 = document.getElementById('myImg19');
		var img20 = document.getElementById('myImg20');
		var img21 = document.getElementById('myImg21');
		var img22 = document.getElementById('myImg22');
		var img23 = document.getElementById('myImg23');
		var img24 = document.getElementById('myImg24');
		var img25 = document.getElementById('myImg25');
		var img26 = document.getElementById('myImg26');
		var img27 = document.getElementById('myImg27');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function(){
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img1.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img2.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img3.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img4.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img5.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img6.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img7.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img8.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img9.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img10.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img11.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img12.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img13.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img14.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img15.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img16.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img17.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img18.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img19.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img20.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img21.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img22.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img23.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img24.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img25.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img26.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img27.onclick = function () {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() { 
			modal.style.display = "none";
		}
	</script>
</body>
</html>
