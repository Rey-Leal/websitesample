<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Galeria.aspx.cs" Inherits="Galeria" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td>
                <a href="fotos/Foto1.jpg" target="_blank" title="TanRede">Aspire One<br />
                    <img alt="" src="fotos/Foto1.jpg" class="imagensGaleria" /></a>
            </td>
            <td>
                <a href="fotos/Foto2.jpg" target="_blank" title="TanRede">Athlon Black Piano<br />
                    <img alt="" src="fotos/Foto2.jpg" class="imagensGaleria" /></a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="fotos/Foto3.jpg" target="_blank" title="TanRede">Accer Revolutions<br />
                    <img alt="" src="fotos/Foto3.jpg" class="imagensGaleria" /></a>
            </td>
            <td>
                <a href="fotos/Foto4.jpg" target="_blank" title="TanRede">Amazon PC<br />
                    <img alt="" src="fotos/Foto4.jpg" class="imagensGaleria" /></a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="fotos/Foto5.jpg" target="_blank" title="TanRede">HP Motion Blur<br />
                    <img alt="" src="fotos/Foto5.jpg" class="imagensGaleria" /></a>
            </td>
            <td>
                <a href="fotos/Foto6.jpg" target="_blank" title="TanRede">Easy-Share Rare Fiction<br />
                    <img alt="" src="fotos/Foto6.jpg" class="imagensGaleria" /></a>
            </td>
        </tr>
    </table>
</asp:Content>
