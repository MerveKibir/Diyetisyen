<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        h3 {
            font-family: Elephant;
            font-size: medium;
            color: lightslategray;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul>
        <li>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ÜYELİK ONAYLARI</asp:LinkButton>
            <asp:Panel ID="Panel1" runat="server">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString7 %>" SelectCommand="SELECT [ad], [soyad], [eposta], [onayliMi] FROM [kayit] ORDER BY [onayliMi], [ad], [soyad]"
                    UpdateCommand="UPDATE kayit Set onayliMi = 'True'"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" CssClass="table table-hover table-active" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="ad" HeaderText="AD" SortExpression="ad" />
                        <asp:BoundField DataField="soyad" HeaderText="SOYAD" SortExpression="soyad" />
                        <asp:BoundField DataField="eposta" HeaderText="EPOSTA" SortExpression="eposta" />
                        <asp:CheckBoxField DataField="onayliMi" HeaderText="ONAY" SortExpression="onayliMi" />
                        <asp:CommandField ButtonType="Button" HeaderText="ONAYLA" EditText="onayla" ShowEditButton="True" UpdateText="kabul et" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </asp:Panel>
        </li>
        <li>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">DUYURU EKLEME</asp:LinkButton>
            <asp:Panel ID="Panel2" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString9 %>"
                    SelectCommand="SELECT [Baslik], [Duyuru], [Tarih] FROM [Duyurular] ORDER BY [Tarih] DESC"></asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover table-light table-active" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Horizontal">

                    <Columns>
                        <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                        <asp:BoundField DataField="Duyuru" HeaderText="Duyuru" SortExpression="Duyuru" />
                        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                        <asp:CommandField ButtonType="Button" DeleteText="" EditText="" HeaderText="İŞLEM" NewText="" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" UpdateText="Güncelle" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />

                </asp:GridView>
            </asp:Panel>
        </li>

        <li>
            <asp:Panel ID="Panel3" runat="server">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"> RANDEVULAR </asp:LinkButton>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString10 %>" SelectCommand="SELECT [hasta_tc], [hasta_ad], [hasta_soyad], [saat], [tarih] FROM [alinanrandevu] ORDER BY [tarih] DESC, [saat], [hasta_ad]"></asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" CssClass="table table-hover table-light table-active" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        <asp:BoundField DataField="hasta_tc" HeaderText="hasta_tc" SortExpression="hasta_tc" />
                        <asp:BoundField DataField="hasta_ad" HeaderText="hasta_ad" SortExpression="hasta_ad" />
                        <asp:BoundField DataField="hasta_soyad" HeaderText="hasta_soyad" SortExpression="hasta_soyad" />
                        <asp:BoundField DataField="saat" HeaderText="saat" SortExpression="saat" />
                        <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </asp:Panel>
        </li>
    </ul>
</asp:Content>

