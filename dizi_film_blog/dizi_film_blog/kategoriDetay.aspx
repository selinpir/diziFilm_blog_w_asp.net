<%@ Page Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="dizi_film_blog.kategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">

                                <img src='<%# Eval("blogGorsel") %>' style="width: 650px; height: 400px; object-fit: cover;" alt="Blog Görseli" />
                                <div class="post-info">
                                    <h4><a href="BlogDetay.aspx?blogID=<%# Eval("blogID") %>"><%# Eval("blogBaslik") %></a> <%# Eval("blogTarih") %></h4>
                                    <p>
                                        <%# GetShortContent(Eval("blogIcerik").ToString()) %>
                                    </p>
                                    <a href="BlogDetay.aspx?blogID=<%# Eval("blogID") %>"><span></span>Devamını Oku</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>En Son Yazılar</h3>
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="BlogDetay.aspx?blogID=<%# Eval("blogID") %>"><%# Eval("blogBaslik") %></a>   </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <div class="clearfix"></div>

                <div class="categories">
                    <h3>Kategoriler</h3>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="kategoriDetay.aspx?kategoriID=<%# Eval("kategoriID") %>"><%# Eval("kategoriAd") %></a></li>

                                <%-- db kategori->kategoriAd--%>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
