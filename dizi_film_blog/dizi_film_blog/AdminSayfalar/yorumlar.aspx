<%@ Page Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="dizi_film_blog.AdminSayfalar.yorumlar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>KULLANICI</th>
            <th>BLOG</th>
            <th>SİL & GÜNCELLE</th>
        </tr>
               <asp:Label ID="Label1" runat="server" Text="Yorumlar" CssClass="text-center text-primary" Font-Size="25px" Font-Bold="true"></asp:Label>
       <br />
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("yorumID") %> </td>
                    <td><%# Eval("kullaniciAdi") %> </td>
                    <td><%# Eval("blogBaslik") %> </td>
                    <td>

                        <asp:HyperLink ID="HyperLink2" runat="server"
                            NavigateUrl='<%# ResolveUrl("~/AdminSayfalar/yorumSil.aspx?yorumID=" + Eval("yorumID")) %>'
                            CssClass="btn btn-danger">Sil</asp:HyperLink>

                        <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl='<%# ResolveUrl("~/AdminSayfalar/yorumGuncelle.aspx?yorumID=" + Eval("yorumID")) %>'
                            CssClass="btn btn-warning">Güncelle</asp:HyperLink>

                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
