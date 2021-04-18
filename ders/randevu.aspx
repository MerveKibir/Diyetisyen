<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuu.aspx");

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuiptal.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevularim.aspx");
    }
</script>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .randevuarka {
            background-color: #d5d5d5;
        }

        .date {
            background-color: #d5d5d5;
            font-family: Elephant;
            font-size: 13px;
            color: darkred;
            margin-left: 2px;
        }

        .hastabilgileri {
            background-color: #d5d5d5;
        }

        h4 {
            color: darkred;
        }

        h1 {
            font-size: x-large;
            color: darkred;
            font-family: Elephant;
            text-align: center;
        }

        p {
            color: #363636;
            font-size: 18px;
        }

        .bilgilendirme {
            color: forestgreen;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1>&nbsp;</h1>
        <h1>&nbsp;Randevu Hakkında</h1>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp; Değerli hastalarımız;
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; Muayenehanemizden hızlı bir şekilde&nbsp;randevu işlemlerinizi
        </p>
        <p>
            &nbsp;&nbsp; yapmak için&nbsp;aşağıdaki yöntemlerden birini tercih edebilirsiniz.
        </p>
        <p>
            &nbsp;&nbsp; Hastane randevusu oluştururken kişisel bilgilerinizi, randevu
        </p>
        <p>
            &nbsp;&nbsp; gününü ve saatini doğru girmeye&nbsp; özen gösteriniz.
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sistemimiz üzerinden hızlıca randevu oluşturmak için aşağıdaki
        </p>
        <p>
            &nbsp;&nbsp; randevu butonuna tıklayarak randevu formunu doldurunuz.
        </p>
        <p>
            &nbsp;&nbsp; Bilgilerinizi girdikten sonra
             randevu bilgilerinizi kontrol ederek
        </p>
        <p>
            &nbsp;&nbsp; onaylamayı UNUTMAYINIZ.
        </p>
        <p>
            <br />
            &nbsp;&nbsp;
             Randevunuzu onayladığınız takdirde online randevu aşamalarını
        </p>
        <p>
            &nbsp;&nbsp; tamamlamış olacaksınız.<span>&nbsp;</span>
        </p>
        <br />
        <p class="bilgilendirme">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Bilgi alma ve telefonla randevu hizmetlerimizden yararlanmak için, iletişim 
             <br />
            &nbsp;&nbsp;  bilgilerinden bize ulaşabilirsiniz.
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sağlıklı günler...
        </p>
        <p>
            &nbsp;
        </p>
    </div>
    <div class="randevuarka">
        <table>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="RANDEVU AL" Width="204" Height="50px"  CssClass="btn btn-success "
                    OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="RANDEVU İPTAL" Width="204" Height="50px"  CssClass="btn btn-danger" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="RANDEVULARIM" CssClass="btn btn-warning " Width="204" Height="50px"  OnClick="Button3_Click" />
            </td>
        </table>
    </div>

</asp:Content>

