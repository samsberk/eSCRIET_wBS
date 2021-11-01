<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="Alumni_Management.aspx.cs" Inherits="AdminZone_Alumni_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Alumni Verification Management</title>
    <style>
        th,td
        {padding:2px 5px;}
    </style>
    <script>
        function printlist(nolist) {
            var de = document.getElementById("nolist").innerHTML;
            var oldp = document.body.innerHTML;
            document.body.innerHTML = "<html><head><title></title></head><body>" + de + "</body>";
            window.print();
            document.body.innerHTML = oldp;
        }
        function printrej(rejnolist) {
            var de = document.getElementById("rejnolist").innerHTML;
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
            <li class="active">Alumni Management</li>
            <li>Alumni Details</li>
        </ul>
        <h4 style="font-weight:bold;">Alumni Verification Panel <span class="glyphicon glyphicon-chevron-right"></span></h4>
        <div class="container-fluid" style="height:400px;background:ghostwhite;overflow-y:scroll;padding:10px;border-radius:5px;border:1px solid gray;">
            <ul class="nav nav-pills mypills">
                <li class="active"><a class="link" data-toggle="pill" href="#all" style="font-size:15px;padding:8px;"> ALL</a></li>
                <li><a  class="link" data-toggle="pill" href="#var" style="font-size:15px;padding:8px;"> Verified</a></li>
                <li><a  class="link" data-toggle="pill" href="#notvar" style="font-size:15px;padding:8px;"> Not-Verified</a></li>
                <li><a  class="link" data-toggle="pill" href="#rej" style="font-size:15px;padding:8px;"> Rejected</a></li>
            </ul>
            <div class="tab-content">
                <div id="all" class="tab-pane fade in active">
                    <table border="1" style="width:100%;margin-top:10px;font-size:15px;">
                        <tr><th>Sr.No.</th><th>Email ID</th><th>Alumni Name</th><th>Branch</th><th>Batch</th><th>Verification</th></tr>
                        <asp:PlaceHolder ID="allstu" runat="server"></asp:PlaceHolder>
                    </table>
                </div>
                <div id="var" class="tab-pane fade">
                    <table border="1" style="width:100%;margin-top:10px;font-size:15px;">
                        <tr><th>Sr.No.</th><th>Email ID</th><th>Alumni Name</th><th>Branch</th><th>Batch</th><th>Verification</th></tr>
                        <asp:PlaceHolder ID="varstu" runat="server"></asp:PlaceHolder>
                    </table>
                </div>
                <div id="notvar" class="tab-pane fade">
                    <table border="1" style="width:100%;margin-top:10px;font-size:15px;">
                        <tr><th>Sr.No.</th><th>Email ID</th><th>Alumni Name</th><th>Branch</th><th>Batch</th><th>Verification</th></tr>
                        <asp:PlaceHolder ID="nvarstu" runat="server"></asp:PlaceHolder>
                    </table>
                </div>
                <div id="rej" class="tab-pane fade">
                    <table border="1" style="width:100%;margin-top:10px;font-size:15px;">
                        <tr><th>Sr.No.</th><th>Email ID</th><th>Alumni Name</th><th>Branch</th><th>Batch</th><th>Verification</th></tr>
                        <asp:PlaceHolder ID="rejstu" runat="server"></asp:PlaceHolder>
                    </table>
                </div>
            </div>
        </div><br />
        <h4 style="font-weight:bold;">Alumni Registration List <span class="glyphicon glyphicon-chevron-right"></span>&emsp;<button id="prnt" class="btn btn-success" type="button" onclick="javascript:printlist('nolist')"><span class="glyphicon glyphicon-print"></span>&ensp;Print List</button></h4>
        <div id="nolist" class="container-fluid" style="height:500px;background:ghostwhite;overflow-y:scroll;padding:10px;border-radius:5px;border:1px solid gray;">            
            <table border="1" style="width:150%;margin-top:10px;font-size:15px;text-align:center;margin-bottom:3px;border-left:none;">
                <tr><th colspan="11">2<sup>nd</sup> Alumni <code>Registration List</code> 2018  <span class="glyphicon glyphicon-chevron-right"></span> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Total Registration : <asp:Label runat="server" ID="totno" Text="0"></asp:Label></th></tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="True" Width="100%">
                <Columns>
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="HRContact" HeaderText="HR Contact" SortExpression="HRContact" />
                    <asp:BoundField DataField="EventAttend" HeaderText="Event Attend" SortExpression="EventAttend" />
                    <asp:BoundField DataField="CRParticipation" HeaderText="CR Participation" SortExpression="CRParticipation" />
                    <asp:BoundField DataField="Verification" HeaderText="Verification" SortExpression="Verification" />
                    <asp:BoundField DataField="RegDate" HeaderText="Reg Date" SortExpression="RegDate" />
                </Columns>
                <RowStyle Font-Size="14px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [EmailID], [Name], [Branch], [Batch], [Designation], [CompanyName], [Contact], [HRContact], [EventAttend], [CRParticipation], [Verification], [RegDate] FROM [Alumni]"></asp:SqlDataSource>
        </div><br />
        <h4 style="font-weight:bold;">Alumni Rejected Registration List <span class="glyphicon glyphicon-chevron-right"></span>&emsp;<button id="rejprnt" class="btn btn-success" type="button" onclick="javascript:printrej('rejnolist')"><span class="glyphicon glyphicon-print"></span>&ensp;Print List</button></h4>
        <div id="rejnolist" class="container-fluid" style="height:500px;background:ghostwhite;overflow-y:scroll;padding:10px;border-radius:5px;border:1px solid gray;">            
            <table border="1" style="width:150%;margin-top:10px;font-size:15px;text-align:center;margin-bottom:3px;border-left:none;">
                <tr><th colspan="11">2<sup>nd</sup> Alumni <code>Rejected List</code> 2018  <span class="glyphicon glyphicon-chevron-right"></span> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Total Registration : <asp:Label runat="server" ID="rejtot" Text="0"></asp:Label></th></tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource2" ShowHeaderWhenEmpty="True" Width="100%">
                <Columns>
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="HRContact" HeaderText="HR Contact" SortExpression="HRContact" />
                    <asp:BoundField DataField="EventAttend" HeaderText="Event Attend" SortExpression="EventAttend" />
                    <asp:BoundField DataField="CRParticipation" HeaderText="CR Participation" SortExpression="CRParticipation" />
                    <asp:BoundField DataField="Verification" HeaderText="Verification" SortExpression="Verification" />
                    <asp:BoundField DataField="RejReson" HeaderText="Rej. Reason" SortExpression="RejReson" />
                    <asp:BoundField DataField="RejDate" HeaderText="Rej. Date" SortExpression="RejDate" />
                </Columns>
                <RowStyle Font-Size="13px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:escrietConnectionString %>" SelectCommand="SELECT [EmailID], [Name], [Branch], [Batch], [Designation], [CompanyName], [Contact], [HRContact], [EventAttend], [CRParticipation], [Verification], [RejReson], [RejDate] FROM [RejAlumni]"></asp:SqlDataSource>
        </div>
        <div class="row">
            <div class="col-sm-8"><br />
                <asp:TextBox runat="server" ID="txtdelrej" CssClass="form-control" Placeholder="Paste Email From rejection list for permanently delete"></asp:TextBox>
            </div><br />
            <div class="col-sm-4"><asp:Button runat="server" ID="btndelrej" CssClass="btn btn-danger btn-block" Text="Delete" OnClick="btndelrej_Click"/></div>
        </div>
    </div>
    
</asp:Content>

