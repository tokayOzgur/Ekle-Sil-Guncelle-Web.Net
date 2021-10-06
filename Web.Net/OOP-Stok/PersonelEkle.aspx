<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PersonelEkle.aspx.cs" Inherits="OOP_Stok.PersonelEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <form runat="server">

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Personel Adı:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Buraya Personel adını giriniz..."></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Personel Soyadı:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Buraya Personel adedini giriniz..."></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Personel Maaş:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Buraya Personel maaşını giriniz..." TextMode="Number"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Personel Semt:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Buraya Personel semtini giriniz..."></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Personel Departman:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Personeli Kaydet" class="btn btn-success btn-block" OnClick="Button1_Click" />
        </form>
    </div>

</asp:Content>
