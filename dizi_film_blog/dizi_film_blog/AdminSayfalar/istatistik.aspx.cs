using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog.AdminSayfalar
{
    public partial class istatistik : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db= new dizi_filmBlogEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text= db.blog.Count().ToString();
            Label2.Text = db.yorum.Count().ToString();
            Label3.Text = db.blog.Where(x=>x.blogTur==2).Count().ToString();

            Label4.Text = db.blog.Where(x => x.blogTur == 1).Count().ToString();
            Label5.Text = db.blog.Where(x=>x.tur.turAd=="Dizi").Count().ToString();
            Label5.Text = db.blog.Where(x => x.kategori.kategoriAd == "Bilim Kurgu").Count().ToString();
            //Label6.Text = db.yorum.GroupBy(x=>x.yorumBlog).OrderByDescending(x=>x.Count()).Select(y=>y.Key).FirstOrDefault().ToString(); 
            Label6.Text=db.blog.Where(y=>y.blogID==(db.yorum.GroupBy(x=>x.yorumBlog)
            .OrderByDescending(x=>x.Count()).Select(z=>z.Key).FirstOrDefault())).Select(
                k=>k.blogBaslik).FirstOrDefault();

        }
    }
}