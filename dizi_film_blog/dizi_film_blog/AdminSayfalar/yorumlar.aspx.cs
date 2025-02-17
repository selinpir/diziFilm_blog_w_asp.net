using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog.AdminSayfalar
{
    public partial class yorumlar : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db=new dizi_filmBlogEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            var yorumlar = (from x in db.yorum
                            select new
                            {
                                x.yorumID,
                                x.kullaniciAdi,
                                x.blog.blogBaslik
                            }).ToList();

            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}