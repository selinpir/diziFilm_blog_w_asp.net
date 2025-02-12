<%@ Page Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="dizi_film_blog.BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="single">
        <div class="container">
            <div class="col-md-8 single-main">
                <div class="single-grid">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <img src='<%# Eval("blogGorsel") %>' style="width: 750px; height: 500px; object-fit: cover; margin-bottom: 20px;" alt="Blog Görseli" />
                            <p style="font-size: 24px; font-weight: bold;"><%# Eval("blogBaslik") %></p>
                            <p><%# Eval("blogIcerik") %></p>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul class="comment-list">
                            <li>
                                <img src="web/images/avatar.png" class="img-responsive" alt="Yazar Avatarı">
                                <div class="desc">
                                    <p style="font-size: 18px; font-weight: bold;"><%# Eval("kullaniciAdi")  %> : </p>
                                    
                                    <p><%# Eval("yorumIcerik") %> </p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>

                <div class="content-form">
                    <h3>Yorum Yazın</h3>
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adınız" required="" ></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz" ></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Yorumunuz" TextMode="MultiLine" Height="60"></asp:TextBox>
                        <asp:Button ID="yorum_yap" runat="server" Text="Gönder" />
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
