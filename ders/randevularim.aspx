<%@ Page Language="C#" AutoEventWireup="true" CodeFile="randevularim.aspx.cs" Inherits="randevularim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>RANDEVULARIM</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</head>
<body style="margin:0 auto;text-align:center; width:960px;">
    <form id="form1" runat="server">
        <div class="randevuarka">
            <table style="margin:0 auto;text-align:center; ">
                <td class="auto-style1">
                    <br />
                    <h1 class="randevualmasist" style="color: #9d9d00; text-align: center; font-size: 60px; font-family:Elephant">RANDEVULARIM
                    </h1>
                    <br />
                    <asp:Button ID="Button6" runat="server"  Cssclass="btn btn-outline-success btn-lg " Font-Bold="True" Font-Size="Large" OnClick="Button6_Click" Text="ANASAYFA" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="RANDEVU AL" Width="204" Height="50px" CssClass="btn btn-success btn-lg "
                        OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="RANDEVU İPTAL" Width="204" Height="50px" CssClass="btn btn-danger btn-lg " OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="RANDEVULARIM" Width="204" Height="50px" CssClass="btn btn-warning btn-lg " ForeColor="White" OnClick="Button3_Click" />
                    <br />

                </td>
            </table>
        </div>
        <div class="grid" >
            <br />
            <asp:Label ID="Label1" runat="server" Text="HASTANIN KİMLİK NO" ForeColor="DarkRed" Font-Bold="true"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="167px" CssClass="border border-dark"></asp:TextBox>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Boş Bırakmayınız..."></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" Height="37px" CssClass="btn btn-sm" OnClick="Button7_Click" Text="ARA" BackColor="#336600" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString6 %>" SelectCommand="SELECT * FROM [alinanrandevu] WHERE ([hasta_tc] = @hasta_tc)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="hasta_tc" PropertyName="Text" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" CssClass="table table-striped table-hover" BorderColor="#999999" BorderStyle="Solid" BorderWidth="4px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="DarkRed" AutoGenerateColumns="False" DataKeyNames="id" Font-Bold="True" HorizontalAlign="Center" Width="1000px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="  ID   " InsertVisible="False" ReadOnly="True" SortExpression="id" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                    <asp:BoundField DataField="hasta_tc" HeaderText="   HASTA KİMLİK NO   " SortExpression="hasta_tc" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="hasta_ad" HeaderText="   HASTA ADI   " SortExpression="hasta_ad" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                    <asp:BoundField DataField="hasta_soyad" HeaderText="   HASTA SOYADI    " SortExpression="hasta_soyad" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="tarih" HeaderText="   TARİH   " SortExpression="tarih" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="saat" HeaderText="SAAT" SortExpression="saat" ItemStyle-HorizontalAlign="Center" />
                </Columns>
                <FooterStyle BackColor="#666633" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#77773C" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" CssClass="table-active table-hover"/>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
