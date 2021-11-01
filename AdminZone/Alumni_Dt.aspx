<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alumni_Dt.aspx.cs" Inherits="AdminZone_Alumni_Dt" %>

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
    <title>Alumni Details</title>
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
    <style>
        th,td
        {padding:3px 10px;}
        .mychkbox
        { padding:4px 4px 1px 5px; background:white; color:blue; border:1px solid black; border-radius:10px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-body">
        <ul class="breadcrumb" style="font-size:15px;user-select:none;">
            <li><a href="Admin_Home">Admin Home</a></li>
            <li><a href="Alumni_Management">Alumni Management</a></li>
            <li class="active">Alumni Details</li>
        </ul>
        <h4 style="font-weight:bold;">Profile Details for <span class="glyphicon glyphicon-chevron-right"></span> <code><asp:Label runat="server" ID="alumem"></asp:Label></code></h4>
        <div class="row">
            <div class="col-sm-3"><br />
                <asp:Image runat="server" ID="alumpro" style="width:100%;"/>
            </div>
            <div class="col-sm-6"><br />
            <asp:PlaceHolder ID="notif" runat="server"></asp:PlaceHolder>
                <table border="1" style="width:100%;font-size:15px;user-select:none;">
                    <tr><th>Email ID</th><td><asp:Label runat="server" ID="email"></asp:Label></td></tr>
                    <tr><th>Name</th><td><asp:Label runat="server" ID="name"></asp:Label></td></tr>
                    <tr><th>Branch</th><td><asp:Label runat="server" ID="branch"></asp:Label></td></tr>
                    <tr><th>Batch</th><td><asp:Label runat="server" ID="batch"></asp:Label></td></tr>
                    <tr><th>Designation</th><td><asp:Label runat="server" ID="desig"></asp:Label></td></tr>
                    <tr><th>Company Name</th><td><asp:Label runat="server" ID="comname"></asp:Label></td></tr>
                    <tr><th>Contact</th><td><asp:Label runat="server" ID="contact"></asp:Label></td></tr>
                    <tr><th>HR Contact</th><td><asp:Label runat="server" ID="hrcontact"></asp:Label></td></tr>
                    <tr><th>Event Attend</th><td><asp:Label runat="server" ID="evatt"></asp:Label></td></tr>
                    <tr><th>CR Participation</th><td><asp:Label runat="server" ID="crp"></asp:Label></td></tr>
                    <tr><th>Contribution</th><td><asp:Label runat="server" ID="contri"></asp:Label></td></tr>
                    <tr><th>Verification</th><td><asp:Label runat="server" ID="verificat" style="font-weight:bold;"></asp:Label></td></tr>
                    <tr><th>Reg. Date</th><td><asp:Label runat="server" ID="regdate"></asp:Label></td></tr>
                </table>
            </div>
            <div class="col-sm-3 text-center"><br />
            <asp:PlaceHolder ID="alertnotif" runat="server"></asp:PlaceHolder>
                <div style="background:gray;border:1px solid green;color:white;font-weight:bold;padding:12px;border-radius:5px;text-align:center;font-size:15px;">
                    <asp:CheckBox runat="server" ID="agrtnc" CssClass="mychkbox"/>&emsp;Confirm
                </div><br />
                <div id="verrej">
                    <asp:Button runat="server" ID="veralum" Text="Verify Registration" CssClass="btn btn-success btn-block" OnClick="veralum_Click"/>
                    <a id="rejalum" class="btn btn-block btn-warning">Reject Registration</a>
                </div>
                <div id="txtdel">
                    <asp:TextBox runat="server" ID="txtmenres" TextMode="MultiLine" Rows="5" Columns="50" placeholder="Mention Reason for rejection" CssClass="form-control" style="margin-top:5px;resize:none;"></asp:TextBox>
                    <asp:Button runat="server" ID="delalum" Text="Delete Registraion" CssClass="btn btn-danger btn-block" style="margin-top:5px;" OnClick="delalum_Click"/>
                </div>
            </div>
        </div>
    </div>
    <script>
        $("#verrej").hide();
        $("#txtdel").hide();
        $("#delalum").attr("disabled", true);
        $("#delalum").val("Mention reason before Reject");
        $("#agrtnc").change(function () {
            var chk = document.getElementById("agrtnc");
            if (chk.checked == true) {
                $("#veralum").attr("disabled", false);
                $("#rejalum").attr("disabled", false);
                $("#verrej").slideDown();
                $("#txtdel").slideUp();
            }
            else {
                $("#verrej").slideUp();
                $("#txtdel").slideUp();
            }
        });
        $("#rejalum").click(function () {
            if (confirm("Are you sure for reject?")) {
                $("#txtdel").slideDown();
                $("#veralum").attr("disabled", true);
                $("#rejalum").attr("disabled", true);
                $("#verrej").slideUp();
            }
        });
        $("#txtmenres").focus(function () {
            $("#delalum").attr("disabled", false);
            $("#delalum").val("Delete Registration");
        });
    </script>
    </form>
</body>
</html>
