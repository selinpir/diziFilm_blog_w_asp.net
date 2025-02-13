<%@ Page Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="yeniBlog.aspx.cs" Inherits="dizi_film_blog.yeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Blog Başlık"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Tarih"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Görsel"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataValueField="turID" DataTextField="turAd"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" DataValueField="kategoriID" DataTextField="kategoriAd"></asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="İçerik" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-danger" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="LabelMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
    </form>
</asp:Content>