<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GNaek.aspx.cs" Inherits="AdminZone_GNaek" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gana Naad-Awaz-E-Khalaq Participation List</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
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
    	td, th {
    		padding: 2px 5px 2px 5px;
			border:0.5px solid lightgray;
    		font-size: small;
			text-align:center;
			font-family:Montserrat;
    	}
        @media print
        {
            .print,.managetable{display:none;}
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container print">
            <br /><button class="btn btn-success" type="button" onclick="prnt()"><span class="glyphicon glyphicon-print"></span> Print</button>
        </div>
		<div class="panel-body managetable" style="height:50vh;overflow-y:auto;">
			<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmailID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
					<asp:BoundField DataField="Poetry" HeaderText="Poetry" SortExpression="Poetry" />
					<asp:BoundField DataField="Singing" HeaderText="Singing" SortExpression="Singing" />
					<asp:BoundField DataField="Dancing" HeaderText="Dancing" SortExpression="Dancing" />
					<asp:BoundField DataField="InstrumentPlay" HeaderText="InstrumentPlay" SortExpression="InstrumentPlay" />
					<asp:BoundField DataField="Drama" HeaderText="Drama" SortExpression="Drama" />
				</Columns>
				<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
				<RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
				<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
				<SortedAscendingCellStyle BackColor="#FDF5AC" />
				<SortedAscendingHeaderStyle BackColor="#4D0000" />
				<SortedDescendingCellStyle BackColor="#FCF6C0" />
				<SortedDescendingHeaderStyle BackColor="#820000" />
			</asp:GridView>
        	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [gnaek] WHERE [EmailID] = @original_EmailID AND (([Poetry] = @original_Poetry) OR ([Poetry] IS NULL AND @original_Poetry IS NULL)) AND (([Singing] = @original_Singing) OR ([Singing] IS NULL AND @original_Singing IS NULL)) AND (([Dancing] = @original_Dancing) OR ([Dancing] IS NULL AND @original_Dancing IS NULL)) AND (([InstrumentPlay] = @original_InstrumentPlay) OR ([InstrumentPlay] IS NULL AND @original_InstrumentPlay IS NULL)) AND (([Drama] = @original_Drama) OR ([Drama] IS NULL AND @original_Drama IS NULL))" InsertCommand="INSERT INTO [gnaek] ([EmailID], [Poetry], [Singing], [Dancing], [InstrumentPlay], [Drama]) VALUES (@EmailID, @Poetry, @Singing, @Dancing, @InstrumentPlay, @Drama)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmailID], [Poetry], [Singing], [Dancing], [InstrumentPlay], [Drama] FROM [gnaek]" UpdateCommand="UPDATE [gnaek] SET [Poetry] = @Poetry, [Singing] = @Singing, [Dancing] = @Dancing, [InstrumentPlay] = @InstrumentPlay, [Drama] = @Drama WHERE [EmailID] = @original_EmailID AND (([Poetry] = @original_Poetry) OR ([Poetry] IS NULL AND @original_Poetry IS NULL)) AND (([Singing] = @original_Singing) OR ([Singing] IS NULL AND @original_Singing IS NULL)) AND (([Dancing] = @original_Dancing) OR ([Dancing] IS NULL AND @original_Dancing IS NULL)) AND (([InstrumentPlay] = @original_InstrumentPlay) OR ([InstrumentPlay] IS NULL AND @original_InstrumentPlay IS NULL)) AND (([Drama] = @original_Drama) OR ([Drama] IS NULL AND @original_Drama IS NULL))">
				<DeleteParameters>
					<asp:Parameter Name="original_EmailID" Type="String" />
					<asp:Parameter Name="original_Poetry" Type="String" />
					<asp:Parameter Name="original_Singing" Type="String" />
					<asp:Parameter Name="original_Dancing" Type="String" />
					<asp:Parameter Name="original_InstrumentPlay" Type="String" />
					<asp:Parameter Name="original_Drama" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="EmailID" Type="String" />
					<asp:Parameter Name="Poetry" Type="String" />
					<asp:Parameter Name="Singing" Type="String" />
					<asp:Parameter Name="Dancing" Type="String" />
					<asp:Parameter Name="InstrumentPlay" Type="String" />
					<asp:Parameter Name="Drama" Type="String" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="Poetry" Type="String" />
					<asp:Parameter Name="Singing" Type="String" />
					<asp:Parameter Name="Dancing" Type="String" />
					<asp:Parameter Name="InstrumentPlay" Type="String" />
					<asp:Parameter Name="Drama" Type="String" />
					<asp:Parameter Name="original_EmailID" Type="String" />
					<asp:Parameter Name="original_Poetry" Type="String" />
					<asp:Parameter Name="original_Singing" Type="String" />
					<asp:Parameter Name="original_Dancing" Type="String" />
					<asp:Parameter Name="original_InstrumentPlay" Type="String" />
					<asp:Parameter Name="original_Drama" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </div>
        <div class="panel-body">
            <img src="../Images/scrietlogo.jpg" style="width:100%;" />
            <h4 style="margin-top:20px;font-weight:bold;text-align:center;font-family:Montserrat;">Total Participation List</h4>
			<table border="1" style="width:100%;">
				<tr><th>Sr.No.</th><th>Name</th><th>Stream / Branch / Year</th><th>Poetry</th><th>Singing</th><th>Dancing</th><th>Instrument Playing</th><th>Drama</th></tr>
				
				<asp:PlaceHolder runat="server" ID="gnaekph"></asp:PlaceHolder>
			</table>
		</div>
        
    </form>
</body>
</html>
