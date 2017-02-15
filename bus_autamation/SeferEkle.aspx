<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="SeferEkle.aspx.cs" Inherits="bus_autamation.SeferEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: larger;
        background-color: #FFFFFF;
            width: 12px;
        }
        .auto-style11 {
            font-size: large;
        }
    .auto-style13 {
        text-align: left;
    }
    .auto-style14 {
        font-size: large;
        height: 19px;
        text-align: left;
    }
    .auto-style17 {
        width: 211px;
        background-color: #B1303C;
        height: 57px;
    }
    .auto-style18 {
        width: 100%;
        margin-top: 39px;
        background-color: #E4E4E4;
    }
    .auto-style21 {
        height: 23px;
    }
    .auto-style25 {
        font-size: large;
    }
    .auto-style27 {
        height: 23px;
        font-size: large;
    }
    .auto-style28 {
        width: 306px;
        height: 27px;
        font-size: large;
    }
    .auto-style29 {
        height: 27px;
        font-size: large;
    }
    .auto-style30 {
        width: 306px;
        height: 57px;
    }
    .auto-style31 {
        height: 57px;
    }
    .auto-style32 {
        width: 306px;
        height: 35px;
    }
    .auto-style33 {
        height: 35px;
    }
    .auto-style34 {
        color: #000000;
    }
    .auto-style35 {
        font-size: small;
    }
    .auto-style45 {
        width: 306px;
        font-size: large;
    }
    .auto-style46 {
        width: 306px;
    }
    .auto-style47 {
        width: 306px;
        height: 23px;
        font-size: large;
    }
    .auto-style48 {
        width: 201px;
        background-color: #B1303C;
        height: 49px;
    }
    .auto-style49 {
        width: 201px;
        background-color: #B1303C;
        height: 48px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MENÜ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sefer İşlemleri</strong></p>
    <p class="auto-style13">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <table border="1" class="auto-style17">
            <tr>
                <td class="auto-style48">
                    <asp:Button ID="Button5" runat="server" Height="30px" Text="Sefer İşlemleri" Width="150px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style49">
                    <asp:Button ID="Button6" runat="server" Height="30px" Text="Otobüs İşlemleri" Width="150px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="Firma İşlemleri" Width="150px" OnClick="Button4_Click" />
                    <asp:Panel ID="Panel1" runat="server" Height="640px" style="z-index: 1; left: 241px; top: 286px; position: absolute; height: 170px; width: 647px; color: #000000">
                        <strong>
                        <table border="1" class="auto-style18">
                            <tr>
                                <td class="auto-style45"><strong>&nbsp;<span class="auto-style34">Firma:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:DropDownList ID="FirmaDrop" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="FirmaDrop_SelectedIndexChanged" Width="250px">
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style45"><strong>&nbsp;Otobüs</strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:DropDownList ID="OtobüsDrop" runat="server" Height="30px" Width="250px">
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style45"><strong>&nbsp;Nereden&nbsp; </strong>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="NeredenDrop" ControlToValidate="NereyeDrop" EnableClientScript="False" ErrorMessage="Lütfen farklı şehirler seçin" Operator="NotEqual" style="font-size: small"></asp:CompareValidator>
                                </td>
                                <td class="auto-style25"><strong>Nereye</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:DropDownList ID="NeredenDrop" runat="server" Height="30px" Width="250px">
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
                                <td>
                                    <asp:DropDownList ID="NereyeDrop" runat="server" Height="30px" style="margin-bottom: 0px" Width="250px">
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
                                <td class="auto-style47"><strong>&nbsp;Tarih</strong></td>
                                <td class="auto-style21"></td>
                            </tr>
                            <tr>
                                <td class="auto-style32">
                                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="25px" Width="250px"></asp:TextBox>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style35" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </strong></td>
                                <td class="auto-style33">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/picture/551.png" OnClick="ImageButton1_Click" style="height: 28px; width: 20px;" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28"><strong>&nbsp;Kalkış Saati</strong></td>
                                <td class="auto-style29"><strong>Varış Saati</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:DropDownList ID="DropDownList10" runat="server" Height="22px" Width="60px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged">
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                    </asp:DropDownList>
                                    <strong>:<asp:DropDownList ID="DropDownList13" runat="server" Height="22px" Width="60px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged">
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                    </asp:DropDownList>
                                    </strong>
                                    <p class="auto-style13">
                                        &nbsp;</p>
                                </td>
                                <td class="auto-style31">
                                    <br />
                                    <strong style="padding: inherit">
                                    <asp:DropDownList ID="DropDownList11" runat="server" Height="22px" Width="60px" OnSelectedIndexChanged="DropDownList11_SelectedIndexChanged">
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                    </asp:DropDownList>
                                    <strong>:<asp:DropDownList ID="DropDownList12" runat="server" Height="22px" Width="60px" OnSelectedIndexChanged="DropDownList12_SelectedIndexChanged">
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                    </asp:DropDownList>
                                    </strong>
                                    <p class="auto-style13">
                                        &nbsp;</p>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style47"><strong>&nbsp;Uzaklık&nbsp; </strong>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Lütfen uzaklığı sayı cinsinden giriniz!!" style="font-size: small" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style27"><strong>Fiyatı&nbsp; </strong>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Lütfen fiyatı  sayı cinsinden giriniz!!" style="font-size: small" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style46"><strong>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style35" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </strong></td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="250px"></asp:TextBox>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*" style="font-size: small"></asp:RequiredFieldValidator>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style46">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click1" style="font-weight: 700; background-color: #B1303C" Text="Seferi Kaydet" Width="193px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style46">
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </strong>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p class="auto-style13">
        &nbsp;</p>
<p class="auto-style13">
        &nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style14">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="auto-style13">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style13">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="auto-style14">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style14">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="auto-style13">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;
</p>
    <p class="auto-style11">
        &nbsp;</p>
    <p class="auto-style13">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged1" style="z-index: 1; left: 545px; top: -297px; position: relative; height: 151px; width: 212px" TitleFormat="Month" Visible="False">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="auto-style13">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        </p>
    <p class="auto-style13">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>
