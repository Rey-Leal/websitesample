<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Sugestoes.aspx.cs" Inherits="Sugestoes" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="alinhamentoEsquerdo">
        <p>
            Nome<br />
            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox"></asp:TextBox><asp:RequiredFieldValidator
                ID="rfvNome" runat="server" ErrorMessage="Campo Obrigatório" ControlToValidate="txtNome">  Campo Obrigatório</asp:RequiredFieldValidator></p>
        <p>
            <br />
            Seu Email<br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox><asp:RequiredFieldValidator
                ID="rfvEmail" runat="server" ErrorMessage="Campo Obrigatório" ControlToValidate="txtEmail">  Campo Obrigatório</asp:RequiredFieldValidator></p>
        <p>
            <br />
            Sugestão<br />
            <asp:TextBox ID="txtSugestao" runat="server" CssClass="textbox" Height="180px" Width="400px"
                TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="rfvSugestao" runat="server"
                    ErrorMessage="Campo Obrigatório" ControlToValidate="txtSugestao"><br />Escreva sua sugestão acima, por favor</asp:RequiredFieldValidator></p>
        <p>
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="button" OnClick="btnEnviar_Click" />
            <input type="Reset" value="Limpar" class="button" />
        </p>
    </div>
</asp:Content>
