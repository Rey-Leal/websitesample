<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"
    CodeFile="Cadastros.aspx.cs" Inherits="Cadastros" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" class="centralizado">
        <tr>
            <td>
                <asp:RadioButtonList ID="rblNovoAltera" runat="server" RepeatLayout="Flow" OnSelectedIndexChanged="rblNovoAltera_SelectedIndexChanged"
                    AutoPostBack="True">
                    <asp:ListItem Selected="True">Novo Cadastro</asp:ListItem>
                    <asp:ListItem>Alterar Cadastro</asp:ListItem>
                </asp:RadioButtonList> 
            </td>
        </tr>       
        <tr>
            <td>
                <br />Nome
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtNome" runat="server" CssClass="textbox"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="txtNome">Campo Obrigatório</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table>
                    <tr class="centralizado">
                        <td>
                            Idade
                        </td>
                        <td>
                            UF
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtIdade" runat="server" CssClass="textbox" Width="73px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlUf" runat="server" CssClass="textbox" Width="73px">
                                <asp:ListItem>AC</asp:ListItem>
                                <asp:ListItem>AL</asp:ListItem>
                                <asp:ListItem>GO</asp:ListItem>
                                <asp:ListItem>MG</asp:ListItem>
                                <asp:ListItem>RJ</asp:ListItem>
                                <asp:ListItem>RS</asp:ListItem>
                                <asp:ListItem>SP</asp:ListItem>
                                <asp:ListItem>SC</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rfvIdade" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="txtIdade">Campos Obrigatórios</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Logon
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtLogon" runat="server" CssClass="textbox"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvLogon" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="txtLogon">Campo Obrigatório</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Senha
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="txtSenha">Campo Obrigatório</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="button" OnClick="btnSalvar_Click" />
                <asp:Button ID="btnAlterar" runat="server" Text="Alterar" CssClass="button" OnClick="btnAlterar_Click"
                    Visible="False" />
                <input type="Reset" value="Limpar" class="button" />
            </td>
        </tr>
    </table>
    <p>
        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label></p>
</asp:Content>
