<%@ Page Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Bloglar.aspx.cs" Inherits="dizi_film_blog.AdminSayfalar.Bloglar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>TARİH</th>
            <th>TÜR</th>
            <th>KATEGORİ</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("blogID") %> </td>
                    <td><%# Eval("blogBaslik") %> </td>
                    <td><%# Eval("blogTarih") %> </td>
                    <td><%# Eval("blogTur") %> </td>
                    <td><%# Eval("blogKategori") %> </td>
                       <td>
                           <a href="#" class="btn btn-warning">Sil</a>
                           <a href="#" class="btn btn-danger">Güncelle</a>
                       </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="/yeniBlog.aspx" class="btn btn-primary">Yeni Blog</a>

</asp:Content>
