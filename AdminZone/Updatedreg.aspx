<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Updatedreg.aspx.cs" Inherits="AdminZone_Updatedreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Updated Registration List</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="../ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../MyJS/MyJS.js"></script>
    <script>
        function prnt() {
            window.print();
        }
    </script>
    <style>
		th, td{
			font-family:muli;
			font-size:14px;
			padding:2px 5px;
		}
        @media print
        {
            .print{display:none;}
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container print">
            <br /><button class="btn btn-success" type="button" onclick="prnt()"><span class="glyphicon glyphicon-print"></span> Print</button>
        </div>
        <div class="panel-body">
            <img src="../Images/scrietlogo.jpg" style="width:100%;" />
            <h4 style="margin-top:20px;font-weight:bold;text-align:center;">Total Registration List</h4>
			<table border="1" style="width:100%;">
				<tr><th>Sr.No</th><th>Name</th><th>Department</th><th>Branch</th><th>Year</th><th>College</th></tr>
				
				<asp:PlaceHolder runat="server" ID="listph"></asp:PlaceHolder>
			</table>
		</div>
    </form>
</body>
</html>
