<%@ Page Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="sosyalMedya.aspx.cs" Inherits="dizi_film_blog.sosyalMedya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="contact-content">
            <div class="container">

            <img src="https://res.cloudinary.com/dix49pqah/image/upload/v1739655241/hero-image_yzlt5n.webp" style="width: 1000px; height: 350px; object-fit: cover; display: block; margin: 0 auto; margin-bottom: 20px;" alt="Alternate Text" />

                <h3>LetterBoxd veya diğer uyg. Hesabını Paylaşabilirsin</h3>
                <div class="contact-details">
                    <form runat="server">

                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız" required=""></asp:TextBox>

                        <asp:TextBox ID="TextBox2" runat="server" placeholder="LetterBoxd veya diğer uyg. linkiniz(TV Time,Serializd): " required=""></asp:TextBox>

                        <asp:Button ID="ButtonSubmit" runat="server" Text="Paylaş" OnClick="ButtonSubmit_Click" />
                    </form>
                </div>

                <br />

                <!-- Yorumları Listele -->
                <h3>Paylaşılan Hesaplar</h3>
                <div id="letterboxd-comments">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div>
                                <p>
                                    <strong><%# Eval("kullaniciAD") %>:</strong>
                                    <a href="<%# Eval("link") %>" target="_blank">
                                        <%# Eval("link") %></a>
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </body>
</asp:Content>

<%--https://res.cloudinary.com/dix49pqah/image/upload/v1739655241/hero-image_yzlt5n.webp--%>

