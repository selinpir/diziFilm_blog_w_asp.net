<%@ Page Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="yorumGuncelle.aspx.cs" Inherits="dizi_film_blog.AdminSayfalar.yorumGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="BLOG ID" ReadOnly="true"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="KULLANICI" ReadOnly="true"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="BLOG" ReadOnly="true"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="İÇERİK"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-danger" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="LabelMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
    </form>
</asp:Content>
