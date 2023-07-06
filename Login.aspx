<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;<p>
        Login<br />
        <asp:TextBox ID="txtLogon" runat="server" CssClass="textbox"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvLogon" runat="server" ErrorMessage="RequiredFieldValidator"
            ControlToValidate="txtLogon">  Login obrigatório!</asp:RequiredFieldValidator>
    </p>
    <p>
        Senha<br />
        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ErrorMessage="RequiredFieldValidator"
            ControlToValidate="txtSenha">  Senha obrigatória!</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="button" />&nbsp
        <input type="Reset" value="Limpar" class="button" />
        <p>
            <asp:Label ID="lblLogado" runat="server" Text="Off-Line"></asp:Label>
        </p>
    </p>
</asp:Content>
