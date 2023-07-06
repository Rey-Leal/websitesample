<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"
    CodeFile="Usuarios.aspx.cs" Inherits="ListaUsuarios" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <p>
            Usuários cadastrados atualmente:</p>
        <br />
        <asp:GridView ID="grdListaUsuarios" runat="server" ForeColor="#333333" GridLines="Both"
            Height="61px" Width="411px" CellSpacing="1" CaptionAlign="Left">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </div>
</asp:Content>
