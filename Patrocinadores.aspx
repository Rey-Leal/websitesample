<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Patrocinadores.aspx.cs" Inherits="Patrocinadores" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="alinhamentoEsquerdo">
        <p>
            Aqui estão nossos principais parceiros nesta jornada:</p>
    </div>
    <br />
    <table width="100%">
        <tr>
            <td>
                <img alt="" src="patrocinadores/cna.gif" />
            </td>
            <td>
                <img alt="" src="patrocinadores/fazendeiro.gif" />
            </td>
        </tr>
        <tr>
            <td>
                <img alt="" src="patrocinadores/letricia.gif" />
            </td>
            <td>
                <img alt="" src="patrocinadores/tet.gif" />
            </td>
        </tr>
    </table>
</asp:Content>
