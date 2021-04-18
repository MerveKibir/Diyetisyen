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

        .makaleler li a:link {
            color: black;
            background-color: transparent;
            text-decoration: none;
        }

        .makaleler li a:visited {
            color: forestgreen;
            background-color: transparent;
            text-decoration: none;
        }

        .makaleler li a:hover {
            color: darkred;
            background-color: transparent;
            text-decoration: underline;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="makale">
        <img src="../resimler/1.jpg" width="617" height="310" style="border: 4px solid forestgreen" />
        <h1>&nbsp;</h1>
        <h1>SAĞLIĞA DAİR</h1>
        <p>&nbsp;</p>
        <ul class="makaleler" style="list-style-type: circle; font-size: large; margin: 20px; margin-top: 10px;">
            <li style="margin-bottom: 10px;">
                <u><a href="m1.aspx">YETERLİ VE SAĞLIKLI BESLENME</a></u>
            </li>

            <li style="margin-bottom: 10px;">
                <u><a href="m2.aspx">BEBEKLERDE BESLENME</a></u>
            </li>

            <li style="margin-bottom: 10px;">
                <u><a href="m3.aspx">OKUL ÖNCESİ DÖNEMDE SAĞLIKLI BESLENME</a></u>
            </li>

            <li style="margin-bottom: 10px;">
                <u><a href="m4.aspx">OKUL ÇAĞINDA SAĞLIKLI BESLENME</a></u>
            </li>
            <li style="margin-bottom: 10px;">
                <u><a href="m5.aspx">ERGENLİK ÇAĞINDA  SAĞLIKLI BESLENME</a></u>
            </li>

            <li style="margin-bottom: 10px;">
                <u><a href="m6.aspx">YAŞLILIKTA BESLENME</a></u>
            </li>



        </ul>

        <p>
            &nbsp;
        </p>

    </div>

</asp:Content>

