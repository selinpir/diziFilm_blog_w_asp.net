using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db = new dizi_filmBlogEntities2  ();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["blogID"]);
            var blog = db.blog.Where(x=> x.blogID==id).ToList(); 
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
            
            var yorumlar=db.yorum.Where(y=> y.yorumBlog==id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();
        }

    

        protected void TextBox4_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["blogID"]);
            yorum t = new yorum();
            t.kullaniciAdi = TextBox1.Text;
            t.mail = TextBox2.Text;
            t.yorumIcerik = TextBox3.Text;
            t.yorumBlog = id;
            db.yorum.Add(t);
            db.SaveChanges();
            Response.Redirect("BlogDetay.aspx?blogID="+id);
        }
    }
}