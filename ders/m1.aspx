<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="m1.aspx.cs" Inherits="m1" %>

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

        .madde li {
            margin-left: 30px;
            margin: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="m1">
        <img src="resimler/3.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <h1>YETERLİ VE SAĞLIKLI BESLENME</h1>

        <br />
        <p class="m1metin">
            &nbsp;&nbsp;&nbsp;&nbsp;
            Beslenme açlık duygusunu bastırmak, karın doyurmak ya da canının çektiği şeyleri yemek içmek değildir.
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Beslenme; sağlığı korumak, geliştirmek ve yaşam kalitesini yükseltmek için vücudun gereksinimi olan besin öğelerini yeterli miktarlarda ve uygun zamanlarda almak için bilinçli yapılması gereken bir davranıştır.  
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Besin öğelerini vücudumuzun gereksinmesi düzeyinde alamadığımızda <b>Yetersiz Beslenme </b>oluşur.  
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; İnsan vücudunun sağlıklı bir şekilde işleyebilmesi için 50’ ye yakın besin öğesine gereksinimi vardır.
İnsanın, sağlıklı büyüme ve gelişmesi, sağlıklı ve üretken olarak uzun süre yaşaması için bu öğelerin her birinden günlük ne kadar alınması gerektiği belirlenmiştir.

Bu öğelerin herhangi biri alınmadığında, gereğinden az ya da çok alındığında,büyüme ve gelişme engellenir, sağlık bozulur.
Vücudun ihtiyacı olandan çok fazla besin öğesi tüketilirse, vücutta toksik etki gösterebilir ya da çok alınan bazı besin öğeleri vücutta yağ olarak depolandığından, uzun dönemde sağlık için zararlı sonuçları olur.
Bu duruma <b>Dengesiz Beslenme</b> denir.

            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Dengesiz beslenmenin önlenmesinde beslenme eğitimi ile sağlıklı beslenme bilincinin kazandırılması büyük bir önem taşır!  

        <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;
        <b><u>Yeterli ve Dengeli Beslenen Kişiler  </u></b>
            <br />
            <br />
        </p>


        <ul class="madde">
            <li>Sağlam ve sağlıklı bir görünüştedir.</li>
            <li>Hareketli ve esnek bir bedene,</li>
            <li>Muntazam bir cilde, canlı ve parlak saçlara ve gözlere,</li>
            <li>Kuvvetli, gelişimi normal kaslara,</li>
            <li>Çalışmaya istekli kişiliğe,</li>
            <li>Boy uzunluğuna uygun vücut ağırlığına,</li>
            <li>Normal zihinsel gelişme,</li>
            <li>Sık sık hasta olmayan bir yapıya sahiptir.  </li>

        </ul>









        <br />









        <p class="m1metin">
            &nbsp;&nbsp;&nbsp;&nbsp;
  
            <b><u>Yetersiz ve Dengesiz Beslenenler </u></b>
            <br />
        </p>

        <ul class="madde">
            <li>Hareketleri ağır ve isteksiz</li>
            <li>Sağlıksız genel görünüşte (aşırı zayıf veya şişman)</li>
            <li>Pürüzlü, kuru, sağlıksız cilt yapısına,</li>
            <li>Şişman veya zayıf vücut yapısına,</li>
            <li>Sıksık baş ağrısından şikayet eden,</li>
            <li>İştahsız, yorgun, isteksiz bir yapıya sahiptir.</li>
        </ul>
        <p>
            <br />
        </p>



    </div>


</asp:Content>

