using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog
{
    public partial class yeniBlog : System.Web.UI.Page
    {
       dizi_filmBlogEntities db= new dizi_filmBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) {
                var tur = (from x in db.tur
                           select new // x değişkeni aracılığyla tur ve ıd hafızaya alındı
                           {
                               x.turAd,
                               x.turID
                           }).ToList();
                DropDownList1.DataSource = tur;
                DropDownList1.DataBind();

                var kategori = (from y in db.kategori
                                select new // x değişkeni aracılığyla kategori ve ıd hafızaya alındı
                                {
                                    y.kategoriAd,
                                    y.kategoriID
                                }).ToList();
                DropDownList3.DataSource = kategori;
                DropDownList3.DataBind();
            }
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            blog t=new blog();
            t.blogBaslik = TextBox1.Text;
            t.blogTarih= DateTime.Parse(TextBox2.Text);
            t.blogGorsel = TextBox3.Text;
            t.tur = byte.Parse(DropDownList1.SelectedValue);
            t.kategori = byte.Parse(DropDownList3.SelectedValue);
            db.blog.Add(t);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");

        }
    }
}