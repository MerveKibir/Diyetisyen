<%@ Page Language="C#" AutoEventWireup="true" CodeFile="randevuiptal.aspx.cs" Inherits="randevuiptal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Randevu İptal</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</head>
<body style="margin:0 auto;text-align:center; width:960px;">
    <form id="form1" runat="server">
        <br />
        <h1 class="randevualmasist" style="color: darkred; text-align: center; font-size: 60px; font-family:Elephant;">RANDEVU İPTAL SİSTEMİ
            <br />
        </h1>
        <div class="randevuarka">
            <table style="margin:0 auto;text-align:center; ">
                <td class="auto-style1">
                    <br />
                    <asp:Button ID="Button6" runat="server" Height="40px" OnClick="Button6_Click" Text="ANASAYFA" Width="203px"  Font-Bold="True" Font-Size="Large"  Cssclass="btn btn-outline-success" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="RANDEVU AL" Width="204" Height="50px"  OnClick="Button1_Click" CssClass="btn btn-success btn-lg" />
                    <asp:Button ID="Button2" runat="server" Text="RANDEVU İPTAL" Width="204" Height="50px"  CssClass="btn btn-danger btn-lg" OnClick="Button2_Click"  />
                    <asp:Button ID="Button3" runat="server" Text="RANDEVULARIM" Width="204" Height="50px" CssClass="btn btn-warning btn-lg" ForeColor="White" OnClick="Button3_Click" />
                    <br />
                    <br />
                </td>
            </table>
        </div>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString5 %>" SelectCommand="SELECT * FROM [alinanrandevu] WHERE ([hasta_tc] = @hasta_tc)" DeleteCommand="DELETE FROM [alinanrandevu] WHERE [id] = @id" InsertCommand="INSERT INTO [alinanrandevu] ([hasta_tc], [hasta_ad], [hasta_soyad], [tarih], [saat]) VALUES (@hasta_tc, @hasta_ad, @hasta_soyad, @tarih, @saat)" UpdateCommand="UPDATE [alinanrandevu] SET [hasta_tc] = @hasta_tc, [hasta_ad] = @hasta_ad, [hasta_soyad] = @hasta_soyad, [tarih] = @tarih, [saat] = @saat WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="hasta_tc" Type="Int64" />
                <asp:Parameter Name="hasta_ad" Type="String" />
                <asp:Parameter Name="hasta_soyad" Type="String" />
                <asp:Parameter Name="tarih" Type="DateTime" />
                <asp:Parameter Name="saat" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="hasta_tc" PropertyName="Text" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="hasta_tc" Type="Int64" />
                <asp:Parameter Name="hasta_ad" Type="String" />
                <asp:Parameter Name="hasta_soyad" Type="String" />
                <asp:Parameter Name="tarih" Type="DateTime" />
                <asp:Parameter Name="saat" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="hastabilgileri" >
            <asp:Label ID="Label6" runat="server" Text="HASTA KİMLİK NO :" BackColor="#d5d5d5" ForeColor="DarkRed" Font-Bold="true"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="border border-dark"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Boş Bırakmayınız..." Font-Bold="true"></asp:Label>
            <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="ARA" OnClick="Button4_Click" BackColor="#647350" CssClass="btn btn-sm" Font-Bold="true" Height="36px" Width="63px" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="4px"  CssClass="table table-striped table-hover" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource5" ForeColor="ForestGreen" AllowPaging="True" Font-Bold="True" AllowSorting="True" OnRowCommand="GridView1_RowCommand" Width="1000px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="hasta_tc" HeaderText="HASTA KİMLİK  NO" SortExpression="hasta_tc" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="hasta_ad" HeaderText="HASTA ADI" SortExpression="hasta_ad" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="hasta_soyad" HeaderText="HASTA SOYADI" SortExpression="hasta_soyad" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="tarih" HeaderText="TARİH" SortExpression="tarih" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="saat" HeaderText="SAAT" SortExpression="saat" ItemStyle-HorizontalAlign="Center" />
                    <asp:ButtonField ButtonType="Button" HeaderText="RANDEVU İPTAL" Text="İPTAL ET" ControlStyle-CssClass="btn btn-danger btn-sm font-weight-bold" CommandName="randi" ItemStyle-HorizontalAlign="Center">
                        
                    </asp:ButtonField>
                </Columns>
                <FooterStyle BackColor="#7A7456" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#7A7456" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#7A7456" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" Font-Bold="True" CssClass="table-active table-hover" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <br />

            <asp:Label ID="Label18" runat="server" Text="Label"  Font-Bold="true"></asp:Label>

            <br />
            <asp:Label ID="Label19" runat="server" Text="Label" Font-Bold="true"></asp:Label>

            <br />
        </div>
        <div style=" margin: 0 30px; text-align:center; ">

            <asp:Label ID="Label12" runat="server" Text="Randevu Bilgileri:" CssClass="" ForeColor="darkred" Font-Bold="true" Font-Size="Large" Font-Underline="true"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label13" runat="server" Text="Hasta TC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :" ForeColor="ForestGreen" Font-Bold="true" ></asp:Label>
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
           
           <asp:Label ID="Label14" runat="server" Text="Hasta Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : " ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
            <br />
           
             <asp:Label ID="Label15" runat="server" Text=" Hasta Soyadı&nbsp;&nbsp;&nbsp; :" ForeColor="ForestGreen" Font-Bold="true"></asp:Label>
            
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
       <asp:Button ID="Button5" runat="server" Text="İPTAL ET" ControlStyle-BackColor="#647350"  Visible="false" Font-Bold="true" Font-Size="Medium" OnClick="Button5_Click" cssclass="btn btn-group-sm" />

            <br />

            <br />

            <br />

        </div>
    </form>
</body>
</html>
