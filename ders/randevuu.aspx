<%@ Page Language="C#" AutoEventWireup="true" CodeFile="randevuu.aspx.cs" Inherits="randevuu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>randevu</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>

</head>
<body style="margin:0 auto;text-align:center; width:960px;">
    <form id="form1" runat="server">


        <div class="randevuarka"  >
            <table  style="margin:0 auto;text-align:center; ">
                <td class="auto-style1">
                    <br />
                    <h1 class="randevualmasist" style="color: forestgreen;  font-size: 60px; font-family:Elephant; ">RANDEVU SİSTEMİ
                    </h1>
                    <br />
                    <asp:Button ID="Button6" runat="server"   Font-Bold="True" Font-Size="Large" Cssclass="btn btn-outline-success btn-lg " OnClick="Button6_Click" Text="ANASAYFA"   />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="RANDEVU AL" CssClass="btn btn-success btn-lg " Width="204" Height="50px"
                        OnClick="Button1_Click" />

                    <asp:Button ID="Button2" runat="server" Text="RANDEVU İPTAL" Width="204" Height="50px" CssClass="btn btn-danger btn-lg" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="RANDEVULARIM" Width="204" Height="50px" ForeColor="White" CssClass="btn btn-warning btn-lg" OnClick="Button3_Click" />
                </td>
            </table>
        </div>
        <br /> <br />
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString2 %>"
            SelectCommand="SELECT * FROM [randevu]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 

                CssClass="table table-striped table-hover"
            BorderStyle="Solid" BorderWidth="4px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource3" HorizontalAlign="Center"
            ForeColor="#7E0000" Height="242px" Width="1000px" OnRowCommand="GridView1_RowCommand" AllowPaging="True" AllowSorting="True" Font-Bold="True" PageSize="10">
            <Columns>

                <asp:ButtonField ButtonType="Button" CausesValidation="True" CommandName="cmdn" HeaderText="RANDEVU AL" Text="RANDEVU AL"  ControlStyle-CssClass="btn btn-success btn-sm font-weight-bold "  ItemStyle-HorizontalAlign="Center"  ControlStyle-Font-Size="14px" />

                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="tarih" HeaderText="TARİH" SortExpression="tarih" />
                <asp:BoundField DataField="saat" HeaderText="SAAT" SortExpression="saat" />
            </Columns>
            <FooterStyle BackColor="#7a7456" />
            <HeaderStyle BackColor="#7a7456" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#7a7456" ForeColor="white" HorizontalAlign="Center" />
            <RowStyle BackColor="White" HorizontalAlign="Center"  CssClass="table-active table-hover" />
            <SelectedRowStyle BackColor="#00610d" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#F1F1F1" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString3 %>"
            SelectCommand="SELECT * FROM [randevu] ORDER BY [tarih], [saat]"></asp:SqlDataSource>
        <div class="hastabilgileri" >
            <br />
            <asp:Label ID="Label10" runat="server" Text=" HASTA ADI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :"  ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="border border-dark"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Boş Bırakmayınız..." Font-Bold="true"></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Text="HASTA SOYADI&nbsp;&nbsp;:" ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="border border-dark"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Boş Bırakmayınız..." Font-Bold="true"></asp:Label>&nbsp;<br />
            <asp:Label ID="Label11" runat="server" Text="HASTA TC NO&nbsp;&nbsp; :" ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="border border-dark"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Boş Bırakmayınız..." Font-Bold="true"></asp:Label><br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
       <asp:Button ID="Button4" runat="server" Text="DEVAM" BackColor="#647350" Height="30px" OnClick="Button4_Click" Font-Bold="true" Font-Size="Medium" cssclass="btn btn-group-sm" />
            <br />
            <br />
        </div>
        <div>
            
            <asp:Label ID="Label12" runat="server" Text="Randevu Bilgileri:" ForeColor="darkred" Font-Bold="true" Font-Size="Large" Font-Underline="true"></asp:Label>
            <br />
            <br />

            
           
            <asp:Label ID="Label13" runat="server" Text="Hasta TC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :" ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
            
           <asp:Label ID="Label14" runat="server" Text="Hasta Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : " ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
            &nbsp;
             <asp:Label ID="Label15" runat="server" Text=" Hasta Soyadı&nbsp;&nbsp;&nbsp; :" ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            &nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
            
            <asp:Label ID="Label16" runat="server" Text=" Randevu Tarihi:" ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
            
            <asp:Label ID="Label17" runat="server" Text=" Randevu Saati&nbsp; : " ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="Label" Font-Bold="true"></asp:Label>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button5" runat="server" Text="ONAYLA" BackColor="#647350" Height="30px" Visible="false" OnClick="Button5_Click" Font-Bold="true" Font-Size="Medium" CssClass="btn btn-group-lg" />

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label19" runat="server" Text="Label" Font-Bold="true"></asp:Label>

            <br />

        </div>

    </form>
</body>
</html>
