<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DepartmanEkle.aspx.cs" Inherits="OOP_Stok.DepartmanEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <form runat="server">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Departman Adı:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Buraya departman adını giriniz..."></asp:TextBox>
            </div>
            
            <asp:Button ID="Button1" runat="server" Text="Kaydet" class="btn btn-success btn-block" OnClick="Button1_Click"/>
        </form>
    </div>


</asp:Content>
