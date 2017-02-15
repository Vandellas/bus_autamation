<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="Menü.aspx.cs" Inherits="bus_autamation.Menü" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            color: #FF0000;
        width: 12px;
        background-color: #FFFFFF;
    }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="lavalamp cyan">
       <p class="auto-style6">
           &nbsp;&nbsp;&nbsp;&nbsp;Menü </p>
       <ul >
        <li class="auto-style9"><a href="SeferEkle.aspx" style="text-align: center">Sefer işlemleri</a></li>
        <li class="auto-style9"><a href="AddBus.aspx" style="text-align: left">Otobüs işlemleri</a></li>
        <li class="auto-style9"><a href="AddFirm.aspx" style ="text-align: center">Firma İşlemleri</a></li>
    </ul>
        <div class="floatr"></div>
    </div>
</asp:Content>
