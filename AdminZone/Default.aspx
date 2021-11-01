<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="AdminZone_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>Admin Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="../ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/> 
    <script src="../MyJS/MyJS.js"></script>

</head>
<body style="background:#f2f2f2;">
    <form id="form1" runat="server">
       <div class="container-fluid" style="font-size:17px;">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4 text-center">
                <h3 style="font-weight:bold;"><span class="glyphicon glyphicon-log-in"></span> Admin Login</h3><br />
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon box-txt" style="border-bottom:none!important;" id="usridaddon"><span class="glyphicon glyphicon-user"></span></span>
                        <asp:TextBox ID="idlogintxt" CssClass="form-control box-txt" placeholder="Admin ID" aria-describedby="usridaddon" runat="server"></asp:TextBox>
                    </div><br />
                    <div class="input-group">
                        <span class="input-group-addon box-txt" style="border-bottom:none!important;" id="usrpassaddon"><span class="glyphicon glyphicon-lock"></span></span>
                        <asp:TextBox ID="pastxt" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" aria-describedby="usrpassaddon" runat="server"></asp:TextBox>
                    </div><br />
                    <asp:CheckBox ID="chboxagrlogin" runat="server" Text="&nbsp; Agree" /><br /><br />
                    <asp:Button ID="btnlogin" CssClass="btn btn-success btn-lg pull-right" runat="server" Text="Secure Login" OnClick="btnlogin_Click" />
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
    </form>
</body>
</html>
