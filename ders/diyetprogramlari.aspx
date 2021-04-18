<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuu.aspx");
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

        p {
            float: left;
            font-size: medium;
            margin-left: 10px;
            margin-right: 10px;
        }

        .diyetprog p a:link {
            color: #005000;
            background-color: transparent;
            text-decoration: underline;
        }

        .diyetprog p a:visited {
            color: forestgreen;
            background-color: transparent;
            text-decoration: underline;
        }

        .diyetprog p a:hover {
            color: darkred;
            background-color: transparent;
            text-decoration: underline;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="diyetprog">
        <img src="resimler/diyetisyenkim.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <h1>Diyet Programları:</h1>
        <br />
        <h2 style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp; Böyle bir arayışınız olmasın... Bunun için biz varız ve her zaman sizin</h2>
        <h2 style="font-size: medium;">&nbsp;&nbsp; yanınızdayız...</h2>
        <br />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
            1 Haftada 5 Kg “Nasıl” Verilir? Çok basit: <b>VERİLEMEZ!</b>
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;

“İsveç Diyeti, Hollywood Diyeti, Ayırma Diyeti, Renk Diyeti, Manken Diyeti, Lahana Çorbası Diyeti, Renk Diyeti, Burçlara Göre Diyet, Kan Grubu Diyeti, Amerikan Kalp Vakfı Diyeti, Atkins Diyeti, Son Şans Diyeti” ve daha yüzlerce değişik isimli veya isimsiz diyet. Peki, bu kadar çok diyet listesi ortalarda dolaşırken neden hala insanların kilo problemi var? Çünkü bu tip diyetlerin çoğu başlangıçta hızlı kilo kaybı sağlasa da, kısa bir süre sonra bu kilolar fazlasıyla geri alınmaktadır. Bu tip diyetler sağlığa zarar vermenin ve metabolizmanın bozulmasını sağlayarak ömrü kısaltmanın yanı sıra, kişinin ben bu işi başaramıyorum diyerek umutsuzluğa kapılmasına neden olmaktadır. Zaten yaşam tarzı haline getirilemeyen hiçbir yönteme başlamamak gerekir. Gerçek ağırlık kaybı vücuttaki yağ kitlesinin azalması ile mümkündür. Kas ve su kitlesindeki kayıplar hem sağlık açısından risklidir, hem de kalıcı ağırlık kaybına neden olmamaktadır. Ağırlık kaybının hızlı olması öncelikle su, sonrasında kas kitlesindeki azalma ile ilişkilidir.

            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            Genel ilkeleri benzer olmakla birlikte diyet mutlaka kişiye özel olarak hazırlanmalıdır. Çünkü herkesin metabolizması birbirinden farklılık gösterir, tıpkı parmak izi gibi. Multifaktöriyel bir hastalık olan şişmanlığın tedavisinde multidisipliner bir yaklaşım gerekir. Dahiliye uzmanı veya endokrinolog, diyetisyen, fizyoterapist ve psikolog ile ekip halinde tedavi edilmesi durumunda daha sağlıklı sonuçlar alınabilir. Günümüzde birçok kronik hastalığın temel nedenini oluşturan şişmanlığın tedavisinde diyetisyen en yetkili ve etkin meslek mensubudur. Sağlık ekibinin temel direği olan hekim hastanın gerekli muayenesini yapar, tahlillerini yaptırır ve diyetisyen, kişinin özelliklerine uygun beslenme modelleriyle normal ağırlığa iniş sürecini başlatır.
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Zayıflama programlarının, kişinin (yaş, cinsiyet, boy uzunluğu, vücut ağırlığı, fiziksel aktivite düzeyi, beslenme alışkanlıkları vb.) özelliklerine göre enerji ve besin öğesi içermesi; yeterli ve dengeli beslenme alışkanlığı kazandırabilmesi ve yavaş (0,5 - 1 kg / hafta) ağırlık kaybı ile bireyin yeni beslenme programını yaşam tarzı haline getirmesini sağlayabilmesi gerekir. Unutulmamalıdır ki; ayda 6 kg üzerinde ağırlık kaybı metabolik olarak başka sağlık problemlerine zemin hazırlamaktadır. Sabırlı olmak şart. Kişi, seneler içerisinde aldığı kiloları birkaç haftada vermeye çalışmamalı. Bu uğurda aç karına greyfurt veya limon suyu içmenin, kabak çekirdeği yemenin, yosun tabletlerinden, kekik sularından ve form çaylarından medet ummanın hiçbir bilimsel dayanağı olmadığı gibi; faydadan çok zarar verdiği aşikardır.
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Ağırlık kaybının geçmişine bakıldığında; midede hacim oluşturan posa tabletlerinin sindirim sisteminde tıkanmalara, kafein ve amfetaminlerin bağımlılığa, çok düşük enerji içeren diyetlerin ve sindirim sistemine yapılan cerrahi müdahalelerin besin öğesi yetersizliklerine, protein diyetlerinin böbrek ve kalp problemlerine, kalp yetmezliği sonucu ölümlere neden olduğu görülmektedir.
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Dünya Sağlık Örgütü aylık ağırlık kaybını 2 - 4 kg arasında olması gerektiğini vurgulamaktadır. Kişi çok şişmansa ve ameliyata hazırlanacaksa, anestezi riskini azaltmak için doktor ve diyetisyen gözetiminde ayda 6 kg verdirilebilir. Yoksa kimse 20 senede aldığı kiloları 20 günde vermeye kalkışmamalı, sabırla tedavinin üzerine gitmelidir. Zayıflamanın temelinde eğitim yer almaktadır. Dahiliye uzmanı veya endokrinolog kontrolünde yapılacak klinik muayenenin ardından elde edilen kan tahlil sonuçları yorumlanarak, kişi diyetisyen eşliğinde tıbbi beslenme tedavisine alınmalıdır. Egzersiz ve davranış değişikliği tedavisinin yerleştirilmesi ile hedefe ulaşılmalı ve kişi koruma programına alınmalıdır. 3 Ay süresinde diyet, egzersiz ve davranış değişikliği tedavisi uygulanmadan kimseye ilaç tedavisi ve/veya cerrahi tedavi uygulanmamalıdır.
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; <u>Sonuç olarak; </u>zayıflama programı kişiye özel, bireyin benimseyip, yaşam tarzı haline getirerek uygulayabileceği, yeterli ve dengeli beslenme alışkanlığı kazandırabilecek özellikte olmalıdır. Obezitenin tedavisinde tek başına diyet tedavisi yeterli olmamakta, beraberinde egzersiz programı ve davranış değişikliği tedavisi de gerekmektedir.
                        <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Size özel diyet programlarınız için bize başvurun:      
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Randevu al</asp:LinkButton>
            <br />
            <br />
        </p>

    </div>
</asp:Content>

