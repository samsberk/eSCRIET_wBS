<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">  
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122943421-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'UA-122943421-1');
    </script>
    <title>CVGClub: Home</title>
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
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet" />
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
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
    <script src="MyJS/MyJS.js"></script>
    <style>
        .rsicon:hover
        {
			
            -webkit-animation:rotation 1s infinite linear;
        }
        @-webkit-keyframes rotation {
            from {
                -webkit-transform: rotate(0deg);
            }

            to {
                -webkit-transform: rotate(359deg);
            }
        }
        body, html
        {
            height:100%;
            margin:0px;
        }
        #myPage
        { 
            background-image:url('Images/gifbg11.gif');
            background-attachment:fixed;
            background-size:cover;
        }
        #scrldwn
        {height:auto;width:auto;
            position:relative;
            -webkit-animation: sdown 2s infinite;
            animation: sdown 2s infinite;
        }
        @-webkit-keyframes sdown{
            from {top:0px;}
            to{top:100px;}
        }
        @keyframes sdown{
            from{top:0px;}
            to{top:100px;}
        }
        .ttlt {
            -webkit-animation: mymove 4s infinite; /* Chrome, Safari, Opera */
            animation: mymove 4s infinite;
        }

/* Chrome, Safari, Opera */
        @-webkit-keyframes mymove {
            50% {
                text-shadow:1px 1px 10px black;
                letter-spacing:15px;
                font-size:51px;
            }
        }

