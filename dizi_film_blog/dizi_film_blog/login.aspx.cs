using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog
{
    public partial class login : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db = new dizi_filmBlogEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                Response.Redirect("/AdminSayfalar/Bloglar.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = TextBox1.Text.Trim();
            string sifre = TextBox2.Text.Trim();

            var kullanici = db.admin.FirstOrDefault(x => x.kullanici == kullaniciAdi);

            if (kullanici != null)
            {
                if (kullanici.sifre == sifre) 
                {
                    Session.Add("kullanici",TextBox1.Text);
                   // Session["kullanici"] = kullaniciAdi;
                    Response.Redirect("/AdminSayfalar/Bloglar.aspx");
                }
                else
                {
                    LabelHata.Text = "Şifre hatalı!";
                }
            }
            else
            {
                LabelHata.Text = "Kullanıcı bulunamadı!";
            }
        }
    }
}
