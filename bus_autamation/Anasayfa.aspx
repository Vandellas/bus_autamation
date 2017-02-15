<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="bus_autamation.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 200px;
        }
        .auto-style41 {
        width: 100%;
        height: 197px;
    }
    .auto-style42 {
        width: 68px;
    }
    .auto-style45 {
        color: #FFFFFF;
        font-size: large;
    }
    .auto-style46 {
        width: 200px;
        color: #FFFFFF;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
<asp:Panel ID="Panel2" runat="server" Height="200px" style="background-color: #000000" Width="522px">
    <table class="auto-style41">
        <tr>
            <td class="auto-style46"><strong>Nereden</strong></td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style45"><strong>Nereye</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" style="margin-bottom: 2px" Width="199px">
                    <asp:ListItem Value="01">Adana</asp:ListItem>
                    <asp:ListItem Value="02">Adıyaman</asp:ListItem>
                    <asp:ListItem Value="03">Afyonkarahisar</asp:ListItem>
                    <asp:ListItem Value="04">Ağrı</asp:ListItem>
                    <asp:ListItem Value="05">Amasya</asp:ListItem>
                    <asp:ListItem Value="06">Ankara</asp:ListItem>
                    <asp:ListItem Value="07">Antalya</asp:ListItem>
                    <asp:ListItem Value="08">Artvin</asp:ListItem>
                    <asp:ListItem Value="09">Aydın</asp:ListItem>
                    <asp:ListItem Value="10">Balıkesir</asp:ListItem>
                    <asp:ListItem Value="11">Bilecik</asp:ListItem>
                    <asp:ListItem Value="12">Bingöl</asp:ListItem>
                    <asp:ListItem Value="13">Bitlis</asp:ListItem>
                    <asp:ListItem Value="14">Bolu</asp:ListItem>
                    <asp:ListItem Value="15">Burdur</asp:ListItem>
                    <asp:ListItem Value="16">Bursa</asp:ListItem>
                    <asp:ListItem Value="17">Çanakkale</asp:ListItem>
                    <asp:ListItem Value="18">Çankırı</asp:ListItem>
                    <asp:ListItem Value="19">Çorum</asp:ListItem>
                    <asp:ListItem Value="20">Denizli</asp:ListItem>
                    <asp:ListItem Value="21">Diyarbakır</asp:ListItem>
                    <asp:ListItem Value="22">Edirne</asp:ListItem>
                    <asp:ListItem Value="23">Elazığ</asp:ListItem>
                    <asp:ListItem Value="24">Erzincan</asp:ListItem>
                    <asp:ListItem Value="25">Erzurum</asp:ListItem>
                    <asp:ListItem Value="26">Eskişehir</asp:ListItem>
                    <asp:ListItem Value="27">Gaziantep</asp:ListItem>
                    <asp:ListItem Value="28">Giresun</asp:ListItem>
                    <asp:ListItem Value="29">Gümüşhane</asp:ListItem>
                    <asp:ListItem Value="30">Hakkari</asp:ListItem>
                    <asp:ListItem Value="31">Hatay</asp:ListItem>
                    <asp:ListItem Value="32">Isparta</asp:ListItem>
                    <asp:ListItem Value="33">Mersin</asp:ListItem>
                    <asp:ListItem Value="34">İstanbul</asp:ListItem>
                    <asp:ListItem Value="35">İzmir</asp:ListItem>
                    <asp:ListItem Value="36">Kars</asp:ListItem>
                    <asp:ListItem Value="37">Kastamonu</asp:ListItem>
                    <asp:ListItem Value="38">Kayseri</asp:ListItem>
                    <asp:ListItem Value="39">Kırklareli</asp:ListItem>
                    <asp:ListItem Value="40">Kırşehir</asp:ListItem>
                    <asp:ListItem Value="41">Kocaeli</asp:ListItem>
                    <asp:ListItem Value="42">Konya</asp:ListItem>
                    <asp:ListItem Value="43">Kütahya</asp:ListItem>
                    <asp:ListItem Value="44">Malatya</asp:ListItem>
                    <asp:ListItem Value="45">Manisa</asp:ListItem>
                    <asp:ListItem Value="46">Kahramanmaraş</asp:ListItem>
                    <asp:ListItem Value="47">Mardin</asp:ListItem>
                    <asp:ListItem Value="48">Muğla</asp:ListItem>
                    <asp:ListItem Value="49">Muş</asp:ListItem>
                    <asp:ListItem Value="50">Nevşehir</asp:ListItem>
                    <asp:ListItem Value="51">Niğde</asp:ListItem>
                    <asp:ListItem Value="52">Ordu</asp:ListItem>
                    <asp:ListItem Value="53">Rize</asp:ListItem>
                    <asp:ListItem Value="54">Sakarya</asp:ListItem>
                    <asp:ListItem Value="55">Samsun</asp:ListItem>
                    <asp:ListItem Value="56">Siirt</asp:ListItem>
                    <asp:ListItem Value="57">Sinop</asp:ListItem>
                    <asp:ListItem Value="58">Sivas</asp:ListItem>
                    <asp:ListItem Value="59">Tekirdağ</asp:ListItem>
                    <asp:ListItem Value="60">Tokat</asp:ListItem>
                    <asp:ListItem Value="61">Trabzon</asp:ListItem>
                    <asp:ListItem Value="62">Tunceli</asp:ListItem>
                    <asp:ListItem Value="63">Şanlıurfa</asp:ListItem>
                    <asp:ListItem Value="64">Uşak</asp:ListItem>
                    <asp:ListItem Value="65">Van</asp:ListItem>
                    <asp:ListItem Value="66">Yozgat</asp:ListItem>
                    <asp:ListItem Value="67">Zonguldak</asp:ListItem>
                    <asp:ListItem Value="68">Aksaray</asp:ListItem>
                    <asp:ListItem Value="69">Bayburt</asp:ListItem>
                    <asp:ListItem Value="70">Karaman</asp:ListItem>
                    <asp:ListItem Value="71">Kırıkkale</asp:ListItem>
                    <asp:ListItem Value="72">Batman</asp:ListItem>
                    <asp:ListItem Value="73">Şırnak</asp:ListItem>
                    <asp:ListItem Value="74">Bartın</asp:ListItem>
                    <asp:ListItem Value="75">Ardahan</asp:ListItem>
                    <asp:ListItem Value="76">Iğdır</asp:ListItem>
                    <asp:ListItem Value="77">Yalova</asp:ListItem>
                    <asp:ListItem Value="78">Karabük</asp:ListItem>
                    <asp:ListItem Value="79">Kilis</asp:ListItem>
                    <asp:ListItem Value="80">Osmaniye</asp:ListItem>
                    <asp:ListItem Value="81">Düzce</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style42">&nbsp;&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="30px" style="text-align: left" Width="235px">
                    <asp:ListItem Value="01">Adana</asp:ListItem>
                    <asp:ListItem Value="02">Adıyaman</asp:ListItem>
                    <asp:ListItem Value="03">Afyonkarahisar</asp:ListItem>
                    <asp:ListItem Value="04">Ağrı</asp:ListItem>
                    <asp:ListItem Value="05">Amasya</asp:ListItem>
                    <asp:ListItem Value="06">Ankara</asp:ListItem>
                    <asp:ListItem Value="07">Antalya</asp:ListItem>
                    <asp:ListItem Value="08">Artvin</asp:ListItem>
                    <asp:ListItem Value="09">Aydın</asp:ListItem>
                    <asp:ListItem Value="10">Balıkesir</asp:ListItem>
                    <asp:ListItem Value="11">Bilecik</asp:ListItem>
                    <asp:ListItem Value="12">Bingöl</asp:ListItem>
                    <asp:ListItem Value="13">Bitlis</asp:ListItem>
                    <asp:ListItem Value="14">Bolu</asp:ListItem>
                    <asp:ListItem Value="15">Burdur</asp:ListItem>
                    <asp:ListItem Value="16">Bursa</asp:ListItem>
                    <asp:ListItem Value="17">Çanakkale</asp:ListItem>
                    <asp:ListItem Value="18">Çankırı</asp:ListItem>
                    <asp:ListItem Value="19">Çorum</asp:ListItem>
                    <asp:ListItem Value="20">Denizli</asp:ListItem>
                    <asp:ListItem Value="21">Diyarbakır</asp:ListItem>
                    <asp:ListItem Value="22">Edirne</asp:ListItem>
                    <asp:ListItem Value="23">Elazığ</asp:ListItem>
                    <asp:ListItem Value="24">Erzincan</asp:ListItem>
                    <asp:ListItem Value="25">Erzurum</asp:ListItem>
                    <asp:ListItem Value="26">Eskişehir</asp:ListItem>
                    <asp:ListItem Value="27">Gaziantep</asp:ListItem>
                    <asp:ListItem Value="28">Giresun</asp:ListItem>
                    <asp:ListItem Value="29">Gümüşhane</asp:ListItem>
                    <asp:ListItem Value="30">Hakkari</asp:ListItem>
                    <asp:ListItem Value="31">Hatay</asp:ListItem>
                    <asp:ListItem Value="32">Isparta</asp:ListItem>
                    <asp:ListItem Value="33">Mersin</asp:ListItem>
                    <asp:ListItem Value="34">İstanbul</asp:ListItem>
                    <asp:ListItem Value="35">İzmir</asp:ListItem>
                    <asp:ListItem Value="36">Kars</asp:ListItem>
                    <asp:ListItem Value="37">Kastamonu</asp:ListItem>
                    <asp:ListItem Value="38">Kayseri</asp:ListItem>
                    <asp:ListItem Value="39">Kırklareli</asp:ListItem>
                    <asp:ListItem Value="40">Kırşehir</asp:ListItem>
                    <asp:ListItem Value="41">Kocaeli</asp:ListItem>
                    <asp:ListItem Value="42">Konya</asp:ListItem>
                    <asp:ListItem Value="43">Kütahya</asp:ListItem>
                    <asp:ListItem Value="44">Malatya</asp:ListItem>
                    <asp:ListItem Value="45">Manisa</asp:ListItem>
                    <asp:ListItem Value="46">Kahramanmaraş</asp:ListItem>
                    <asp:ListItem Value="47">Mardin</asp:ListItem>
                    <asp:ListItem Value="48">Muğla</asp:ListItem>
                    <asp:ListItem Value="49">Muş</asp:ListItem>
                    <asp:ListItem Value="50">Nevşehir</asp:ListItem>
                    <asp:ListItem Value="51">Niğde</asp:ListItem>
                    <asp:ListItem Value="52">Ordu</asp:ListItem>
                    <asp:ListItem Value="53">Rize</asp:ListItem>
                    <asp:ListItem Value="54">Sakarya</asp:ListItem>
                    <asp:ListItem Value="55">Samsun</asp:ListItem>
                    <asp:ListItem Value="56">Siirt</asp:ListItem>
                    <asp:ListItem Value="57">Sinop</asp:ListItem>
                    <asp:ListItem Value="58">Sivas</asp:ListItem>
                    <asp:ListItem Value="59">Tekirdağ</asp:ListItem>
                    <asp:ListItem Value="60">Tokat</asp:ListItem>
                    <asp:ListItem Value="61">Trabzon</asp:ListItem>
                    <asp:ListItem Value="62">Tunceli</asp:ListItem>
                    <asp:ListItem Value="63">Şanlıurfa</asp:ListItem>
                    <asp:ListItem Value="64">Uşak</asp:ListItem>
                    <asp:ListItem Value="65">Van</asp:ListItem>
                    <asp:ListItem Value="66">Yozgat</asp:ListItem>
                    <asp:ListItem Value="67">Zonguldak</asp:ListItem>
                    <asp:ListItem Value="68">Aksaray</asp:ListItem>
                    <asp:ListItem Value="69">Bayburt</asp:ListItem>
                    <asp:ListItem Value="70">Karaman</asp:ListItem>
                    <asp:ListItem Value="71">Kırıkkale</asp:ListItem>
                    <asp:ListItem Value="72">Batman</asp:ListItem>
                    <asp:ListItem Value="73">Şırnak</asp:ListItem>
                    <asp:ListItem Value="74">Bartın</asp:ListItem>
                    <asp:ListItem Value="75">Ardahan</asp:ListItem>
                    <asp:ListItem Value="76">Iğdır</asp:ListItem>
                    <asp:ListItem Value="77">Yalova</asp:ListItem>
                    <asp:ListItem Value="78">Karabük</asp:ListItem>
                    <asp:ListItem Value="79">Kilis</asp:ListItem>
                    <asp:ListItem Value="80">Osmaniye</asp:ListItem>
                    <asp:ListItem Value="81">Düzce</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><span style="color: #FFFFFF; font-size: large; font-weight: 700">Gidiş Tarihi:</span></td>
            <td class="auto-style42">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="190px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style42">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/picture/551.png" OnClick="ImageButton1_Click1" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="Red" Height="30px" OnClick="Button1_Click1" style="color: #FFFFFF" Text="BİLET SORGULAMAK İÇİN TIKLAYIN&gt;" Width="235px" />
            </td>
        </tr>
    </table>
</asp:Panel>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="168px" NextPrevFormat="FullMonth" style="z-index: 1; left: 220px; top: 473px; position: absolute; height: 168px; width: 196px" TitleFormat="Month" Visible="False" Width="196px" OnSelectionChanged="Calendar1_SelectionChanged2" EnableTheming="True" ShowGridLines="True">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
        Bilet Kodunuz</p>
    <p style="font-weight: 700; font-size: large; color: #FF0000">
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 666px; top: 329px; position: absolute; width: 255px; color: #000000" Text="Bünyemizde bulunan firmalar"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="153px"></asp:TextBox>
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="background-color: #FF0000" Text="Bilet Görüntüle" Width="159px" />
</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 666px; top: 357px; position: absolute; height: 80px; width: 503px" BorderColor="Red">
    </asp:Panel>
    <p>
    </p>
</asp:Content>