/* Standard syntax */
        @keyframes mymove {
            50% {
                text-shadow:1px 1px 10px black;
                letter-spacing:15px;
                font-size:51px;
            }
        }
        @media screen and (max-width: 768px) 
{ .strtuphide { margin-top:10px;visibility:hidden;}}

        @keyframes fadeouts{
            from{opacity:1;}
            to{opacity:0;}            
        }
        #homeloader
        {position:fixed; left:0px; right:0px; z-index:9999;  width: 100%; height: 100%; background: url(../Images/loader.gif) center no-repeat #2c0d4a;}       
        #formd
        {display:none;}
        #ddmore
        {display:none;}
    </style>  
    <script>
        
    </script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <div id="homeloader"></div>
    <form id="formd" runat="server">
    <nav class="navbar navbar-default navbar-fixed-top mainnav slideanim">
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
    
    <div class="jumbotron text-center"> 
        <div style="height:70px;"><span class="ttlt" style="font-size:40px;font-family: 'Finger Paint';font-weight:bold;color:#ff7885;user-select:none;">CVGClub</span></div>
        <div style="margin-top:-7px;"><span style="font-size:26px;font-weight:bold;color:#ff7885;font-family: 'Hi Melody', cursive;text-shadow:1px 1px 10px black;margin-left:-10px;user-select:none;">Convergence of Venturous Genesis</span></div>
        <p style="font-weight:bold;font-family: 'Hi Melody', cursive;user-select:none;color:white;text-shadow:1px 1px 10px black;">Presents
            <br /><span style="font-size:20px;font-weight:bold;color:white;">ALUMNI REGISTRATION</span>
            <br /><a href="Alumni_Registration" style="font-weight:bold;font-family: 'Hi Melody', cursive;user-select:none;text-shadow:1px 1px 10px black;color:aqua;">Click here for more information</a>
            <br />
            <br /><span style="font-size:20px;font-weight:bold;color:white;">PLACEMENT REGISTRATION FOR 2019</span>
            <br /><a href="Placement_Registration" target="_blank" style="font-weight:bold;font-family: 'Hi Melody', cursive;user-select:none;text-shadow:1px 1px 10px black;color:aqua;">Click here for Registration</a></p>
        <div  id="scrldwn" style="color:#ff7885;">            
            <p style="font-weight:bold;font-family: 'Hi Melody', cursive;user-select:none;">Scroll down</p>
            <h2 style="margin-top:-1%;"><span class="glyphicon glyphicon-arrow-down"></span></h2><br />
        </div>
    </div><br />
    <div class="container-fluid slideanim" style="background:rgba(255, 120, 133, 0.00);">
        <br /><br /><div class="container text-justify">
            <p style="text-shadow:10px 1px 25px #ff7885;color:white;font-size:15px;">
                &emsp;&emsp;<b>CVGClub</b> is a student body of Sir Chhotu Ram Institute of Engineering
                & Technology, Meerut dedicated to organize various cultural, technical
                events and seminars in SCRIET. Born in 2018, with the motto of constantly
                innovating new ways to achieve the purpose of developing student personalities,
                today it is a body working for the betterment of Sir Chhotu Ram Institute
                of Engineering and Technology (SCRIET) in general and students in particular.
                With the achievements of the students of the SCRIET in various inter-college
                events and competition <b>CVGClub</b> aims to give them a better platform and giving
                them better chances. By hosting events like Techlon, Quiz Master, Workshops
                and Seminars CVGClub motivates the students to learn more and more, more over
                display of cutting-edge technology, motivational speeches to inspire the youth,
                and workshops to sharpen their skills, <b>CVGClub</b> aims to be a wholesome platform
                that students across India can look up to. <b>CVGClub</b> aims at grouping together the
                power of youth towards a better and a sustainable India. This student society is
                to Developed for student and developed by student for the development of student.
            </p><br />
                <p style="text-shadow:10px 1px 25px #ff7885;color:white;font-size:15px;font-weight:bold;text-align:right;"><i>Team CVGClub</i></p><br />
        </div>
    <br /><div class="container" style="background:#ff7885;min-height:200px;border-radius:10px;">
        <div id="Carousel1" class="carousel" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#Carousel1" data-slide-to="0" class="active"></li>
                <li data-target="#Carousel1" data-slide-to="1"></li>
                <li data-target="#Carousel1" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" style="height:300px;">
            <div class="item active">
                <img src="Images/SliderImages/hps1.jpg" style="width:100%; height:300px;">
            </div>
            <div class="item">
                <img src="Images/SliderImages/hps2.jpg" style="width:100%; height:300px;">
            </div>
            <div class="item">
                <img src="Images/SliderImages/hps3.jpg" style="width:100%; height:300px;">
            </div>
        </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#Carousel1" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#Carousel1" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div><br />
    <div id="services" class="container-fluid slideanim" style="font-size:16px;background:rgba(255, 120, 133, 0.60);min-height:200px;border-radius:15px;">
        <div class="row text-center slideanim">
            <div class="col-sm-4">
                <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-blackboard"></span> Notice Board</h3>
                <div style="width:100%;height:300px;background:ghostwhite;border-radius:10px; padding:2% 4% 2% 4%;font-size:20px;">
                    
                    <a href="Alumni_Registration" title="Alumni_Registration" style="text-decoration:none;text-align:center;"><span class="glyphicon glyphicon-chevron-right"></span> Alumni Registration <sup><span class="badge" style="color:white;background:red;">New</span></sup></a><br />
                    <a href="Placement_Registration" title="placement" target="_blank" style="text-decoration:none;text-align:center;"><span class="glyphicon glyphicon-chevron-right"></span> Placement Registration <sup><span class="badge" style="color:white;background:red;">New</span></sup></a><br />
                    <a href="SCS-to-CVGClub" title="A Journey form SCS to CVGClub" style="text-decoration:none;text-align:center;"><span class="glyphicon glyphicon-chevron-right"></span> SCS to CVGClub <sup><span class="badge" style="color:white;background:red;">New</span></sup></a><br />
                    <marquee direction="up" scrollamount="3" onmouseover="stop()" onmouseout="start()" style="height:270px;text-align:center;"><p style="font-weight:bold;">
                        <!--<a href="Registration" title="New Registration" style="text-decoration:none;">Registrations Open</a><br />
                        <a href="Events" title="Convergence 18" style="text-decoration:none;">CVG'18</a><br />
                        <a href="Games" title="Membership" style="text-decoration:none;">Membership</a><br />-->
                    </p></marquee>
                </div>
            </div>
            <div class="col-sm-8">
                <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-bell"></span> What's New</h3>
                <div style="width:100%;height:300px;background:ghostwhite;border-radius:10px; padding:2% 4% 2% 4%;">
                    <marquee direction="up" scrollamount="1" onmouseover="stop()" onmouseout="start()" style="height:270px;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="whatsnewala" Font-Bold="True" Font-Names="Calibri" Font-Size="18px" GridLines="None" ShowHeader="False">
                            <Columns>
                                <asp:BoundField DataField="Whatsnew" HeaderText="Whatsnew" SortExpression="Whatsnew" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="whatsnewala" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [Whatsnew] FROM [WNew] ORDER BY [SrNo]"></asp:SqlDataSource>
                    </marquee>
                </div><br />
            </div>
        </div>
        </div><br />
    
    <div id="ddesk" class="container-fluid">
      <div class="row text-center slideanim">
          <div class="col-sm-3"></div>
          <div class="col-sm-6 slideanim" style="background:rgba(255, 120, 133, 0.7);min-height:200px;border-radius:10px;padding-bottom:20px;padding-top:7px;">
              <h3 style="font-weight:bold;">From Director's Desk <span class="glyphicon glyphicon-pencil"></span></h3>
          </div>
          <div class="col-sm-3"></div>
      </div>
    </div><br />
    
    <div class="container-fluid text-center slideanim" style="background:rgba(255, 120, 133, 0.7);min-height:200px;border-radius:15px;">
        <h2 style="font-weight:bold;"><span class="glyphicon glyphicon-globe"></span> Our Achievements...</h2>
        <div class="row text-center slide" style="min-height:200px;padding-bottom:20px;">
            <div class="col-sm-4 text-center">
                <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-screenshot"></span> TechVergence</h3>
                <a href="Techlon" title="Techlon" target="_blank" style="color:#333333;text-decoration:none;">                    
                    <div id="techslider" class="carousel" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                    <div class="item active">
                        <img src="Images/SliderImages/ptech1.jpg" style="width:100%;border-radius:5px 5px 0px 0px;">
                    </div>
                    <div class="item">
                        <img src="Images/SliderImages/ptech2.jpg" style="width:100%; border-radius:5px 5px 0px 0px;">
                    </div>                            
                </div>                    
                </div>
                <div class="container-fluid" style="background:white;min-height:50px;text-align:center;border-radius:0px 0px 5px 5px;padding-top:6px;">
                    <h4>Technical & Educational</h4>
                </div></a>
            </div>
            <div class="col-sm-4">
                <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-tint"></span> Convergence</h3>
                <a href="Convergence" title="Annual Fest" target="_blank" style="color:#333333;text-decoration:none;">
                    <div id="cvgslider" class="carousel" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                    <div class="item active">
                        <img src="Images/SliderImages/cvgp1.jpg" style="width:100%;border-radius:5px 5px 0px 0px;">
                    </div>
                    <div class="item">
                        <img src="Images/SliderImages/cvgp2.jpg" style="width:100%;border-radius:5px 5px 0px 0px;">
                    </div>                            
                </div>                    
                </div>
                <div class="container-fluid" style="background:white;min-height:50px;text-align:center;border-radius:0px 0px 5px 5px;padding-top:6px;">
                    <h4>Annual Fest</h4>
                </div></a>
            </div>
            <div class="col-sm-4">
                <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-cd"></span> KhelUtsava</h3>
                <a href="Khelotsava" title="Khelotsava" target="_blank" style="color:#333333;text-decoration:none;">
                    <div id="eduslider" class="carousel" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                    <div class="item active">
                        <img src="Images/SliderImages/pkhel1.jpg" style="width:100%;border-radius:5px 5px 0px 0px;">
                    </div>
                    <div class="item">
                        <img src="Images/SliderImages/pkhel2.jpg" style="width:100%;border-radius:5px 5px 0px 0px;">
                    </div>                            
                </div>                    
                </div>
                <div class="container-fluid" style="background:white;min-height:50px;text-align:center;border-radius:0px 0px 5px 5px;padding-top:6px;">
                    <h4>Sports</h4>
                </div></a>
            </div>
        </div>
    </div><br />
  
    <div class="container text-center slideanim" style="background:rgba(255, 120, 133, 0.7);min-height:150px;border-radius:10px;">
        <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-comment"></span> Alumni's say...</h3>
        <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
        <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
            <div class="item active" style="padding-top:6%;padding-bottom:6%;height:200px; background:ghostwhite;">
                <h4 style="font-family:'Lucida Handwriting'"> </h4>
                <h4 style="font-weight:bold;"> </h4>
            </div>
            <div class="item" style="padding-top:6%;padding-bottom:6%;height:200px; background:ghostwhite;">
                <h4 style="font-family: 'Lucida Handwriting';"> </h4>
                <h4 style="font-weight:bold;"> </h4>
            </div>
            <div class="item" style="padding-top:6%;padding-bottom:6%;height:200px; background:ghostwhite;">
                <h4 style="font-family: 'Lucida Handwriting';"> </h4>
                <h4 style="font-weight:bold;">   </h4>
            </div>
        </div>
        <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><br />
    </div><br />

        <div class="container-fluid slideanim" style="background:rgba(255, 120, 133, 0.7);min-height:200px;border-radius:15px;">
            <div class="row text-center">
                <h2 style="font-weight:bold;"><span class="glyphicon glyphicon-bookmark"></span> Our Startups...</h2><br />
                <div class="col-sm-2">
                    <a href="https://www.booksmahal.com" title="Books Mahal" target="_blank" style="color:#2c2b2b;text-decoration:none;">
                        <div class="strtuphide" style="width:100%;min-height:80px;border:3px solid #3b3251;border-radius:5px;">
                        <h4 style="font-weight:bold;">BOOKS MAHAL</h4>
                    </div><br /><br />
                    <img src="Images/Startups/booksm.jpg" class="img-circle" style="width:50%;margin-top:-45%!important;margin-left:30%!important;" />
                    <div style="width:100%;min-height:50px;border:3px solid #3b3251;border-radius:5px;margin-top:-25%!important;background:ghostwhite;padding-left:10px;padding-right:10px;text-align:left!important;">
                        <br /><br /><br /><p>
                            Books Mahal                            
                        </p>
                    </div></a><br />                    
                </div>                
                <div class="col-sm-2">
                    <a href="http://www.simbharat.com/" title="Simbharat" target="_blank" style="color:#2c2b2b;text-decoration:none;">
                    <div class="strtuphide" style="width:100%;min-height:80px;border:3px solid #3b3251;border-radius:5px;">
                        <h4 style="font-weight:bold;">SIMBHARAT</h4>
                    </div><br /><br />
                    <img src="Images/Startups/sim.png" class="img-circle" style="width:50%;margin-top:-45%!important;margin-left:30%!important;" />
                    <div style="width:100%;min-height:50px;border:3px solid #3b3251;border-radius:5px;margin-top:-25%!important;background:ghostwhite;padding-left:10px;padding-right:10px;text-align:left!important;">
                        <br /><br /><br /><p>
                            Simbharat
                        </p>
                    </div></a><br />
                </div>
                <div class="col-sm-2">
                    <a href="http://www.apniwebcompany.com/" title="Apni Web Company" target="_blank" style="color:#2c2b2b;text-decoration:none;">
                    <div class="strtuphide" style="width:100%;min-height:80px;border:3px solid #3b3251;border-radius:5px;">
                        <h4 style="font-weight:bold;">APNIWEBCOMPANY</h4>
                    </div><br /><br />
                    <img src="Images/Startups/awc.png" class="img-circle" style="width:50%;margin-top:-45%!important;margin-left:30%!important;" />
                    <div style="width:100%;min-height:50px;border:3px solid #3b3251;border-radius:5px;margin-top:-25%!important;background:ghostwhite;padding-left:10px;padding-right:10px;text-align:left!important;">
                        <br /><br /><br /><p>
                            Apni Web Company
                        </p>
                    </div></a><br />
                </div>
                <div class="col-sm-2">
                    <a href="http://www.bummlers.com/" title="Bummlers" target="_blank" style="color:#2c2b2b;text-decoration:none;">
                    <div class="strtuphide" style="width:100%;min-height:80px;border:3px solid #3b3251;border-radius:5px;">
                        <h4 style="font-weight:bold;">BUMMLERS</h4>
                    </div><br /><br />
                    <img src="Images/Startups/bum.png" class="img-circle" style="width:50%;margin-top:-45%!important;margin-left:30%!important;" />
                    <div style="width:100%;min-height:50px;border:3px solid #3b3251;border-radius:5px;margin-top:-25%!important;background:ghostwhite;padding-left:10px;padding-right:10px;text-align:left!important;">
                        <br /><br /><br /><p>
                            Bummlers
                        </p>
                    </div></a><br />
                </div>
                
                <div class="col-sm-2">
                    <a href="http://www.kleankabaad.com/" title="Klean Kabad" target="_blank" style="color:#2c2b2b;text-decoration:none;">
                    <div class="strtuphide" style="width:100%;min-height:80px;border:3px solid #3b3251;border-radius:5px;">
                        <h4 style="font-weight:bold;">KLEAN KABAAD</h4>
                    </div><br /><br />
                    <img src="Images/Startups/kabad.png" class="img-circle" style="width:50%;margin-top:-45%!important;margin-left:30%!important;" />
                    <div style="width:100%;min-height:50px;border:3px solid #3b3251;border-radius:5px;margin-top:-25%!important;background:ghostwhite;padding-left:10px;padding-right:10px;text-align:left!important;">
                        <br /><br /><br /><p>
                            Klean Kabaad
                        </p>
                    </div></a><br />
                </div>
                <div class="col-sm-2">
                    <a href="http://www.affectivedeal.com/" title="Affective Deal" target="_blank" style="color:#2c2b2b;text-decoration:none;">
                    <div class="strtuphide" style="width:100%;min-height:80px;border:3px solid #3b3251;border-radius:5px;">
                        <h4 style="font-weight:bold;">AFFECTIVE DEAL</h4>
                    </div><br /><br />
                    <img src="Images/Startups/adeal.jpg" class="img-circle" style="width:50%;margin-top:-45%!important;margin-left:30%!important;" />
                    <div style="width:100%;min-height:50px;border:3px solid #3b3251;border-radius:5px;margin-top:-25%!important;background:ghostwhite;padding-left:10px;padding-right:10px;text-align:left!important;">
                        <br /><br /><br /><p>
                            Affective Deal
                        </p>
                    </div></a><br />
                </div>
            </div>
        </div><br />

        <div class="container-fluid slideanim" style="background:rgba(255, 120, 133, 0.7);min-height:200px;border-radius:15px;">
            <div class="row">
                <h2 style="font-weight:bold;text-align:center;"><span class="glyphicon glyphicon-search"></span> Enquiry for...</h2><br />
                <div class="col-sm-6">
                    <div style="width:100%;min-height:300px;border-radius:5px;background:ghostwhite;padding:10px 20px 10px 20px;text-align:center;">
                        <span style="font-weight:bold;font-size:25px;"><span class="glyphicon glyphicon-asterisk"></span><span class="glyphicon glyphicon-asterisk"></span> Training <span class="glyphicon glyphicon-asterisk"></span><span class="glyphicon glyphicon-asterisk"></span></span>
                        <div class="row">
                            <div class="col-sm-6">
                                <br /><asp:TextBox ID="tname" runat="server" CssClass="form-control" placeholder="Enter Name" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <br /><asp:TextBox ID="tmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" style="text-transform:lowercase;"></asp:TextBox>
                            </div>
                        </div>
                        <br /><asp:TextBox ID="tquery" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Enter Your Query" style="resize:none;"></asp:TextBox><br />
                        <asp:Button runat="server" ID="tsub" Text="Submit Training Query" CssClass="btn btn-success btn-block" OnClick="tsub_Click"/>
						<h4 style="font-weight:bold;font-family:muli;text-align:left;">Important Instructions :</h4>
						<p style="color:red;text-align:left;font-family:muli;">
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use apostrophe mark ('), like sam's, don't, it's etc.<br />
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use shortcut spellings.<br />
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use invalid characters or word.<br />
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use any symbols to express your thinking except '?', '!', '.' and '@'.<br />
						</p>
                    </div><br />                    
                </div>
                <div class="col-sm-6">
                    <div style="width:100%;min-height:300px;border-radius:5px;background:ghostwhite;padding:10px 20px 10px 20px;text-align:center;">
                        <span style="font-weight:bold;font-size:25px;"><span class="glyphicon glyphicon-asterisk"></span><span class="glyphicon glyphicon-asterisk"></span> Startup <span class="glyphicon glyphicon-asterisk"></span><span class="glyphicon glyphicon-asterisk"></span></span>
                        <div class="row">
                            <div class="col-sm-6">
                                <br /><asp:TextBox ID="sname" runat="server" CssClass="form-control" placeholder="Enter Name" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <br /><asp:TextBox ID="smail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" style="text-transform:lowercase;"></asp:TextBox>
                            </div>
                        </div>
                        <br /><asp:TextBox ID="squery" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Enter Your Query" style="resize:none;"></asp:TextBox><br />
                        <asp:Button runat="server" ID="ssub" Text="Submit Startup Query" CssClass="btn btn-success btn-block"  OnClick="ssub_Click"/>
						<h4 style="font-weight:bold;font-family:muli;text-align:left;">Important Instructions :</h4>
						<p style="color:red;text-align:left;font-family:muli;">
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use apostrophe mark ('), like sam's, don't, it's etc.<br />
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use shortcut spellings.<br />
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use invalid characters or word.<br />
							<span class="glyphicon glyphicon-arrow-right"></span> Do not use any symbols to express your thinking except '?', '!', '.' and '@'.<br />
						</p>
					</div><br />                    
                </div>
            </div>
        </div><br />

        <div class="container-fluid slideanim text-center" style="background:rgba(255, 120, 133, 0.7);min-height:50px;padding:10px;border-radius:10px;">
            <a href="http://www.instagram.com/CVGClub" title="Instagram Page" target="_blank"><img class="rsicon" src="Images/SocialIcon/ins.png" style="height:45px;width:45px;" /></a>
            &emsp;<a href="https://www.facebook.com/CVGClub" title="Facebook Page" target="_blank"><img class="rsicon" src="Images/SocialIcon/fb.png" style="height:45px;width:45px;" /></a>
            
            &emsp;<a href="https://www.youtube.com/channel/UC5MHj9JtIPWKJf5Dq2EXX2Q" title="YouTube Page" target="_blank"><img class="rsicon" src="Images/SocialIcon/yt.png" style="height:55px;width:55px;margin:-5px;" /></a>                       
        </div>
        <br /><div class="container slideanim text-center" style="background:rgba(255, 120, 133, 0.7);padding-top:10px;border-radius:10px;">
            <p style="font-size:25px; font-weight:bold;font-family:Calibri;text-shadow:1px 1px 10px white;">Visits : <asp:Label ID="vcount" runat="server" style=""></asp:Label></p>
        </div><br />
    <br /><br /><footer class="container-fluid text-center" style="color:white;">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>All Rights Reserved &copy; SCRIET | CVGClub - 2018</h4>
        <p>Design & Developed by<br /><a href="http://www.facebook.com/samsberk" title="Facebook Profile" target="_blank" style="color:white;text-shadow:1px 1px 10px #ff7885;">Shivam Kumar Vishwakarma</a><br />SCRIET-CCSU, Meerut</p>
    </footer>
           </div>
   
    </form>
    <!--<script src="http://code.jquery.com/jquery-latest.min.js"></script>-->
    <script>
        /*jQuery(document).ready(function ($) {
            $(window).load(function () {
                {

                    setTimeout(function () {
                        $("#formd").fadeIn();
                        $("#homeloader").fadeOut(1000, function () { $(this).remove();  });                        
                    }, 2000);
                }
            });
        });*/
        setTimeout(function () {
            $("#formd").fadeIn();
            $("#homeloader").fadeOut(1000, function () { $(this).remove(); });
        }, 1000);
        $("#lmore").click(function () {
            $("#ddmore").slideToggle();
		});
		$("#tmail").attr("disabled", true);
		$("#smail").attr("disabled", true);
		$("#tquery").attr("disabled", true);
		$("#squery").attr("disabled", true);
		$("#tsub").attr("disabled", true);
		$("#ssub").attr("disabled", true);
		$("#tname").focus(function () {
			$("#tmail").attr("disabled", false);
		});
		$("#tmail").focus(function () {
			$("#tquery").attr("disabled", false);
		});
		$("#tquery").focus(function () {
			$("#tsub").attr("disabled", false);
		});
		$("#sname").focus(function () {
			$("#smail").attr("disabled", false);
		});
		$("#smail").focus(function () {
			$("#squery").attr("disabled", false);
		});
		$("#squery").focus(function () {
			$("#ssub").attr("disabled", false);
		});
    </script>
</body>
</html>

