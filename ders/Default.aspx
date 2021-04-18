<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        h1 {
            color: darkred;
            font-family: Elephant;
            text-align: center;
        }

        hr {
            border: groove;
            border-color: darkgreen;
        }

        nav.anayasa ul {
            float: left;
            margin-left: 25px;
            list-style: square;
            font-family: 'Trebuchet MS' 'Brush Script MT' Arial
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>BESLENME ANAYASASI </h1>
    <br />

    <hr />
    <br />

    <nav class="anayasa">
        <ul>
            <li>
                <h4>Öğün atlamayın:</h4>
                Sık ve az. Her gün üç ana, iki ara öğün yemeniz en uygun seçimdir.</li>
            <li>
                <h4>Dengeli ve çeşitli beslenmekten taviz vermeyin:</h4>
                Beyaz un, şeker ve nişastalı yiyeceklerden uzak durun. Her öğünde mutlaka yeteri kadar protein, alın. Her gün iki porsiyon meyve ve en az üç porsiyon sebze yiyin. (bir porsiyon meyve tenis topu, sebze yumruk büyüklüğü kadar olmalı.</li>
            <li>
                <h4>Yiyeceklerinize bol bol sirke ve limon eklemeyi ihmal etmeyin:</h4>
                Sirke ve limon glisemik yükü azaltıyor, kilo almayı yavaşlatıyor. Bu nedenle öğünlerinize bol sirke ve limon ekleyin. Salatalarınıza eklediğiniz sirkeli ve limonlu sosun miktarını arttırarak işe başlayabilirsiniz. Tuz kullanımınızı sınırlayın. Tuz hem iştahınızı açar, hem de vücudunuzda su tutulmasına neden olur.
            </li>
            <li>
                <h4>Hiçbir öğünü salatayla geçiştirmeyin. Salata karın doyurmuyor:</h4>
                Salatayla beraber mutlaka bir parça proteinli yi¬yecek (et, tavuk, balık, yoğurt, peynir) yemeniz gerekiyor. Salatalarınıza yağı kendiniz ekleyin. Mayonez ve hazır sosa 'hayır' deyin. Bizim uzmanların önerisi bir tatlı kaşığı kadar zeytinyağı ya da ceviz ve keten tohumu yağı karışımı.
            </li>
            <li>
                <h4>Yemeklerinizi asla kızartmayın:</h4>
                Kızartmalardan uzak kalın. Kızartma yerine buğulama, suda uzun süre kaynatma, fırında ya da haşlama yöntemlerini kullanın. Hiçbir yiyeceği una veya galeta ununa bulamayın; daha çok yağ kazanırsınız. Hazır soslara hiçbir zaman itibar etmeyin. Hazır kek, poğaça, börek yemeyin. Canınız çok çekerse evinizde kendiniz yapın.
            </li>
            <li>
                <h4>Yemek saatlerine dikkat edin:</h4>
                Akşam yemeğinizi azaltmanızda, günün son yemeğini yatmadan en az iki-üç saat önce tamamlamış olmanızda fayda var.
            </li>
            <li>
                <h4>Bol bol ve sık sık su için:</h4>
                Sudan sıkıldığınızda meyve çayları, diğer bitkisel çaylar ve özellikle de yeşil çay emrinizdedir. Kahvenin aşırısından korkun. Bir iki bardağı metabolizmanızı hızlandırabilir bile. Meyve konsantrelerinden, şeker eklenmiş meyve sularından, hatta yüzde yüz meyve sularından uzak durmanızda fayda var.</li>
            <li>
                <h4>Düşük glisemik yüklü karbonhidratları, protein ve sağlığa yararlı yağlarla birlikte yiyin:</h4>
                Diyetteyken patates, beyaz ekmek, beyaz pirinç ve undan yapılmış makarnalardan, beyaz un ile yapılmış yiyeceklerden uzak kalın. Büyük öğünlerden kaçının. Az ve kaliteli şeyler yiyin. Acıkırsanız bir-iki saat sonra bir şeyler yiyebilirsiniz. İkinci porsiyonu yemek zorundaysanız proteinli bir yiyecek tercih edin.
            </li>
            <li>
                <h4>Ve diğer öneriler:</h4>
                Her gün tartılmayın. Haftada bir tartılmanız (en fazla iki olabilir) yeterlidir. Kilo yemekten çok, daha iyi görünmeyi, kendinizi daha iyi hissetmeyi veya sağlığınızı daha iyi bir noktaya taşımayı amaçlayın. Zaman zaman kaçamaklar yapmaktan korkmayın ama yanlışları sık sık tekrarlamayın. Daha çok doğal ot, baharat, sarımsak, soğan, pul biber, isot, hardal, kullanın.
             <br />
                <br />
            </li>


        </ul>
    </nav>

</asp:Content>

