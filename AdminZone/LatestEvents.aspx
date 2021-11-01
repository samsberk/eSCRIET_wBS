<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="LatestEvents.aspx.cs" Inherits="AdminZone_LatestEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Latest Events</title>
    <script>
        function printlist(nolist) {
            var de = document.getElementById("nolist").innerHTML;
            var oldp = document.body.innerHTML;
            document.body.innerHTML = "<html><head><title></title></head><body>" + de + "</body>";
            window.print();
            document.body.innerHTML = oldp;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel-body">
        <ul class="breadcrumb" style="font-size:15px;user-select:none;">
            <li><a href="Admin_Home">Admin Home</a></li>
            <li class="active">Magazine Participation</li>
        </ul>
        <div class="row">
            <div class="col-sm-3" style="margin-top:10px;"><h4 style="font-weight:bold;">Magazine Participation List <span class="glyphicon glyphicon-chevron-right"></span></h4></div>
            <div class="col-sm-3" style="margin-top:10px;"><button id="prnt" class="btn btn-success" type="button" onclick="javascript:printlist('nolist')"><span class="glyphicon glyphicon-print"></span>&ensp;Print List</button></div>
            <div class="col-sm-3" style="margin-top:10px;"><a href="Latest_Events" class="btn btn-success"><span class="glyphicon glyphicon-refresh"></span>&ensp;Reload List</a></div>
            <div class="col-sm-3" style="margin-top:10px;"><a href="../MagazineFiles/Magazine_Article_File.zip" class="btn btn-success"><span class="glyphicon glyphicon-save"></span>&ensp;Download Files</a></div>
        </div>
        <div id="nolist" class="container-fluid" style="margin-top:10px;height:500px;background:ghostwhite;overflow-y:scroll;padding:10px;border-radius:5px;border:1px solid gray;">            
            <img src="../Images/scrietlogo.jpg" style="width:100%;" /><br />
            <p style="text-align:center;font-size:20px;font-weight:bold;">Magazine Participation List</p>
            <asp:GridView runat="server" ID="maglist" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Font-Size="15px" Width="100%" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="BranchOrStream" HeaderText="Branch" SortExpression="BranchOrStream" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="SubDate" HeaderText="Submission Date" SortExpression="SubDate" />
                    <asp:BoundField DataField="File" HeaderText="File Name" SortExpression="File" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"/>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center"/>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [Name], [BranchOrStream], [Year], [Contact], [SubDate], [File] FROM [Magazine]"></asp:SqlDataSource>
        </div>
        <div class="row">
            <div class="col-sm-8"><br />
                <asp:TextBox runat="server" ID="txtdelrej" CssClass="form-control" Placeholder="Paste Email From rejection list for permanently delete"></asp:TextBox>
            </div><br />
            <div class="col-sm-4"><asp:Button runat="server" ID="btndelrej" CssClass="btn btn-danger btn-block" Text="Delete" OnClick="btndelrej_Click" /></div>
        </div>
    </div>
</asp:Content>

