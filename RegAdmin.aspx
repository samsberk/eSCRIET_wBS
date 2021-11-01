<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="RegAdmin.aspx.cs" Inherits="RegAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="container">
        <br /><br /><br /><div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4 text-center form-group" style="background:ghostwhite;border-radius:10px;">
                <br /><hr />
                <asp:TextBox ID="aid" CssClass="form-control box-txt" placeholder="Admin ID" runat="server"></asp:TextBox>
                <asp:TextBox ID="aname" CssClass="form-control box-txt" placeholder="Admin Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="apas" TextMode="Password" CssClass="form-control box-txt" placeholder="Password" runat="server"></asp:TextBox><br />
                <asp:CheckBox ID="acon" runat="server" Text="&ensp;confirm" /><br />
                <asp:Button ID="ambtm" CssClass="btn btn-success btn-block" runat="server" Text="Generate" OnClick="ambtm_Click" /><br /><br />
            </div>
            <div class="col-sm-4">
                <asp:TextBox runat="server" ID="vis" CssClass="form-control"></asp:TextBox>
                <br /><asp:Button runat="server" ID="vissub" CssClass="btn btn-danger" Text="Confirm" OnClick="vissub_Click" />
            </div>
        </div>
    </div>
</asp:Content>

