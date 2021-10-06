<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="OOP_Stok.Musteriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container table-light table-hover">
        <table class="table">
            <thead>
                <tr>
                    <th>Müşteri Id</th>
                    <th>Müşteri Ad</th>
                    <th>Müşteri Soyad</th>
                    <th>İşlem</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("MusteriId") %></td>
                            <td><%#Eval("MusteriAd") %></td>
                            <td><%#Eval("MusteriSoyad") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "~/MusteriSil.aspx?MusteriId="+Eval("MusteriId") %>' 
                                    ID="HyperLink1" runat="server" CssClass="btn btn-danger  ">Sil</asp:HyperLink>
                                
                                <asp:HyperLink  NavigateUrl='<%# "~/MusteriGuncelle.aspx?MusteriId="+Eval("MusteriId") %>' 
                                    ID="HyperLink2" runat="server" CssClass="btn btn-warning ">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <a href="MusteriEkle.aspx" class="btn btn-block btn-primary">Yeni Müşteri Ekle</a>
    </div>

</asp:Content>