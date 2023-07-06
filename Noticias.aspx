<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Noticias.aspx.cs" Inherits="Noticias" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="alinhamentoEsquerdo">
        <p>
            Os principais notícias do Brasil e do mundo, manter-se atualizado hoje em dia é
            uma questão de sobrevivência:</p>
        <br />
        <table width="100%">
            <tr>
                <td>
                    <a target="_blank" href="http://g1.globo.com/">Globo<br>
                        <img alt="" src="images/Globo.jpg" /></a>
                </td>
                <td>
                    <a target="_blank" href="http://www.clicfolha.com.br/index.php">Folha da Manhã<br>
                        <img alt="" src="images/FolhaDaManha.jpg" /></a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
