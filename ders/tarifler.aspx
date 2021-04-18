<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        h1 {
            color: darkred;
            font-family: Elephant;
            font-size: x-large;
            position: center;
            text-align: center;
        }

        .tarif li {
            margin-left: 30px;
            margin: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="resimler/detoks.jfif" width="617" height="310" style="border: 4px solid forestgreen" />
        <br />
        <br />
        <h1>TARİFLER</h1>
        <br />
        <br />
        <ul class="tarif">
            <li>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Dümdüz Bir Karın İçin Maydonoz Kürü ve 5 Etkili Öneri...</asp:LinkButton></li>
            <asp:Panel ID="Panel1" runat="server" Style="margin-left: 20px; margin: 10px;">
                &nbsp;&nbsp;&nbsp;&nbsp; Herkesin en büyük problem, göbek yağlarımı nasıl eritebilirim, karın düzleştirmek için ne yapmalıyım, göbek bölgesinden nasıl kilo verebilirim, dümdüz bi karın için ne yapmalıyım diyenler için işte mükemmel bir tarif ve 5 etkili öneri.
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Maydonoz kürü ile sıraladığım 5 etkili yöntemi Dümdüz bir karın için 5 etkili yöntem:<br />
                <br />
                1- Yanlış karbonhidratlar tüketmeyin.
                <br />
                2- Mutlaka her gün yoğurt tüketin.
                <br />
                3- Gün içinde mutlaka su için.
                <br />
                4- Protein tüketimini arttırın.
                <br />
                5- Her gün 1 saat tempolu yürüyüş yapın.
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Dümdüz Bir Karın İçin Maydonoz Kürü:
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Malzemeler:
                <br />
                1 Kase Maydonoz
                <br />
                1 Dilim Elma
                <br />
                1/2 (Yarım) Limon
                <br />
                1 Çay Bardağı Yeşil Çay
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Hazırlanışı:
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Malzemeleri blendırdan geçirin. Sabahları aç karına 1 çay bardağı olmak üzere tüketebilirsiniz. Kullanım detayları hakkında tüm bilgiler için videomu sonuna kadar seyretmeyi unutmayın. Özellikle fitness yaparken ve üst ve alt karın kası yapmak için faydalı bir kürdür. 
            </asp:Panel>
            <br />
            <li>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Yağ Yakıcı Detoks Suyu ve İştah Kapatıcı Diyet Tarif...</asp:LinkButton></li>
            <asp:Panel ID="Panel2" runat="server" Style="margin-left: 20px; margin: 10px;">
                &nbsp;&nbsp;&nbsp;&nbsp; Yağ Yakıcı Detoks Suyu ve İştah Kapatıcı Diyet Tarifinin ayrıntılarını buradan da okuyabilirsiniz. Hazırlayacağınız bu 1 litre detoks suyu, diyet yaparken veya normal gün içinde tüketebilirsiniz. İştahınızın açıldığı zamanlarda, gün içinde, özellikle; ikindi ve gece ara öğünlerinde tüketebilirsiniz. İnsulin direnci varsa çok etkilidir.
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Kilo vermek, sağlıklı beslenmek ve zararlı toksinlerden kurtulmak için en iyi yol, su içmektir. Günde 2 litre su içmeniz çok sağlıklıdır. Ancak, suyu sade olarak içmek zorunda değilsiniz. Suyunuza tat vermek, toksinlerden kurtulmak, metabolizma hızlandırmak, yağ yakmak ve iştah kapatmak için bu tarifimiz çok idealdir.
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; Malzemeler:
                <br />
                1 litre sıcak su
                <br />
                1 tane sade maden suyu
                <br />
                1 adet dilimlenmiş elma
                <br />
                1 kase taze nane
                <br />
                2 dilim limon
                <br />
                1 adet çubuk tarçın
                <br />
                <br />
                Hazırlanışı:
                <br />
                1 litre sıcak veya ılık suyun içerisine, elmaları, 2 dilim limonu, naneleri ve tarçını ekliyoruz. En son sade maden suyunu ekliyoruz. 10 dakika bekletmenizi öneririm. Yağ yakıcı detoks suyumuz hazır.&nbsp;&nbsp; Afiyet olsun.
            </asp:Panel>
            <br />
            <li>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Metabolizmanızı Ananas Detoksu ile Hızlandırın...</asp:LinkButton></li>
            <asp:Panel ID="Panel3" runat="server" Style="margin-left: 20px; margin: 10px;">
                &nbsp;&nbsp;&nbsp;&nbsp; Metabolizmanızı ananas detoksu ile kolayca hızlandırabilirsiniz. Metabolizma hızlandıran yiyecekler arasında ananas çok etkilidir. Hatta bir dönem ananas diyeti bile çok popüler olmuştu.<br />
                <br />
                &nbsp;Malzemelerimiz:
                <br />
                <br />
                1 yuvarlak dilim ananas
                <br />
                1 kase maydanoz
                <br />
                1 dilim limon
                <br />
                1 fındık büyüklüğü kadar zencefil
                <br />
                1 salatalık
                <br />
                1 bardak beyaz çay
                <br />
                <br />
                Hazırlanışı:
                <br />
                <br />
                Tüm malzemeleri bir blender içine karıştırıyoruz ve 1-2 dakika blender&#39;dan geçiyoruz.
            </asp:Panel>
            </asp:Panel>
            <br />
            <li>
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Muzlu Kahveli Smoothie Tarifi...</asp:LinkButton></li>
            <asp:Panel ID="Panel4" runat="server" Style="margin-left: 20px; margin: 10px;">
                &nbsp;&nbsp;&nbsp;&nbsp; Güne enerjik ve tok başlatan muzlu kahveli smoothie tarifi. Sabahları işe gitmeden önce, az olan vaktimizde birçok kişi kahvaltıda yeterli ve dengeli besinler almakta zorlanabiliyor. Akşamdan hazırlayabileceğiniz bu tarif ile güne zinde, enerjik ve tok başlayabilirsiniz.
                <br />
                <br />
                Malzemeler:<br />
                <br />
                1 bardak badem sütü
                <br />
                3 yemek kaşığı yulaf ezmesi
                <br />
                1 küçük muz
                <br />
                2 tam ceviz içi
                <br />
                1 tatlı kaşığı fıstık ezmesi
                <br />
                1 tatlı kaşığı kahve
                <br />
                <br />
                Hazırlanışı:
                <br />
                <br />
                Malzemeleri bir kasede toplayın ve blendırdan geçirin. Kullanım ile ilgili örnek diyet programı videomun ikinci yarısındadır.

            </asp:Panel>
        </ul>
    </div>
</asp:Content>

