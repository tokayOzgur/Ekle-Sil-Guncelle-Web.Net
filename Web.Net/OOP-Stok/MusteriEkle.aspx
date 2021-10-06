<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MusteriEkle.aspx.cs" Inherits="OOP_Stok.MusteriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container mt-4">
        <form runat="server">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Müşteri Adı:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Buraya Müşterinizin adını giriniz..."></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Müşteri Soyadı:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Buraya Müşterinizin soyadını giriniz..."></asp:TextBox>
            </div>
            
            <asp:Button ID="Button1" runat="server" Text="Kaydet" class="btn btn-success btn-block" OnClick="Button1_Click"/>
        </form>
    </div>
    
</asp:Content>
