<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="AddBus.aspx.cs" Inherits="bus_autamation.AddBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: large;
        width: 439px;
    }
    .auto-style11 {
        font-size: large;
    }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            font-size: large;
            background-color: #E4E4E4;
        }
        .auto-style15 {
            background-color: #E4E4E4;
        }
        .auto-style18 {
            font-size: large;
            height: 28px;
            width: 201px;
            background-color: #E4E4E4;
        }
        .auto-style16 {
            font-size: large;
            height: 163px;
            width: 216px;
            background-color: #E4E4E4;
            margin-top: 0px;
        }
    .auto-style17 {
            width: 970px;
            background-color: #B1303C;
        }
        .auto-style19 {
            width: 970px;
            background-color: #B1303C;
            height: 56px;
        }
    .auto-style20 {
        background-color: #E4E4E4;
        height: 35px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style11">
        <strong>MENÜ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ototbüs İşlemleri</strong></p>
    <p class="auto-style11">
        &nbsp;</p>
        <strong>
        <table border="1" class="auto-style16">
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button7" runat="server" Height="30px" Text="Sefer İşlemleri" Width="150px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button8" runat="server" Height="30px" Text="Otobüs İşlemleri" Width="150px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button9" runat="server" Height="30px" Text="Firma İşlemleri" Width="150px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
        </strong>
<p class="auto-style11">
        &nbsp;</p>
<p>
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        </p>
<p class="auto-style11">
        &nbsp;</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
<p class="auto-style11">
        &nbsp;</p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 251px; top: 325px; position: absolute; height: 373px; width: 527px">
        <table class="auto-style13" border="1">
            <tr>
                <td class="auto-style18"><strong>Firma</strong></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Otobüs İsmi</strong></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Araç Özelikleri</strong></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:CheckBox ID="CheckBox1" runat="server" style="font-size: large" Text="Tv" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" style="font-size: large" Text="LigTv" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox3" runat="server" style="font-size: large" Text="Priz" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox4" runat="server" style="font-size: large" Text="Usb" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox5" runat="server" style="font-size: large" Text="Wireless" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Otobüs Tipi</strong></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" style="font-size: large" Text="2+1" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged1" style="font-size: large" Text="2+2" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Koltuk Sayısı&nbsp;&nbsp; </strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Lütfen Koltuk Sayısnı sayı cinsinden girniz!!" style="font-size: small" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" style="font-weight: 700; text-decoration: underline; background-color: #B1303C" Text="Kaydet" Width="193px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
