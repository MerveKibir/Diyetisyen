<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kayit.aspx.cs" Inherits="kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>KAYIT OL</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 850px;
            height: 40px;
        }

        .auto-style2 {
            width: 821px;
            height: 334px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <div class="tam" style="width: 850px; height: auto; margin: 0 auto; margin-top: 60px; background-color: ghostwhite;">
                <div class="auto-style1" style="background-color: forestgreen; color: ghostwhite; font-family: Elephant; font-size: 35px; text-align: center; margin:10px auto; height:55px;" >
                    KAYIT OL
                </div>
                <div class="auto-style2" style="background-color: ghostwhite; margin:15px  auto; text-align:center; " >

                    <asp:Label ID="Label1" runat="server" Text="Adınız :" Font-Bold="true" ForeColor="#006600"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="227px" CssClass="border border-dark"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Soyadınız:" Font-Bold="true" ForeColor="#006600"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="227px"  CssClass="border border-dark"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="E-Posta:" Font-Bold="true" ForeColor="#006600"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="227px"  CssClass="border border-dark"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Şifre:" Font-Bold="true" ForeColor="#006600"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="227px" MaxLength="8" TextMode="Password"  CssClass="border border-dark"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Şifre (Tekrar):" Font-Bold="true" ForeColor="#006600"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="227px" MaxLength="8" TextMode="Password"  CssClass="border border-dark"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Text="Boş Bırakmayınız..."  ></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Şifreleriniz Eşleşmiyor..."></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1"  Text="ADMİN" runat="server" /> <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server"  CssClass="btn btn-outline-danger btn-lg" Font-Bold="true"  OnClick="Button1_Click" Text="VAZGEÇ" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-success btn-lg" Font-Bold="true" OnClick="Button2_Click" Text="KAYDOL"  />
                </div>

            </div>
            <div class="sonuc" style="width: 850px; height: auto; margin: 0 auto; background-color: ghostwhite;">
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <div class="sonuc" style="width: 850px; height: auto; margin: 0 auto; margin-top: 150px; ">
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="Default.aspx">ANASAYFAYA DÖN</a>
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
