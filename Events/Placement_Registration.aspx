<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Placement_Registration.aspx.cs" Inherits="Events_Placement_Registration" %>

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
    <title>SCRIET Student Placement Registration For Batch 2019</title>
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
            <br /><br /><iframe src="https://docs.google.com/forms/d/e/1FAIpQLSeqBKMMjaBAYWt1FtMVMpDhSU36yM7H8jzrzo0E6XP3HgOqKw/viewform?usp=pp_url" style="width:100%;height:93vh;"></iframe>
        
    </form>
</body>
</html>
