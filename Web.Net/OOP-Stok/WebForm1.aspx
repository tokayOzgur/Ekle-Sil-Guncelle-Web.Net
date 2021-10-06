<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OOP_Stok.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container table-light table-hover">
        <table class="table">
            <thead>
                <tr>
                    <th>Departman Id</th>
                    <th>Departman Ad</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr> 
                            <td><%#Eval("DepId") %></td>
                            <td><%#Eval("DepAd") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <br />
        <hr />
        <br />
        <a href="DepartmanEkle.aspx" class="btn btn-block btn-primary">Yeni Departman Ekle</a>
    </div>

</asp:Content>
