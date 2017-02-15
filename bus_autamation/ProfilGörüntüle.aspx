<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilGörüntüle.aspx.cs" Inherits="bus_autamation.ProfilGörüntüle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style15 {
            color: #000000;
        }
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 72%;
            margin-right: 0px;
        }
        .auto-style9 {
            width: 247px;
            font-size: large;
            height: 22px;
            color: #FFFFFF;
        }
        .auto-style10 {
            height: 22px;
            font-size: large;
            color: #000000;
        }
        .auto-style4 {
            width: 247px;
            font-size: large;
        }
        .auto-style12 {
            font-size: large;
            color: #FFFFFF;
            width: 247px;
        }
        .auto-style16 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style18 {
            font-size: large;
            color: #000000;
        }
        .auto-style14 {
            width: 247px;
            font-size: large;
            height: 31px;
            color: #000000;
        }
        .auto-style7 {
            height: 31px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 247px;
            font-size: large;
            height: 31px;
        }
        .auto-style8 {
            height: 31px;
        }
        .auto-style19 {
            width: 247px;
            font-size: large;
            height: 51px;
        }
        .auto-style20 {
            height: 51px;
        }
        .auto-style21 {
            width: 247px;
        }
        .auto-style22 {
            width: 100%;
            height: 44px;
        }
        .auto-style23 {
            width: 102px;
            text-align: center;
        }
        .auto-style24 {
            width: 123px;
        }
        .auto-style25 {
            width: 118px;
        }
        .auto-style26 {
            width: 89px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div style="text-align: left; background-color: #FFFFFF;" class="auto-style1">
    
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" ImageUrl="~/picture/bus_assisLogo.png" OnClick="ImageButton1_Click" Width="921px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Profil Bilgileri"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Biletlleriniz&nbsp;
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style9"><span class="auto-style15">Ad&nbsp;&nbsp;&nbsp; </span>&nbsp;</td>
                <td class="auto-style10">Soyad</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="212px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="212px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span class="auto-style16">E-mail </span>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Lütfen emailinizi doğru giriniz!!" style="font-size: small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox4" runat="server" Width="211px" Enabled="False"></asp:TextBox>
                    <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 666px; top: 310px; position: absolute; height: 45px; width: 587px" ForeColor="#333300">
                        <table class="auto-style22" style="position: static; caption-side: top; vertical-align: text-top;">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Image ID="Image5" runat="server" Height="48px" Width="110px" />
                                </td>
                                <td class="auto-style25">
                                    <asp:Label ID="Label8" runat="server" style="font-size: small; text-align: left; z-index: 1; left: 131px; top: 17px; position: absolute" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style24">
                                    <asp:Label ID="Label9" runat="server" style="font-size: small; z-index: 1; left: 280px; top: 17px; position: absolute" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style26">
                                    <asp:Label ID="Label10" runat="server" style="font-size: small; z-index: 1; left: 383px; top: 17px; position: absolute" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" style="font-size: small; z-index: 1; left: 495px; top: 17px; position: absolute" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span class="auto-style15">Parola </span>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Parolanız eşleşmemektedir!!" style="font-size: small" EnableClientScript="False"></asp:CompareValidator>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="Label1" runat="server" Text="Parola Yeniden Girin" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" Width="212px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="212px" TextMode="Password" Enabled="False" Visible="False"></asp:TextBox>
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
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="212px" Enabled="False">
                        <asp:ListItem Value="1">Bay</asp:ListItem>
                        <asp:ListItem Value="2">Bayan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox7" runat="server" Width="212px" value="örn-05547401211" onfocus="if(this.beenchanged!=true){ this.value = ''}" onblur="if(this.beenchanged!=true) { this.value='örn-05547401211' }" onchange="this.beenchanged = true;" Enabled="False"></asp:TextBox>
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" style="font-size: small" Text="Profil Güncelle" />
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="background-color: #FF0000" Text="Güncele" Width="212px" OnClick="Button1_Click" Visible="False" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <p>
        <asp:Image ID="Image4" runat="server" Height="29px" ImageUrl="~/picture/Bilgiler.jpg" Width="596px" style="z-index: 1; left: 660px; top: 274px; position: absolute" />
        </p>
        <p>
            &nbsp;</p>
        <p class="auto-style19" style="width: 913px">
                    <asp:Image ID="Image2" runat="server" Height="130px" ImageUrl="~/picture/Resim1.png" Width="464px" />
                <span style="color: rgb(165, 165, 165); font-family: tahoma; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><strong>Copyright © 2015 Tüm Hakları Saklıdır İzinsiz Kullanılamaz. </strong></span>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:DropDownList ID="BiletDrop" runat="server" Height="25px" Width="323px" AutoPostBack="True" OnSelectedIndexChanged="FirmaDrop_SelectedIndexChanged" style="z-index: 1; left: 663px; top: 243px; position: absolute">
        </asp:DropDownList>
    </form>
</body>
</html>
