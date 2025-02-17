using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;
namespace dizi_film_blog
{
    public partial class sosyalMedya : System.Web.UI.Page
    {
        dizi_filmBlogEntities3 db=new dizi_filmBlogEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var letterboxdLinks = (from x in db.sosyalMedya
                                       select new
                                       {
                                           x.kullaniciAD,
                                           x.link,
                                       }).ToList();

                Repeater1.DataSource = letterboxdLinks;
                Repeater1.DataBind();
            }
        
        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            dizi_film_blog.Entity.sosyalMedya sosyal = new dizi_film_blog.Entity.sosyalMedya();
            sosyal.kullaniciAD = TextBox1.Text;
            sosyal.link = TextBox2.Text;
            db.sosyalMedya.Add(sosyal);
            db.SaveChanges();
            Response.Write("<script>alert('Link başarıyla paylaşıldı! :) ');</script>");

        }
  
    }
}