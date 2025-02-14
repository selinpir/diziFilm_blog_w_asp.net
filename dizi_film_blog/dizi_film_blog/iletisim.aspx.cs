using System;
using System.Web.UI;
using dizi_film_blog.Entity;

namespace dizi_film_blog
{
    public partial class iletisim : System.Web.UI.Page
    {
        dizi_filmBlogEntities2   db = new dizi_filmBlogEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dizi_film_blog.Entity.iletisim iletisim_ = new dizi_film_blog.Entity.iletisim();

            iletisim_.adSoyad = TextBox1.Text;   // Ad Soyad
            iletisim_.mail = TextBox2.Text;     // E-mail
            iletisim_.telefon = TextBox3.Text;   // Telefon
            iletisim_.konu = TextBox4.Text;      // Konu
            iletisim_.mesaj = TextBox5.Text;     // Mesaj

            db.iletisim.Add(iletisim_);
            db.SaveChanges();  // Değişiklikler kaydediliyor

            Response.Write("<script>alert('Mesajınız başarıyla gönderildi! Selinos mesajınızı okuyacaktır :) ');</script>");
        }
    }
}
