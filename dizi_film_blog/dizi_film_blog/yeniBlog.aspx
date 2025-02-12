<%@ Page Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="yeniBlog.aspx.cs" Inherits="dizi_film_blog.yeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Blog Başlık"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Tarih"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Görsel"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" placeholder="Tür" DataValueField="turID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataTextField="turAD"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" placeholder="Kategori" DataValueField="kategoriID" DataTextField="kategoriAD"></asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="İçerik" Height="100px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-danger" />

    </form>

</asp:Content>
