<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bus_autamation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="Scripts/otherQuery.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p><asp:TextBox id="datepicker" runat="server"></asp:TextBox>
       <span class="compulsory">*</span></p>
</asp:Content>
