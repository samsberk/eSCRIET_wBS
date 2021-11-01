<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminZone_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CVGClub: Admin Home</title>
    <script>
        function printlist(nolist) {var de = document.getElementById("nolist").innerHTML;var oldp = document.body.innerHTML;document.body.innerHTML = "<html><head><title></title></head><body>" + de + "</body>";window.print();document.body.innerHTML = oldp;}
    </script>
    <style>
        @media print
        {#prnt{display:none;}}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="container-fluid">
        <h3 style="font-weight:bold;text-align:center;color:red;">Don't Refresh this page or Press F5. <a href="Admin_Home">Click Here for Reload this Page</a></h3>
        <br />
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div style="background:yellow;min-height:200px;color:red;padding:30px;font-size:25px;font-weight:bold;text-align:center;border:2px solid navy;border-radius:10px;">
						Latest Events Management 
						<sup><span class="badge" style="color:white;background:red;">New</span></sup>
						<br /><br />
						<a href="Latest_Events" style="font-size:20px;">Magazine Participation Management</a><br />
						<a href="GNaek_List" style="font-size:20px;">G N-A-E-K List</a><br />
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        <br />
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div style="background:yellow;min-height:200px;color:red;padding:30px;font-size:25px;font-weight:bold;text-align:center;border:2px solid navy;border-radius:10px;">2<sup>nd</sup> Alumni Registration <sup><span class="badge" style="color:white;background:red;">New</span></sup><br /><br /><a href="Alumni_Management" style="font-size:20px;">Click Here for Registration Management</a></div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        <br />
        <div style="background:white;min-height:200px;color:red;padding:30px;font-size:25px;font-weight:bold;text-align:center;border:2px solid navy;border-radius:10px;">Techvergence'18<br /><br />
            <a href="#techver18" id="techver18" style="font-size:20px;">Click Here for Management</a></div>
        <br /><div class="panel-body" id="techverdiv" style="border:1px solid lightgray;border-radius:5px;">
            <h3 style="font-weight:bold;">Print Attendance List for:</h3>
            <a href="Os" title="Print Oratory List" target="_blank">Odyssey</a>,&ensp;
            <a href="Quiz" title="Quiz List" target="_blank">Enquizitia</a>,&ensp;
            <a href="Pgraphy" title="Photography List" target="_blank">ZoomIn</a>,&ensp;
            <a href="PPT" title="PPT List" target="_blank">PPT Competition</a>,&ensp;
            <a href="MMaking" title="Model Making List" target="_blank">Modek Battlefield</a>,&ensp;
            <a href="LANGamingNFS" title="LAN Gaming List" target="_blank">Lantastic (NFS)</a>,&ensp;
            <a href="LANGamingCS" title="LAN Gaming List" target="_blank">Lantastic (CS)</a>,&ensp;
            <a href="TresHunt" title="Treasure Hunt List" target="_blank">Treasure Hunt</a>,&ensp;
            <a href="DocVideos" title="D Videos List" target="_blank">Cineasta</a>,&ensp;
            <a href="CodeHunt" title="Code Hunt List" target="_blank">Code Hunt</a>,&ensp;
            <a href="AAttack" title="Art Attack List" target="_blank">Art Attack</a>,&ensp;
            <a href="Poetry" title="Poetry List" target="_blank">Sukhanvar</a>,&ensp;
            <a href="WSkills" title="Writing Skills List" target="_blank">Lekha</a>,&ensp;
            <a href="Minimilitia" title="Minimilitia List" target="_blank">Minimilitia</a>,&emsp;
            <br /><br />
            <h3 style="font-weight:bold;">Print Judgement List for:</h3>
            <a href="Marksosm" title="Print Oratory List" target="_blank">Odyssey</a>,&ensp;
            <a href="MarksQm" title="Quiz List" target="_blank">Enquizitia</a>,&ensp;
            <a href="MarksPgm" title="Photography List" target="_blank">ZoomIn</a>,&ensp;
            <a href="Markspptm" title="PPT List" target="_blank">PPT Competition</a>,&ensp;
            <a href="Marksmmm" title="Model Making List" target="_blank">Modek Battlefield</a>,&ensp;
            <a href="MarksLanNFSm" title="LAN Gaming List" target="_blank">Lantastic (NFS)</a>,&ensp;
            <a href="MarksLanCSm" title="LAN Gaming List" target="_blank">Lantastic (CS)</a>,&ensp;
            <a href="MarksThm" title="Treasure Hunt List" target="_blank">Treasure Hunt</a>,&ensp;
            <a href="MarksDVm" title="D Videos List" target="_blank">Cineasta</a>,&ensp;
            <a href="Markschm" title="Code Hunt List" target="_blank">Code Hunt</a>,&ensp;
            <a href="Marksaam" title="Art Attack List" target="_blank">Art Attack</a>,&ensp;
            <a href="MarksPoetm" title="Poetry List" target="_blank">Sukhanvar</a>,&ensp;
            <a href="Markswsm" title="Writing Skills List" target="_blank">Lekha</a>,&ensp;
            <a href="Marksminimm" title="Minimilitia List" target="_blank">Minimilitia</a>,&emsp;<br />
            <a href="Reg_Print" title="Registration List" style="color:red;" target="_blank">Registration List</a><br /><br />
            <a href="Updated_Reg_Print" title="Updated Registration List" style="color:red;" target="_blank">Updated Registration List</a><br /><br />
            <div class="row">
                <div class="col-sm-6">
                    <h3 style="font-weight:bold;">Add to HomePage- "What's New" Section: <a href="../Home" target="_blank" title="HomePage">Go Home</a></h3>
                    <div class="form-group" style="width:100%;height:220px;border:1px solid Gray;border-radius:5px;padding:15px;">
                        <asp:TextBox ID="conwntxt" TextMode="MultiLine" Rows="5" style="resize:none;" placeholder="Enter (What's new)'s content" CssClass="form-control" runat="server"></asp:TextBox><br />
                        <asp:Button ID="addwnbtn" CssClass="btn btn-success btn-lg pull-right" runat="server" Text="Add" OnClick="addwnbtn_Click" />
                    </div>
                </div>
                <div class="col-sm-6">
                    <h3 style="font-weight:bold;">Content of HomePage- "What's New" Section:</h3>
                    <div style="width:100%;height:220px;border:1px solid Gray;border-radius:5px;background:ghostwhite;overflow-x:auto;">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SrNo" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" GridLines="Vertical">
                            <AlternatingRowStyle BorderStyle="None" />
                            <Columns>
                                <asp:BoundField DataField="SrNo" HeaderText="SrNo" InsertVisible="False" ReadOnly="True" SortExpression="SrNo" />
                                <asp:BoundField DataField="Whatsnew" HeaderText="Whatsnew" SortExpression="Whatsnew" />
                            </Columns>
                            <EditRowStyle BorderStyle="None" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [SrNo], [Whatsnew] FROM [WNew]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [WNew] WHERE [SrNo] = @original_SrNo AND (([Whatsnew] = @original_Whatsnew) OR ([Whatsnew] IS NULL AND @original_Whatsnew IS NULL))" InsertCommand="INSERT INTO [WNew] ([Whatsnew]) VALUES (@Whatsnew)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [WNew] SET [Whatsnew] = @Whatsnew WHERE [SrNo] = @original_SrNo AND (([Whatsnew] = @original_Whatsnew) OR ([Whatsnew] IS NULL AND @original_Whatsnew IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_SrNo" Type="Int32" />
                                <asp:Parameter Name="original_Whatsnew" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Whatsnew" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Whatsnew" Type="String" />
                                <asp:Parameter Name="original_SrNo" Type="Int32" />
                                <asp:Parameter Name="original_Whatsnew" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <h3 style="font-weight:bold;">Queries From Students:</h3>
                <div style="width:100%;height:200px;border:1px solid Gray;border-radius:5px;background:ghostwhite;overflow-x:auto;">
                     <asp:GridView ID="querygrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SrNo" DataSourceID="querywala" ForeColor="#333333" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="SrNo" HeaderText="SrNo" InsertVisible="False" ReadOnly="True" SortExpression="SrNo" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                        <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                        <asp:BoundField DataField="QDate" HeaderText="QDate" SortExpression="QDate" />
                        <asp:BoundField DataField="ClgName" HeaderText="ClgName" SortExpression="ClgName" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                     <asp:SqlDataSource ID="querywala" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [Query] WHERE [SrNo] = @original_SrNo AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Query] = @original_Query) OR ([Query] IS NULL AND @original_Query IS NULL)) AND (([QDate] = @original_QDate) OR ([QDate] IS NULL AND @original_QDate IS NULL)) AND (([ClgName] = @original_ClgName) OR ([ClgName] IS NULL AND @original_ClgName IS NULL))" InsertCommand="INSERT INTO [Query] ([Name], [EmailID], [Query], [QDate], [ClgName]) VALUES (@Name, @EmailID, @Query, @QDate, @ClgName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Query]" UpdateCommand="UPDATE [Query] SET [Name] = @Name, [EmailID] = @EmailID, [Query] = @Query, [QDate] = @QDate, [ClgName] = @ClgName WHERE [SrNo] = @original_SrNo AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Query] = @original_Query) OR ([Query] IS NULL AND @original_Query IS NULL)) AND (([QDate] = @original_QDate) OR ([QDate] IS NULL AND @original_QDate IS NULL)) AND (([ClgName] = @original_ClgName) OR ([ClgName] IS NULL AND @original_ClgName IS NULL))">
                        <DeleteParameters>
                        <asp:Parameter Name="original_SrNo" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_Query" Type="String" />
                        <asp:Parameter Name="original_QDate" Type="String" />
                        <asp:Parameter Name="original_ClgName" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Query" Type="String" />
                        <asp:Parameter Name="QDate" Type="String" />
                        <asp:Parameter Name="ClgName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Query" Type="String" />
                        <asp:Parameter Name="QDate" Type="String" />
                        <asp:Parameter Name="ClgName" Type="String" />
                        <asp:Parameter Name="original_SrNo" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_Query" Type="String" />
                        <asp:Parameter Name="original_QDate" Type="String" />
                        <asp:Parameter Name="original_ClgName" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="container-fluid">
                <h3 style="font-weight:bold;">Feedback From Students:</h3>
                <div style="width:100%;height:200px;border:1px solid Gray;border-radius:5px;background:ghostwhite;overflow-x:auto;">
                    <asp:GridView ID="fdbkgrid" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SrNo" DataSourceID="feedbackwala" ForeColor="#333333" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="SrNo" HeaderText="SrNo" InsertVisible="False" ReadOnly="True" SortExpression="SrNo" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                            <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                            <asp:BoundField DataField="FDate" HeaderText="FDate" SortExpression="FDate" />
                            <asp:BoundField DataField="ClgName" HeaderText="ClgName" SortExpression="ClgName" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="feedbackwala" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [SrNo] = @original_SrNo AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Feedback] = @original_Feedback) OR ([Feedback] IS NULL AND @original_Feedback IS NULL)) AND (([FDate] = @original_FDate) OR ([FDate] IS NULL AND @original_FDate IS NULL)) AND (([ClgName] = @original_ClgName) OR ([ClgName] IS NULL AND @original_ClgName IS NULL))" InsertCommand="INSERT INTO [Feedback] ([Name], [EmailID], [Feedback], [FDate], [ClgName]) VALUES (@Name, @EmailID, @Feedback, @FDate, @ClgName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [Name] = @Name, [EmailID] = @EmailID, [Feedback] = @Feedback, [FDate] = @FDate, [ClgName] = @ClgName WHERE [SrNo] = @original_SrNo AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Feedback] = @original_Feedback) OR ([Feedback] IS NULL AND @original_Feedback IS NULL)) AND (([FDate] = @original_FDate) OR ([FDate] IS NULL AND @original_FDate IS NULL)) AND (([ClgName] = @original_ClgName) OR ([ClgName] IS NULL AND @original_ClgName IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_SrNo" Type="Int32" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_EmailID" Type="String" />
                            <asp:Parameter Name="original_Feedback" Type="String" />
                            <asp:Parameter Name="original_FDate" Type="String" />
                            <asp:Parameter Name="original_ClgName" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="EmailID" Type="String" />
                            <asp:Parameter Name="Feedback" Type="String" />
                            <asp:Parameter Name="FDate" Type="String" />
                            <asp:Parameter Name="ClgName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="EmailID" Type="String" />
                            <asp:Parameter Name="Feedback" Type="String" />
                            <asp:Parameter Name="FDate" Type="String" />
                            <asp:Parameter Name="ClgName" Type="String" />
                            <asp:Parameter Name="original_SrNo" Type="Int32" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_EmailID" Type="String" />
                            <asp:Parameter Name="original_Feedback" Type="String" />
                            <asp:Parameter Name="original_FDate" Type="String" />
                            <asp:Parameter Name="original_ClgName" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-7">
                    <h3 style="font-weight:bold;">Send an Email (Personally):</h3>
                    <div class="form-group" style="width:100%;height:400px;border:1px solid Gray;border-radius:5px;padding:15px;">
                        <label for="tomail">Receipts Email id:</label>
                        <asp:TextBox ID="tomail" placeholder="Enter Receipts mail" CssClass="form-control" runat="server"></asp:TextBox>
                        <label for="submail">Subject:</label>
                        <asp:TextBox ID="submail" placeholder="Enter Subject" CssClass="form-control" runat="server"></asp:TextBox>
                        <label for="msgmail">Message:</label>
                        <asp:TextBox ID="msgmail" TextMode="MultiLine" Rows="6" style="resize:none;" placeholder="Enter message" CssClass="form-control" runat="server"></asp:TextBox><br />
                        <asp:Button ID="btnsendmail" CssClass="btn btn-success btn-lg pull-right" runat="server" Text="Send" OnClick="btnsendmail_Click" />
                    </div>
                </div>
                <div class="col-sm-5">
                    <h3 style="font-weight:bold;">Total Sudents in...</h3>
                    <div id="nolist" class="form-group text-center" style="width:100%;height:400px;border:1px solid Gray;border-radius:5px;padding:25px;overflow-x:auto;">
                        <table style="text-align:center;margin:0px auto;font-size:20px;">
                            <tr><td>Total Registration:</td><td><asp:Label ID="regno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Odyssey Total:</td><td><asp:Label ID="osno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Odyssey (Speech):</td><td><asp:Label ID="spchosno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Odyssey (Turncoat):</td><td><asp:Label ID="trnctosno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Odyssey (Debate):</td><td><asp:Label ID="mdadosno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Enquizitia:</td><td><asp:Label ID="qno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>ZoomIn:</td><td><asp:Label ID="pgrno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>PPT Competition:</td><td><asp:Label ID="pptno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Modek Battlefield:</td><td><asp:Label ID="mmno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Lantastic (NFS):</td><td><asp:Label ID="lannfsno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Lantastic (Counter Strike):</td><td><asp:Label ID="lancsno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Treasure Hunt:</td><td><asp:Label ID="thno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Cineasta:</td><td><asp:Label ID="dvno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Code Hunt:</td><td><asp:Label ID="chno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Art Attack Total:</td><td><asp:Label ID="aano" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Art Attack (Sketching):</td><td><asp:Label ID="skaano" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Art Attack (Best out of Waste):</td><td><asp:Label ID="bwaano" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Art Attack (Face Painting):</td><td><asp:Label ID="fpaano" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Art Attack (Rangoli):</td><td><asp:Label ID="rngaano" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Sukhanvar Total:</td><td><asp:Label ID="pno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Sukhanvar (Self Written):</td><td><asp:Label ID="pswno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Sukhanvar (Famous Poet's):</td><td><asp:Label ID="psfpno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Lekha Total:</td><td><asp:Label ID="wsno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Lekha (Poetry):</td><td><asp:Label ID="wspno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Lekha (Article):</td><td><asp:Label ID="wsano" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Lekha (Drama):</td><td><asp:Label ID="wsdno" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td>Minimilitia:</td><td><asp:Label ID="mino" runat="server" Text="0"></asp:Label></td></tr>
                            <tr><td colspan="2"><br /><button id="prnt" class="btn btn-success" type="button" onclick="javascript:printlist('nolist')"><span class="glyphicon glyphicon-print"></span> Print List</button></td></tr>
                        </table>
                    </div>
                </div>
            </div>
            <br /><h3 style="font-weight:bold;">Registration List :</h3><div class="container-fluid" style="height:500px;background:ghostwhite;overflow-y:scroll;padding:10px;border-radius:5px;border:1px solid gray;">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="regview">
                    <Columns>
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="BranchOrStream" HeaderText="BranchOrStream" SortExpression="BranchOrStream" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                        <asp:BoundField DataField="RegDate" HeaderText="RegDate" SortExpression="RegDate" />
                        <asp:BoundField DataField="LCount" HeaderText="LCount" SortExpression="LCount" />
                        <asp:BoundField DataField="LastLogin" HeaderText="LastLogin" SortExpression="LastLogin" />
                        <asp:BoundField DataField="ClgName" HeaderText="ClgName" SortExpression="ClgName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="regview" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [EmailID], [FName], [LName], [DOB], [Gender], [BranchOrStream], [Year], [Contact], [RegDate], [LCount], [LastLogin], [ClgName] FROM [Registration]"></asp:SqlDataSource>
            </div>
			<br />New Registration or Updated Registration:
			<div class="panel-body" style="height:70vh;overflow:auto;">
				<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource2">
					<Columns>
						<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
						<asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
						<asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
						<asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
						<asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
						<asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
						<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
						<asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
						<asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
						<asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
						<asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
						<asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
						<asp:BoundField DataField="RegDate" HeaderText="RegDate" SortExpression="RegDate" />
						<asp:BoundField DataField="LCount" HeaderText="LCount" SortExpression="LCount" />
						<asp:BoundField DataField="LastLogin" HeaderText="LastLogin" SortExpression="LastLogin" />
						<asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
						<asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
						<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
					</Columns>
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [SRegistration] WHERE [EmailID] = @original_EmailID" InsertCommand="INSERT INTO [SRegistration] ([EmailID], [RollNo], [FName], [LName], [DOB], [Gender], [Department], [Branch], [Year], [College], [Contact], [RegDate], [LCount], [LastLogin], [Status], [Attendance], [Password]) VALUES (@EmailID, @RollNo, @FName, @LName, @DOB, @Gender, @Department, @Branch, @Year, @College, @Contact, @RegDate, @LCount, @LastLogin, @Status, @Attendance, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmailID], [RollNo], [FName], [LName], [DOB], [Gender], [Department], [Branch], [Year], [College], [Contact], [RegDate], [LCount], [LastLogin], [Status], [Attendance], [Password] FROM [SRegistration]" UpdateCommand="UPDATE [SRegistration] SET [RollNo] = @RollNo, [FName] = @FName, [LName] = @LName, [DOB] = @DOB, [Gender] = @Gender, [Department] = @Department, [Branch] = @Branch, [Year] = @Year, [College] = @College, [Contact] = @Contact, [RegDate] = @RegDate, [LCount] = @LCount, [LastLogin] = @LastLogin, [Status] = @Status, [Attendance] = @Attendance, [Password] = @Password WHERE [EmailID] = @original_EmailID">
					<DeleteParameters>
						<asp:Parameter Name="original_EmailID" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="EmailID" Type="String" />
						<asp:Parameter Name="RollNo" Type="String" />
						<asp:Parameter Name="FName" Type="String" />
						<asp:Parameter Name="LName" Type="String" />
						<asp:Parameter Name="DOB" Type="String" />
						<asp:Parameter Name="Gender" Type="String" />
						<asp:Parameter Name="Department" Type="String" />
						<asp:Parameter Name="Branch" Type="String" />
						<asp:Parameter Name="Year" Type="String" />
						<asp:Parameter Name="College" Type="String" />
						<asp:Parameter Name="Contact" Type="String" />
						<asp:Parameter Name="RegDate" Type="String" />
						<asp:Parameter Name="LCount" Type="Int64" />
						<asp:Parameter Name="LastLogin" Type="String" />
						<asp:Parameter Name="Status" Type="String" />
						<asp:Parameter Name="Attendance" Type="String" />
						<asp:Parameter Name="Password" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="RollNo" Type="String" />
						<asp:Parameter Name="FName" Type="String" />
						<asp:Parameter Name="LName" Type="String" />
						<asp:Parameter Name="DOB" Type="String" />
						<asp:Parameter Name="Gender" Type="String" />
						<asp:Parameter Name="Department" Type="String" />
						<asp:Parameter Name="Branch" Type="String" />
						<asp:Parameter Name="Year" Type="String" />
						<asp:Parameter Name="College" Type="String" />
						<asp:Parameter Name="Contact" Type="String" />
						<asp:Parameter Name="RegDate" Type="String" />
						<asp:Parameter Name="LCount" Type="Int64" />
						<asp:Parameter Name="LastLogin" Type="String" />
						<asp:Parameter Name="Status" Type="String" />
						<asp:Parameter Name="Attendance" Type="String" />
						<asp:Parameter Name="Password" Type="String" />
						<asp:Parameter Name="original_EmailID" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div>
            <div class="row">
                <div class="col-sm-8">
                    <br /><asp:TextBox ID="delregtxt" CssClass="form-control" runat="server" placeholder="Paste Email here for Delete its all Data"></asp:TextBox>
                </div>
                <div class="col-sm-4"><br /><asp:Button runat="server" ID="delregbtn" Text="Delete Data" CssClass="btn btn-danger btn-block" OnClick="delregbtn_Click" /></div>
            </div><br />
			Feedback for CnI:
			<div class="panel-body" style="height:70vh;overflow:auto;">
				<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource3">
					<Columns>
						<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
						<asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
						<asp:BoundField DataField="Suggestion" HeaderText="Suggestion" SortExpression="Suggestion" />
						<asp:BoundField DataField="FDate" HeaderText="FDate" SortExpression="FDate" />
						<asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
					</Columns>
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [FeedbackCnI] WHERE [EmailID] = @original_EmailID AND (([Suggestion] = @original_Suggestion) OR ([Suggestion] IS NULL AND @original_Suggestion IS NULL)) AND (([FDate] = @original_FDate) OR ([FDate] IS NULL AND @original_FDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [FeedbackCnI] ([EmailID], [Suggestion], [FDate], [Status]) VALUES (@EmailID, @Suggestion, @FDate, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmailID], [Suggestion], [FDate], [Status] FROM [FeedbackCnI]" UpdateCommand="UPDATE [FeedbackCnI] SET [Suggestion] = @Suggestion, [FDate] = @FDate, [Status] = @Status WHERE [EmailID] = @original_EmailID AND (([Suggestion] = @original_Suggestion) OR ([Suggestion] IS NULL AND @original_Suggestion IS NULL)) AND (([FDate] = @original_FDate) OR ([FDate] IS NULL AND @original_FDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_EmailID" Type="String" />
						<asp:Parameter Name="original_Suggestion" Type="String" />
						<asp:Parameter Name="original_FDate" Type="String" />
						<asp:Parameter Name="original_Status" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="EmailID" Type="String" />
						<asp:Parameter Name="Suggestion" Type="String" />
						<asp:Parameter Name="FDate" Type="String" />
						<asp:Parameter Name="Status" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="Suggestion" Type="String" />
						<asp:Parameter Name="FDate" Type="String" />
						<asp:Parameter Name="Status" Type="String" />
						<asp:Parameter Name="original_EmailID" Type="String" />
						<asp:Parameter Name="original_Suggestion" Type="String" />
						<asp:Parameter Name="original_FDate" Type="String" />
						<asp:Parameter Name="original_Status" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div><br />
			Feedback for TnC:
			<div class="panel-body" style="height:70vh;overflow:auto;">
				<asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource4">
					<Columns>
						<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
						<asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
						<asp:BoundField DataField="Suggestion" HeaderText="Suggestion" SortExpression="Suggestion" />
						<asp:BoundField DataField="FDate" HeaderText="FDate" SortExpression="FDate" />
						<asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
						<asp:BoundField DataField="Attandance" HeaderText="Attandance" SortExpression="Attandance" />
					</Columns>
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" DeleteCommand="DELETE FROM [FeedbackTnC] WHERE [EmailID] = @original_EmailID AND (([Suggestion] = @original_Suggestion) OR ([Suggestion] IS NULL AND @original_Suggestion IS NULL)) AND (([FDate] = @original_FDate) OR ([FDate] IS NULL AND @original_FDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Attandance] = @original_Attandance) OR ([Attandance] IS NULL AND @original_Attandance IS NULL))" InsertCommand="INSERT INTO [FeedbackTnC] ([EmailID], [Suggestion], [FDate], [Status], [Attandance]) VALUES (@EmailID, @Suggestion, @FDate, @Status, @Attandance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmailID], [Suggestion], [FDate], [Status], [Attandance] FROM [FeedbackTnC]" UpdateCommand="UPDATE [FeedbackTnC] SET [Suggestion] = @Suggestion, [FDate] = @FDate, [Status] = @Status, [Attandance] = @Attandance WHERE [EmailID] = @original_EmailID AND (([Suggestion] = @original_Suggestion) OR ([Suggestion] IS NULL AND @original_Suggestion IS NULL)) AND (([FDate] = @original_FDate) OR ([FDate] IS NULL AND @original_FDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Attandance] = @original_Attandance) OR ([Attandance] IS NULL AND @original_Attandance IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_EmailID" Type="String" />
						<asp:Parameter Name="original_Suggestion" Type="String" />
						<asp:Parameter Name="original_FDate" Type="String" />
						<asp:Parameter Name="original_Status" Type="String" />
						<asp:Parameter Name="original_Attandance" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="EmailID" Type="String" />
						<asp:Parameter Name="Suggestion" Type="String" />
						<asp:Parameter Name="FDate" Type="String" />
						<asp:Parameter Name="Status" Type="String" />
						<asp:Parameter Name="Attandance" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="Suggestion" Type="String" />
						<asp:Parameter Name="FDate" Type="String" />
						<asp:Parameter Name="Status" Type="String" />
						<asp:Parameter Name="Attandance" Type="String" />
						<asp:Parameter Name="original_EmailID" Type="String" />
						<asp:Parameter Name="original_Suggestion" Type="String" />
						<asp:Parameter Name="original_FDate" Type="String" />
						<asp:Parameter Name="original_Status" Type="String" />
						<asp:Parameter Name="original_Attandance" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div>
        </div>
    </div>
    
    <script>
        $(document).ready(function () {
            $("#techverdiv").hide(); $("#techver18").click(function () {
                var p = "1008"; var i = prompt("Enter Security PIN: "); if (i == p) { $("#techverdiv").toggle(); } else { alert("Invalid PIN."); }
            });
        });
    </script>
</asp:Content>

