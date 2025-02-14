using System;
using System.Globalization;
using System.Linq;
using dizi_film_blog.Entity;

namespace dizi_film_blog.AdminSayfalar
{
    public partial class blogGuncellle : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db = new dizi_filmBlogEntities2 ();

        protected void Page_Load(object sender, EventArgs e)
        {
            int a = int.Parse(Request.QueryString["blogID"]);

            if (!Page.IsPostBack) // Sayfa ilk kez yükleniyorsa
            {
                var turler = db.tur.Select(x => new { x.turAd, x.turID }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataTextField = "turAd";
                DropDownList1.DataValueField = "turID";
                DropDownList1.DataBind();

                // Kategorileri DropDownList3'e bağla
                var kategoriler = db.kategori.Select(y => new { y.kategoriAd, y.kategoriID }).ToList();
                DropDownList3.DataSource = kategoriler;
                DropDownList3.DataTextField = "kategoriAd";
                DropDownList3.DataValueField = "kategoriID";
                DropDownList3.DataBind();

                var deger = db.blog.Find(a);
                TextBox1.Text = deger.blogBaslik;
                TextBox2.Text=deger.blogTarih.ToString();
                TextBox3.Text = deger.blogGorsel;
                TextBox4.Text = deger.blogIcerik;

                DropDownList1.SelectedValue = deger.tur.ToString();
                DropDownList3.SelectedValue = deger.kategori.ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(Request.QueryString["blogID"]);
            var blog = db.blog.Find(a);

            blog.blogBaslik = TextBox1.Text;
            blog.blogTarih = DateTime.Parse(TextBox2.Text);
            blog.blogGorsel = TextBox3.Text;
            blog.blogIcerik = TextBox4.Text;

            // Retrieve the tur entity using the selected value from DropDownList1
            byte turID = byte.Parse(DropDownList1.SelectedValue);
            var tur = db.tur.Find(turID);
            blog.tur = tur;

            // Retrieve the kategori entity using the selected value from DropDownList3
            byte kategoriID = byte.Parse(DropDownList3.SelectedValue);
            var kategori = db.kategori.Find(kategoriID);
            blog.kategori = kategori;

            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}