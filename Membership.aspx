<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Membership.aspx.cs" Inherits="Membership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Membership</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="row" style="font-family:Calibri; font-size:17px;">
        <div class="col-sm-3"></div>
        <div class="col-sm-6 form-group" style="background:ghostwhite;border-radius:20px;padding-left:30px;padding-right:30px;">
            <div class="row">
                <h2 style="font-weight:bold;text-align:center;"><span class="glyphicon glyphicon-user"></span>  Membership Form</h2><hr />
                <div class="col-sm-6">
                    <label for="fnametxt">First Name:</label>
                    <asp:TextBox ID="fnametxt" CssClass="form-control box-txt" placeholder="First Name" runat="server" style="text-transform:uppercase;" required="true"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <label for="lnametxt">Last Name:</label>
                    <asp:TextBox ID="lnametxt" CssClass="form-control box-txt" placeholder="Middle & Last Name" runat="server" style="text-transform:uppercase;" required="true"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <br /><label for="dobtxt">Date of Birth:</label>
                    <asp:TextBox ID="dobtxt" TextMode="Date" CssClass="form-control box-txt" placeholder="Date of Birth" runat="server" required="true"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <br /><label for="malerbtn">Gender:</label><br />
                    <asp:RadioButton ID="malerbtn" CssClass="rmbtn" GroupName="gen" runat="server" Text="MALE" /> <asp:RadioButton ID="femalerbtn" CssClass="rfbtn" GroupName="gen" runat="server" Text="FEMALE" /><br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <br /><label for="branchdrpdwn">Branch/Stream:</label>
                    <asp:DropDownList ID="branchdrpdwn" CssClass="form-control box-txt" style="padding-bottom:0px!important;" runat="server" required="true">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>AGRICULTURE ENGINEERING</asp:ListItem>
                        <asp:ListItem>CHEMICAL ENGINEERING</asp:ListItem>
                        <asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
                        <asp:ListItem>ELECTRONICS & COMMUNICATION</asp:ListItem>
                        <asp:ListItem>ELECTRONICS & INSTRUMENTATION</asp:ListItem>
                        <asp:ListItem>MECHANICAL ENGINEERING</asp:ListItem>
                        <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
                        <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
                        <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-6">
                    <br /><label for="year">Year:</label>
                    <asp:DropDownList ID="year" CssClass="form-control box-txt" style="padding-bottom:0px!important;" runat="server" required="true">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </div>                
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <br /><label for="contacttxt">Contact Number (Only 10 Digit):</label>
                    <asp:TextBox ID="contacttxt" TextMode="Number"  CssClass="form-control box-txt" placeholder="Contact Number" runat="server" required="true"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <br /><label for="emailtxt">Email ID:</label>
                    <asp:TextBox ID="emailtxt" TextMode="Email" CssClass="form-control box-txt" placeholder="E-Mail ID" runat="server" required="true"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <br /><br />
                    <asp:CheckBox ID="agreechbox" runat="server" Text="&nbsp; Agree" /> <b>(<a href="#tc" title="Terms & Conditions" data-toggle="modal" style="text-decoration:none;color:green;">T&C</a> Apply)</b><br /><br />
                    <asp:Button ID="subregbtn" CssClass="btn btn-success btn-lg text-center" runat="server" Text="Submit Form" OnClick="subregbtn_Click" />                    
                </div>
                <div class="modal fade" id="tc" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content"style="background:#f2f2f2!important;">
                                <br /><div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h3 style="font-weight:bold;text-align:center;">Membership Terms & Conditions</h3>
                                </div>
                                <div class="modal-body" style="height:300px;overflow-x:auto;">
                                        <p>
                                            sdfhkdjfhkdh<br />sjdlkjsdkf<br />aakhsjdak<br />jdlsakjlkda<br />klsjadlskdjl
                                        </p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Confirm</button>
                                </div>
                            </div>
                        </div>
                    </div>
            </div><br />
        </div>
        <div class="col-sm-3"></div>
    </div>
</asp:Content>

