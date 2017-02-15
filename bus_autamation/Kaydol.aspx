<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="bus_autamation.Kaydol" %>

<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style4 {
            width: 305px;
            font-size: large;
        }
        .auto-style6 {
            width: 305px;
            font-size: large;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style8 {
            height: 31px;
        }
        .auto-style9 {
            width: 305px;
            font-size: large;
            height: 22px;
            color: #FFFFFF;
        }
        .auto-style10 {
            height: 22px;
            font-size: large;
            color: #000000;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style13 {
            width: 305px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style14 {
            width: 305px;
            font-size: large;
            height: 31px;
            color: #000000;
        }
        .auto-style15 {
            color: #000000;
        }
        .auto-style16 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style17 {
            width: 305px;
            font-size: large;
            color: #000000;
        }
        .auto-style18 {
            font-size: large;
            color: #000000;
        }
        .auto-style19 {
            text-align: left;
        }
    </style>
</head>
<body style="width: 1093px; color: #FFFFFF; margin-right: 111px;">
    <form id="form1" runat="server">
    <div style="text-align: left; background-color: #FFFFFF;" class="auto-style1">
    
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" ImageUrl="~/picture/bus_assisLogo.png" OnClick="ImageButton1_Click" Width="921px" />
        <br />
        <span class="auto-style15">Hesap Oluşturma</span><span class="auto-style11">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style9"><span class="auto-style15">Ad&nbsp;&nbsp;&nbsp; </span>&nbsp;</td>
                <td class="auto-style10">Soyad</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="212px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Kullanıcı Adı&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style12"><span class="auto-style16">E-mail </span>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Lütfen emailinizi doğru giriniz!!" style="font-size: small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="212px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><span class="auto-style15">Parola </span>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Parolanız eşleşmemektedir!!" style="font-size: small" EnableClientScript="False"></asp:CompareValidator>
                </td>
                <td class="auto-style18">Parola Yeniden Girin</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="212px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Cinsiyet</td>
                <td class="auto-style7"><span class="auto-style15">Telefon Numarası</span>&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Lütfen telefon numarsını istenildiği şekilde girin" Font-Size="Large" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" style="font-size: small" EnableClientScript="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="212px">
                        <asp:ListItem Value="1">Bay</asp:ListItem>
                        <asp:ListItem Value="2">Bayan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox7" runat="server" Width="212px" value="örn-05547401211" onfocus="if(this.beenchanged!=true){ this.value = ''}" onblur="if(this.beenchanged!=true) { this.value='örn-05547401211' }" onchange="this.beenchanged = true;"></asp:TextBox>
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="background-color: #FF0000" Text="Kaydol" Width="212px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
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
        <p class="auto-style19" style="width: 913px">
                    <asp:Image ID="Image2" runat="server" Height="130px" ImageUrl="~/picture/Resim1.png" Width="464px" />
                <span style="color: rgb(165, 165, 165); font-family: tahoma; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><strong>Copyright © 2015 Tüm Hakları Saklıdır İzinsiz Kullanılamaz. </strong></span>
        </p>
    </form>
</body>
</html>
