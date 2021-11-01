<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="AdminZone_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration List</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet" />
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
    	th, td {
    		font-family: muli;
    		font-size: 14px;
    		padding: 2px 5px;
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
            <asp:GridView ID="reglist" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="regwala" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                    <asp:BoundField DataField="LName" HeaderText="Last Name" SortExpression="LName" />
                    <asp:BoundField DataField="BranchOrStream" HeaderText="Branch Or Stream" SortExpression="BranchOrStream" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="ClgName" HeaderText="College Name" SortExpression="ClgName" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="regwala" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [FName], [LName], [BranchOrStream], [Year], [ClgName] FROM [Registration]"></asp:SqlDataSource>
        </div>        
    </form>
</body>
</html>
