<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="OOP_Stok.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container table-light table-hover">
        <table class="table">
            <thead>
                <tr>
                    <th>Urun Id</th>
                    <th>Urun Ad</th>
                    <th>Urun Adet</th>
                    <th>Urun Fiyat</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("UrunId") %></td>
                            <td><%#Eval("UrunAd") %></td>
                            <td><%#Eval("UrunAdet") %></td>
                            <td><%#Eval("UrunFiyat") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <br />
        <hr /> 
        <a href="UrunEkle.aspx" class="btn btn-block btn-primary">Yeni Ürün Ekle</a>
    </div>

</asp:Content>
