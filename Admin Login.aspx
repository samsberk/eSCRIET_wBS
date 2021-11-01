<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>CVGClub: Admin Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="MyJS/MyJS.js"></script>
    <script>
        function adminlogin() {
            var u = "sam";
            var p = "kumar";
            var ut = prompt("UserName: ");
            if (ut == u) {
                var pt = prompt("Hello Admin Sir,\nEnter Password:");
                if (pt == p) {
                    window.location = "AdminZone_Home";

                }
                else {
                    if (confirm("Access Denied\n again..??"))
                        window.location.reload(true);
                    else
                        window.history.go(-2);
                }
            }
            else {
                if (confirm("Are you really Admin..?"))
                    window.location.reload(true);
                else {
                    alert("All right,\nBut don't try again...\n\n\n\nMind it.")
                    window.history.back();
                }
            }
        }
        
    </script>
</head>
<body onload="adminlogin()">
    <form id="form1" runat="server">
        
    </form>
</body>
</html>
