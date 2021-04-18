<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && RadioButton1.Checked || RadioButton2.Checked)
        {
            try
            {

                int boy = Convert.ToInt32(TextBox2.Text);
                int kilo = Convert.ToInt32(TextBox1.Text);
                int yas = DateTime.Now.Year - Convert.ToInt32(TextBox3.Text);
                double idealkilo = 0;
                if (RadioButton1.Checked)
                {
                    idealkilo = (boy - 100 + yas / 10) * 0.9;
                }
                else
                {
                    idealkilo = (boy - 100 + yas / 10) * 0.8;
                }

                Label2.Text = idealkilo.ToString();
                if (idealkilo == kilo)
                {
                    Label1.Text = "İdeal Kilodasınız!";
                }
                if (idealkilo > kilo)
                {
                    Label1.Text = "Zayıfsınız. Kilo almalısınız!";
                }
                if (idealkilo < kilo)

                {
                    Label1.Text = "İdeal kilonuzun üzerindesiniz!";
                }
            }
            catch (Exception)
            {
                Label3.Visible = true;
                Label3.Text = "Tam sayı değerler giriniz...";
            }
        }
        else
        {
            if (TextBox1.Text == "")
            {
                Label4.Visible = true;
            }
            if (TextBox2.Text == "")
            {
                Label5.Visible = true;
            }
            if (TextBox3.Text == "")
            {
                Label6.Visible = true;
            }
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
            {
                Label7.Visible = true;
            }
        }

    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="resimler/taylankumeli_bmi-hesapla_7_2_2017_13_35_34.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <br />
        <h3>İdeal Kilo Hesaplama
            <br />
            <br />
        </h3>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Kilo </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label4" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Boy (cm)</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Doğum Yılı</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cinsiyet</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Bay" GroupName="cins" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Bayan" GroupName="cins" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Seçim Yapınız..." ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hesapla" Width="140" Height="50px" Style="background-color: forestgreen; color: ghostwhite; font-size: large" />
                </td>

            </tr>
            <tr>
                <td class="auto-style2">İdeal Kilonuz</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">Açıklama<br />
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>

