<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SatisEkle.aspx.cs" Inherits="OOP_Stok.SatisEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <form runat="server">

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Ürün:"></asp:Label>
                <asp:DropDownList ID="DrpDownUrunAd" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Personel:"></asp:Label>
                <asp:DropDownList ID="DrpDownPerAd" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
           
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Müşteri:"></asp:Label>
                <asp:DropDownList ID="DrpDownMusAd" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
             <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Satış Tutarı:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" CssClass="form-control" placeholde="Buraya tutarı giriniz..."></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Satış İşlemini Kaydet" class="btn btn-success btn-block" OnClick="Button1_Click" />
        </form>
    </div>

</asp:Content>
