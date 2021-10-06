<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Satis.aspx.cs" Inherits="OOP_Stok.Satis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container table-light table-hover">
        <table class="table">
            <thead>
                <tr>
                    <th>Satış Id</th>
                    <th>Ürün Ad</th>
                    <th>Personel Ad Soyad</th>
                    <th>Müşteri Ad Soyad</th>
                    <th>Satş Tutarı</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("SatisId") %></td>
                            <td><%#Eval("UrunAd") %></td>
                            <td><%#Eval("PerAdSoyad") %></td>
                            <td><%#Eval("MusteriAdSoyad") %></td>
                            <td><%#Eval("SatisTutar") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <a href="SatisEkle.aspx" class="btn btn-block btn-primary">Yeni Satış Kaydı Ekle</a>
    </div>
</asp:Content>
