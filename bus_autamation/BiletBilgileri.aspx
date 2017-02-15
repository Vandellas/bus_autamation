<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="BiletBilgileri.aspx.cs" Inherits="bus_autamation.BiletBilgileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Image ID="Image3" runat="server" Height="39px" ImageUrl="~/picture/biletgiris.jpg" Width="1171px" />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" Height="38px" ImageUrl="~/picture/Bilgiler.jpg" Width="1097px" />
        <asp:Image ID="Image5" runat="server" style="z-index: 1; left: 99px; top: 357px; position: absolute; height: 73px" Width="183px" />
    </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Panel ID="Panel1" runat="server" style="margin-left: 55px" Width="1093px">
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 288px; top: 381px; position: absolute; width: 218px; height: 66px; text-align: center; font-size: large; font-weight: 700" Text="Label"></asp:Label>
    </asp:Panel>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" style="z-index: 1; left: 512px; top: 379px; position: absolute; width: 226px; height: 41px; text-align: center; font-size: large" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 739px; top: 380px; position: absolute; width: 170px; height: 67px; text-align: center; font-size: large" Text="Label"></asp:Label>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 916px; top: 380px; position: absolute; height: 70px; width: 237px; text-align: center; font-size: large" Text="Label"></asp:Label>
        <asp:Image ID="Image6" runat="server" Height="39px" ImageUrl="~/picture/YolcuBilgileri.jpg" style="margin-left: 0px" Width="1171px" />
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 503px; top: 412px; position: absolute; width: 243px; height: 28px; text-align: center; font-size: large" Text="Label"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 291px; top: 377px; position: absolute; width: 222px; height: 54px; text-align: center; font-size: large" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ad ve Soyad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-Posta Adresi<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*" style="z-index: 1; left: 436px; top: 629px; position: absolute; font-size: small"></asp:RequiredFieldValidator>
    </p>
    <p>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="22px" style="margin-left: 76px" Width="330px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="330px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" EnableClientScript="False" ErrorMessage="Lütfen emailinizi doğru giriniz!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 80px">
        Cep Telefonu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 80px">
        <asp:TextBox ID="TextBox3" runat="server" Height="22px" style="margin-left: 0px" Width="330px" value="örn-05547401211" onfocus="if(this.beenchanged!=true){ this.value = ''}" onblur="if(this.beenchanged!=true) { this.value='örn-05547401211' }" onchange="this.beenchanged = true;"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Lütfen telefon numarsını istenildiği şekilde girin" Font-Size="Large" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" style="font-size: small"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 1040px">
        <asp:Button ID="Button2" runat="server" BackColor="Red" OnClick="Button2_Click" Text="Bileti Satın Al" Width="128px" />
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 81px; top: 761px; position: absolute; width: 241px; font-size: large; color: #FF0000"></asp:Label>
    </p>
    <p>
    </p>
</asp:Content>
