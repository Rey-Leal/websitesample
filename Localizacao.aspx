<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Localizacao.aspx.cs" Inherits="Localizacao" Title="WebSiteSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <iframe width="470" height="330" frameborder="0" scrolling="no" marginheight="0"
            marginwidth="0" src="http://maps.google.com.br/maps?f=q&amp;source=s_q&amp;hl=pt-BR&amp;geocode=&amp;q=passos,+rua+dos+brandoes+231&amp;sll=-20.738135,-46.765022&amp;sspn=0.155081,0.220757&amp;ie=UTF8&amp;hq=&amp;hnear=R.+dos+Brand%C3%B5es,+231+-+Centro,+Passos+-+MG,+37900-104&amp;z=16&amp;ll=-20.725547,-46.60688&amp;output=embed">
        </iframe>
        <br />
        <small><a href="http://maps.google.com.br/maps?f=q&amp;source=embed&amp;hl=pt-BR&amp;geocode=&amp;q=passos,+rua+dos+brandoes+231&amp;sll=-20.738135,-46.765022&amp;sspn=0.155081,0.220757&amp;ie=UTF8&amp;hq=&amp;hnear=R.+dos+Brand%C3%B5es,+231+-+Centro,+Passos+-+MG,+37900-104&amp;z=16&amp;ll=-20.725547,-46.60688"
            style="color: #0000FF; text-align: left">Exibir mapa ampliado</a></small>
</asp:Content>
