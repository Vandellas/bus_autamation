<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="AddFirm.aspx.cs" Inherits="bus_autamation.AddFirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            font-size: large;
        }
    .auto-style17 {
        width: 206px;
        background-color: #B1303C;
        height: 51px;
    }
        .auto-style19 {
            width: 100%;
            background-color: #E4E4E4;
            z-index: 1;
            left: 0px;
            top: 0px;
            position: absolute;
            height: 414px;
        }
        .auto-style26 {
            width: 248px;
            height: 89px;
        }
        .auto-style27 {
            width: 186px;
            height: 89px;
        }
        .auto-style29 {
            width: 248px;
            height: 26px;
        }
        .auto-style30 {
            width: 186px;
            height: 26px;
        }
        .auto-style33 {
            width: 186px;
        }
        .auto-style37 {
            width: 145%;
            color: #000000;
            font-size: large;
        }
        .auto-style39 {
            width: 248px;
        }
        .auto-style43 {
        width: 248px;
        color: #000000;
        font-size: large;
    }
    .auto-style45 {
        width: 252px;
    }
    .auto-style46 {
        width: 252px;
        height: 26px;
    }
    .auto-style47 {
        width: 252px;
        height: 89px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style18" style="margin-left: 40px">
        <strong>MENÜ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Firma İşlemleri</strong></p>
    <p>
        &nbsp;</p>
        <strong>
        <table border="1" class="auto-style17">
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button5" runat="server" Height="30px" Text="Sefer İşlemleri" Width="150px" OnClick="Button5_Click" />
                    <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 231px; top: 318px; position: absolute; height: 419px; width: 533px">
                        <table class="auto-style19" border="1">
                            <tr>
                                <td class="auto-style39">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" style="font-size: large; color: #000000" Text="FirmaAdi:"></asp:Label>
                                </td>
                                <td class="auto-style33"><strong>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="128px"></asp:TextBox>
                                    </strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="font-size: small" EnableClientScript="False"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style45">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" style="color: #000000; font-size: large;" Text="Firma Logo:"></asp:Label>
                                </td>
                                <td class="auto-style30"></td>
                                <td class="auto-style46"></td>
                            </tr>
                            <tr>
                                <td class="auto-style26">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/picture/images.jpg" style="margin-top: 0px" Width="174px" Height="112px" />
                                    <br />
                                    <span class="auto-style1"><strong>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </strong></span>
                                </td>
                                <td class="auto-style27" style="margin: auto"><strong>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Font-Names="Arial" OnDataBinding="FileUpload1_DataBinding" Width="174px" />
                                    </strong></td>
                                <td class="auto-style47">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dosya Yükle" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style43">Firma Tel No:</td>
                                <td class="auto-style33"><strong>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="128px" value="örn-05547401211" onfocus="if(this.beenchanged!=true){ this.value = ''}" onblur="if(this.beenchanged!=true) { this.value='örn-05547401211' }" onchange="this.beenchanged = true;"></asp:TextBox>
                                    </strong></td>
                                <td class="auto-style45">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Lütfen telefon numarsını istenildiği şekilde girin" Font-Size="Large" style="font-size: small" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39"><span class="auto-style37">Firma Web Adresi:</span></td>
                                <td class="auto-style33"><strong>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="128px"></asp:TextBox>
                                    </strong></td>
                                <td class="auto-style45">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Lütfen web adresinizi kontrol ediniz.." style="font-size: small" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style43">Firma Merkez Adresi</td>
                                <td class="auto-style33"><strong><span class="auto-style1">
                                    <asp:TextBox ID="TextBox4" runat="server" Width="128px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="*" style="font-size: small"></asp:RequiredFieldValidator>
                                    </span></strong></td>
                                <td class="auto-style45">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style33">&nbsp;</td>
                                <td class="auto-style45">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style39"><strong><span class="auto-style1">
                                    <asp:Button ID="Button2" runat="server" BackColor="Red" OnClick="Button2_Click" style="width: 175px; height: 35px; margin-top: 2px;" Text="Kaydet" />
                                    </span></strong></td>
                                <td class="auto-style33">&nbsp;</td>
                                <td class="auto-style45">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style33">&nbsp;</td>
                                <td class="auto-style45">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button6" runat="server" Height="30px" Text="Otobüs İşlemleri" Width="150px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="Firma İşlemleri" Width="150px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
        </strong>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    <br />
    <br />
&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
</p>
    <span class="auto-style1">
    <p>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</p>
    <p>
        </strong>
</p>
    </span>
<p>
    <br />
    <br />
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
