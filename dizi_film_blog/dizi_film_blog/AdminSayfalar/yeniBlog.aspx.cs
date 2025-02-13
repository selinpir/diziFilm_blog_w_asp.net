using System;
using System.Linq;
using System.Web.UI;
using dizi_film_blog.Entity;
namespace dizi_film_blog
{
    public partial class yeniBlog : System.Web.UI.Page
    {
        dizi_filmBlogEntities db = new dizi_filmBlogEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Yeni bir blog nesnesi oluştur
                blog t = new blog
                {
                    blogBaslik = TextBox1.Text,
                    blogTarih = DateTime.Parse(TextBox2.Text),
                    blogGorsel = TextBox3.Text,
                    turID = byte.Parse(DropDownList1.SelectedValue), // turID'yi doğrudan ata
                    kategoriID = byte.Parse(DropDownList3.SelectedValue) // kategoriID'yi doğrudan ata
                };

                db.blog.Add(t);
                db.SaveChanges();

                string script = "alert('Blog yayınlanmıştır!'); window.location='bloglar.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "SuccessMessage", script, true);
            }
            catch (Exception ex)
            {
                // Hata mesajını göster
                LabelMessage.Text = "Bir hata oluştu: " + ex.Message;
                LabelMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}