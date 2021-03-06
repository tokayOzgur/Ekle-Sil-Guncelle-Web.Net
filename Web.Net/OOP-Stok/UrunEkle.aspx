<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="OOP_Stok.UrunEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <form runat="server">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Ürün Adı:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Buraya Ürün adını giriniz..."></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Ürün Adedi:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Buraya Ürün adedini giriniz..." TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Ürün Fiyatı:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Buraya Ürün fiyatını giriniz..." TextMode="Number"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Ürünü Kaydet" class="btn btn-success btn-block" OnClick="Button1_Click" />
        </form>
    </div>

</asp:Content>
