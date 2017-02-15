<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="BiletAlma.aspx.cs" Inherits="bus_autamation.BiletAlma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" type="text/css" href="Css1.css">
    <style type="text/css">
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            color: #FF0000;
            text-decoration: underline;
        }
        .auto-style10 {
            text-align: left;
        }
    .auto-style11 {
        height: 22px;
        width: 1368px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image3" runat="server" Height="115px" ImageUrl="~/picture/login-box-thumb.png" Width="790px" />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/picture/551.png" OnClick="ImageButton1_Click" style="z-index: 1; left: 845px; top: 359px; position: absolute; height: 34px; width: 21px" />
        <asp:Button ID="Button3" runat="server" Height="34px" style="z-index: 1; left: 868px; top: 361px; position: absolute; width: 69px; background-color: #FF0000" Text="Ara" />
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 195px; top: 340px; position: absolute; font-size: large; color: #FFFFCC; font-weight: 700" Text="Nereden"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 422px; top: 340px; position: absolute; font-size: large; color: #FFFFFF; font-weight: 700" Text="Nereye"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 658px; top: 340px; position: absolute; color: #FFFFFF; font-size: large; font-weight: 700" Text="Tarih"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" BorderColor="White" ForeColor="Red" Text="Otobüs Seferleri    :" style="text-decoration: underline; font-weight: 700; font-size: large"></asp:Label>
        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" style="z-index: 1; left: 985px; top: 415px; position: absolute; height: 21px; background-color: #FF00FF;" Text="Bayan" Visible="False" />
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" style="z-index: 1; left: 1069px; top: 415px; position: absolute; height: 21px" Text="Bay" Visible="False" BackColor="Blue" />
        <asp:Image ID="Image4" runat="server" Height="63px" ImageUrl="~/picture/Adsız.png" Width="557px" BorderStyle="Outset" />
        <asp:Image ID="Image5" runat="server" ImageUrl="~/picture/BOYEMDER-OTOBUS-KOLTUK.jpg" style="z-index: 1; left: 940px; top: 440px; position: absolute; width: 253px; height: 82px" Visible="False" />
    </p>
    <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 269px; top: 523px; position: absolute; height: 336px; width: 117px" Width="117px" BorderColor="Black">
    </asp:Panel>
    <p class="auto-style7">
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 195px; top: 363px; position: absolute; height: 31px; width: 184px" Width="184px">
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
        <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" style="z-index: 1; left: 418px; top: 361px; position: absolute" Width="184px">
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
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 658px; top: 362px; position: absolute; width: 184px; height: 32px; bottom: 260px;" OnClick="Button1_Click1" BackColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style7">
        </p>
    <asp:Panel ID="Panel8" runat="server" style="z-index: 1; left: 943px; top: 528px; position: absolute; height: 305px; width: 254px">
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" style="z-index: 1; left: 684px; top: 522px; position: absolute; height: 322px; width: 127px">
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 390px; top: 521px; position: absolute; height: 337px; width: 100px; text-align: left">
    </asp:Panel>
    <p class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:Panel ID="Panel7" runat="server" style="z-index: 1; left: 497px; top: 523px; position: absolute; height: 329px; width: 181px">
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" style="z-index: 1; left: 815px; top: 522px; position: absolute; height: 313px; width: 123px" Width="123px">
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 386px; top: 11px; position: absolute; width: 91px;" Text="Satın Al" BackColor="Red" OnClick="Button2_Click" Visible="False" />
    </asp:Panel>
    <p>
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" EnableTheming="True" Font-Underline="True" style="z-index: 1; left: 307px; top: 480px; position: absolute; height: 23px; width: 99px; text-align: center; font-size: x-large" Text="Firma"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Underline="True" style="z-index: 1; left: 398px; top: 477px; position: absolute; font-size: x-large; width: 93px; height: 27px; text-align: center" Text="Saat" Width="99px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Underline="True" style="z-index: 1; left: 503px; top: 478px; position: absolute; text-align: center; width: 183px; height: 23px; font-size: x-large" Text="Araç Özelikleri"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Underline="True" style="text-align: center; font-size: x-large; z-index: 1; left: 709px; top: 477px; position: absolute" Text="Fiyat"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" style="z-index: 1; left: 659px; top: 390px; position: absolute; height: 188px; width: 252px; margin-top: 9px;" TitleFormat="Month" Visible="False" Width="400px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
