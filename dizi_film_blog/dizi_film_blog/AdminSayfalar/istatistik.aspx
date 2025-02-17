<%@ Page Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="istatistik.aspx.cs" Inherits="dizi_film_blog.AdminSayfalar.istatistik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <asp:Label ID="Label7" runat="server" Text="İSTATİSTİKLER" CssClass="text-center text-primary" Font-Size="25px" Font-Bold="true"></asp:Label>
       <br />
    <table class="table table-bordered">
        <tr>
            <td>Toplam Blog Sayısı:
                <asp:Label ID="Label1"
                    runat="server" Text="Label"></asp:Label>
            </td>
            <td>Toplam Yorum Sayısı:
                <asp:Label ID="Label2"
                    runat="server" Text="Label"></asp:Label>
            </td>
            <td>Film Sayısı:
                <asp:Label ID="Label3"
                    runat="server" Text="Label"></asp:Label>
            </td>
        </tr>

             <tr>
         <td>Dizi Sayısı:
             <asp:Label ID="Label4"
                 runat="server" Text="Label"></asp:Label>
         </td>
         <td>Bilim-Kurgu Sayısı:
             <asp:Label ID="Label5"
                 runat="server" Text="Label"></asp:Label>
         </td>
         <td>En Fazla Yorumlu Blog:
             <asp:Label ID="Label6"
                 runat="server" Text="Label"></asp:Label>
         </td>
         </tr>
    </table>



</asp:Content>
