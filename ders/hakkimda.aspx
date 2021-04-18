<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">

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

        .madde li {
            margin-left: 30px;
            margin: 20px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="resimler/diyetisyen.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <br />
        <h1>HAKKIMDA</h1>
        <br />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
        Diyetisyen AD SOYAD , 2010 yılında X Üniversitesi Beslenme ve Diyetetik bölümünden mezun oldu.

2010 yılından sonra çeşitli hastane ve kurumlarda diyetisyen olarak görevini sürdürdü.
        <br />
            <br />

            Bu kurumlar arasında: 
            <br />
            <br />
        </p>
        <ul class="madde">
            <li>... Hastanesi</li>
            <li>... Hastanesi</li>
            <li>... Hastanesi</li>
            <li>... Hastanesi</li>
            <li>... Hastanesi</li>
            <li>... Hastanesi yer almaktadır...</li>
        </ul>
        <br />
        <br />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
            Diyetisyen ...’in amacı, sağlıklı beslenmeyi akademik bilgilere dayanarak bireylere öğretmek, bireylerin yaşam kalitesini artırmak, birçok hastalığa yakalanmadan koruyucu tedavi ile fiziki ve ruh sağlığı bir bütün olan bireyleri topluma kazandırmaktır.
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
Diyetisyen ...’in mesleki ilgi alanları arasında kilo yönetimi (obezite), zayıflama ve kilo alma programları, gebelik ve emziklilik dönemi beslenmesi, çocuk ve bebek beslenmesi, kalp damar hastalıkları, diyabet, hipertansiyon karaciğer hastalıklarında beslenme, genç ve çocukluk çağı obezitesi, anoreksiya ve blumia nevroza hastalıklarında ve klinik vakalarda beslenme yer almaktadır.
        </p>
        <br />

        <h1>
            <br />
            <u>Diploma ve Sertifikalarım</u></h1>
        <br />
        <br />
        <ul class="madde">
            <li>...</li>
            <li>...</li>
            <li>...</li>
            <li>...</li>
            <li>...</li>
            <li>...</li>
            <li>...</li>
        </ul>
        <br />
    </div>
</asp:Content>

