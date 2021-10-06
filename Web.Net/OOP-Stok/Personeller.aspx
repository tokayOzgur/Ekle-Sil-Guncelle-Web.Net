<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="OOP_Stok.Personeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container table-light table-hover">
        <table class="table">
            <thead>
                <tr>
                    <th>Personel Id</th>
                    <th>Persone Ad</th>
                    <th>Persone Soyad</th>
                    <th>Personel Fotoğraf</th>
                    <%--<th>Personel Departman İd</th>--%>
                    <th>Personel Departman Adı</th>
                    <th>Personel Maaş</th>
                    <th>Personel Semt</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("PerId") %></td>
                            <td><%#Eval("PerAd") %></td>
                            <td><%#Eval("PerSoyad") %></td>
                            <td><%#Eval("PerFoto") %></td>
                            <%--<td><%#Eval("PerDepartman") %></td>--%>
                            <td><%#Eval("ProcPerDepartman") %></td>
                            <td><%#Eval("PerMaas") %></td>
                            <td><%#Eval("PerSemt") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <br />
        <hr />
        <a href="PersonelEkle.aspx" class="btn btn-block btn-primary">Yeni Personel Ekle</a>
    </div>
</asp:Content>
