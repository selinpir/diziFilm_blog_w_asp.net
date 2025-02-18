<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dizi_film_blog.login" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Leda Login</title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Dizi & Film Blog, Login Paneli, ASP.NET, C# Web Giriş Sistemi" />
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <!-- Stylesheets -->
    <link href="web/css/bootstrap.css" rel="stylesheet" />
    <link href="/weblogin/css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
</head>
<body>
    <div class="mid-class">
        <div class="art-right-w3ls">
            <h2>Dizi & Film Login Paneli</h2>
            <form runat="server">
                <div class="main">
                    <div class="form-left-to-w3l">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kullanıcı Adınız"></asp:TextBox>
                    </div>
                    <div class="form-left-to-w3l">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="left-side-forget">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checked" Text=" Beni Hatırla" />
                </div>
                <div class="right-side-forget">
                    <a href="#" class="for">Şifremi Unuttum</a>
                </div>
                <br />
                <div class="btnn">
                    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" OnClick="Button1_Click"/>
                </div>
                <br />
                <asp:Label ID="LabelHata" runat="server" ForeColor="Red" CssClass="error-message"></asp:Label>
            </form>
        </div>
    </div>
    <footer class="bottem-wthree-footer">
        <p>Copyrights © 2025 Blog All rights reserved.</p>
    </footer>
</body>
</html>
