<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text != "" && TextBox2.Text != "" && RadioButton1.Checked || RadioButton2.Checked)
        {
            try
            {
                int boy = Convert.ToInt32(TextBox2.Text);
                int kilo = Convert.ToInt32(TextBox1.Text);
                double bmi = 0;
                if (RadioButton1.Checked)
                {
                    bmi = (kilo * 10000) / (boy * boy);
                }
                else
                {
                    bmi = (kilo * 10000) / (boy * boy);
                }

                Label2.Text = bmi.ToString();
                if (bmi <= 18.5)
                {
                    Label1.Text = "ZAYIF!";
                }
                if (bmi > 18.5 && bmi <= 24.9)
                {
                    Label1.Text = "SAĞLIKLI!";
                }
                if (bmi >= 25 && bmi <= 29.9)
                {
                    Label1.Text = "FAZLA KİLOLU!";
                }
                if (bmi >= 30 && bmi <= 34.9)
                {
                    Label1.Text = "1.DERECE OBEZİTE!";
                }
                if (bmi >= 35 && bmi <= 39.9)
                {
                    Label1.Text = "2.DERECE OBEZİTE!";
                }
                if (bmi >= 40)
                {
                    Label1.Text = "3.DERECE OBEZİTE!";
                }
            }
            catch (Exception)
            {
                Label6.Visible = true;
                Label6.Text = "Tam sayı değerler giriniz...";
            }
        }
        else
        {
            Label6.Visible = true;
            Label6.Text = "Boş alanları doldurunuz...";
            if (TextBox1.Text == "")
            {
                Label3.Visible = true;
            }
            if (TextBox2.Text == "")
            {
                Label4.Visible = true;
            }
            if (TextBox1.Text != "" && TextBox2.Text != "")
                Label5.Visible = true;


        }
    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 625px;
            height: 260px;
            margin-top: 10px;
            margin-left: 75px;
        }

        .auto-style2 {
            width: 103px;
            color: forestgreen;
        }

        .auto-style4 {
            height: 27px;
            color: forestgreen;
        }

        h3 {
            color: darkred;
            float: left;
            font-family: Elephant;
            margin-left: 15px;
            margin-top: 10px;
            font-size: x-large;
        }
        .auto-style5 {
            width: 101px;
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
        .auto-style6 {
            width: 101px;
            height: 33px;
        }
        .auto-style7 {
            width: 145px;
            color: #495057;
            display: block;
            height: 33px;
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
        .auto-style8 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="resimler/taylankumeli_ideal-kilo-hesapla_7_2_2017_13_36_35.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <br />
        <h3>Vücut Kitle İndeksi (BMI) Hesaplama
            <br />
            <br />
        </h3>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Kilo </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Boş Bırakmayıız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Boy (cm)</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="160px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Boş Bırakmayıız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp; Cinsiyet</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Erkek" GroupName="cins" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Kadın" GroupName="cins" />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Seçim Yapınız..." ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"</td>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hesapla" Width="140" Height="50px" Style="background-color: forestgreen; color: ghostwhite; font-size: large" />
                </td>

            </tr>
            <tr>
                <td class="auto-style5">BMI</td>
                <td class="auto-style8">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style5">Açıklama<br />
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

        </table>

    </div>
</asp:Content>

