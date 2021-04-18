<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" MaintainScrollPositionOnPostback="true" %>

<script runat="server">


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .listeleme li {
            margin: 15px;
            margin-left: 23px;
        }

        h1 {
            color: darkred;
            font-family: Elephant;
            font-size: x-large;
            position: center;
            text-align: center;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="resimler/diyet-programı.png" width="617" height="310" style="border: 4px solid forestgreen" />
        <h1>Başarı Hikayelerimiz</h1>
        <div class="listeleme">
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:üyeKayitConnectionString8 %>" SelectCommand="SELECT [baslik], [icerik], [tarih] FROM [basari] ORDER BY [tarih] DESC, [baslik]"></asp:SqlDataSource>
            <asp:ListView runat="server" DataSourceID="SqlDataSource8">
                <AlternatingItemTemplate>
                    <li style="background-color: #81b781;">
                        <asp:Label ID="baslikLabel" runat="server" Text='<%# Eval("baslik") %>' />
                        <br />

                        <asp:Label ID="icerikLabel" runat="server" Text='<%# Eval("icerik") %>' />
                        <br />

                        <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C; color: #FFFFFF;">
                        <asp:TextBox ID="baslikTextBox" runat="server" Text='<%# Bind("baslik") %>' />
                        <br />

                        <asp:TextBox ID="icerikTextBox" runat="server" Text='<%# Bind("icerik") %>' />
                        <br />

                        <asp:TextBox ID="tarihTextBox" runat="server" Text='<%# Bind("tarih") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Güncelleştir" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="İptal" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    Hiçbir veri döndürülmedi.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">
                        <asp:TextBox ID="baslikTextBox" runat="server" Text='<%# Bind("baslik") %>' />
                        <br />
                        <asp:TextBox ID="icerikTextBox" runat="server" Text='<%# Bind("icerik") %>' />
                        <br />
                        <asp:TextBox ID="tarihTextBox" runat="server" Text='<%# Bind("tarih") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Ekle" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Temizle" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: ghostwhite; color: #000000;">
                        <asp:Label ID="baslikLabel" runat="server" Text='<%# Eval("baslik") %>' />
                        <br />

                        <asp:Label ID="icerikLabel" runat="server" Text='<%# Eval("icerik") %>' />
                        <br />

                        <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center; background-color: forestgreen; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                        <asp:Label ID="baslikLabel" runat="server" Text='<%# Eval("baslik") %>' />
                        <br />

                        <asp:Label ID="icerikLabel" runat="server" Text='<%# Eval("icerik") %>' />
                        <br />

                        <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>

        </div>
    </div>
</asp:Content>

