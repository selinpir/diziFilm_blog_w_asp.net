<%@ Page Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="dizi_film_blog.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="contact-content">
            <div class="container">
                <div class="contact-info">
                    <h2>İletişim</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Contrary to popular belief.</p>
                </div>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="E-mail" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız" required="" Height="50" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <iframe id="map-canvas" class="map_part" width="600" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%&amp;height=100%&amp;hl=en&amp;q=Denizli Pamukkale Üniversitesi&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">Powered by <a href="https://embedgooglemaps.com">html embed google maps</a> and <a href="https://casinomga.se/">nya mga casino</a></iframe>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>İletişime Geç</h4>
                        <p>Email: <a href="mailto:selinpir6@gmail.com">selinpir6@gmail.com</a></p>
                        <p>Follow on: <a href="https://www.linkedin.com/in/selin-pir/">Linkedln</a>, <a href="https://github.com/selinpir">GitHub</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>


            </div>
        </div>
</asp:Content>
