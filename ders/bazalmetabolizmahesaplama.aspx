<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text != "" && TextBox2.Text != "" && RadioButton1.Checked || RadioButton2.Checked)
        {


            try
            {
                int boy = Convert.ToInt32(TextBox2.Text);
                int kilo = Convert.ToInt32(TextBox1.Text);
                double bazalmetabolizma = 0;
                if (RadioButton1.Checked)
                {
                    bazalmetabolizma = kilo * 24;
                }
                else
                {
                    bazalmetabolizma = kilo * 24 * (0.95);
                }

                Label2.Text = bazalmetabolizma.ToString();
            }
            catch (Exception)
            {
                Label2.Text = "Tam sayı değerler girmelisiniz...";
            }
        }
        else
        {
            Label2.Text = "Boş  alanları doldurmalısınız...";
            if (TextBox1.Text == "")
            {
                Label1.Visible = true;
            }
            if (TextBox2.Text == "")
            {
                Label3.Visible = true;
            }
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                Label4.Visible = true;
            }

        }
    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 625px;
            height: 250px;
            margin-top: 10px;
            margin-left: 75px;
        }

        .auto-style2 {
            width: 177px;
            color: forestgreen;
        }

        .auto-style4 {
            height: 27px;
            color: forestgreen;
            width: 446px;
        }

        p {
            float: left;
            margin-left: 15px;
            font-family: 'Trebuchet MS' 'Brush Script MT' Arial
        }

        h3 {
            float: left;
            color: darkred;
            margin-left: 15px;
            margin-top: 10px;
            font-family: Elephant;
            font-size: x-large;
        }

        li {
            float: left;
            margin-left: 20px;
            font-family: 'Trebuchet MS' 'Brush Script MT' Arial
        }

        .auto-style5 {
            width: 446px;
        }
        .auto-style7 {
            width: 446px;
            height: 37px;
        }
        .auto-style8 {
            width: 245px;
            color: #495057;
            display: block;
            height: 37px;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-left: 18px;
            background-color: #fff;
        }
        .auto-style9 {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="resimler/30f763e0-dd5f-4bca-8d0a-a18c63b3d5e9.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <br />
        <h3>Bazal Metabolizma Hızı(BMH) Nedir ?
            <br />
            <br />
        </h3>
        <p>
            Dinlenme halindeyken bir günde (24 saat) harcanan toplam enerji miktarına denir.
            <br />
            <br />
            Günlük Kalori İhtiyacı = Bazal Metabolik Hız(BMH) x Aktivite Faktörü(AF)<br />
            <br />
        </p>
        <ul>
            <li>Çok pasif ve hareketsiz. Hiç egzersiz ve spor yok.(AF = 1.2)<br />
                <br />
            </li>
            <li>Pasif ve tüm gün oturarak.Haftada 1 - 3 kez basit spor ve egzersiz.(AF = 1.375)<br />
                <br />
            </li>
            <li>Kısmen oturarak ve kısmen hareketli.Haftada 3 - 5 kez normal spor ve egzersiz.(AF = 1.55)
                <br />
                <br />
            </li>
            <li>Çoğunlukla hareketli ve aktif.Haftada 6 -7 kez çok yoğun spor ve egzersiz.(AF= 1.725)<br />
                <br />
            </li>
            <li>Sürekli hareketli ve yorucu. Çok güçlü spor, egzersiz ve fiziksel olarak yoğun işler.(AF= 1.9)<br />
                <br />
            </li>
        </ul>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">Kilo </td>
                <td class="auto-style5">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Boy (cm)</td>
                <td class="auto-style7">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Cinsiyet</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Bay" GroupName="cins" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Bayan" GroupName="cins" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="Label4" runat="server" Text="Seçim Yapınız..." ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hesapla" Width="140" Height="50px" Style="background-color: forestgreen; color: ghostwhite; font-size: large" />
                </td>

            </tr>
            <tr>
                <td class="auto-style8">Bazal Metabolizmanız &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style5">&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>

