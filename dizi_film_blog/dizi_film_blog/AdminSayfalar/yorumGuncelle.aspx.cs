using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;
using System.Data.Entity; 

namespace dizi_film_blog.AdminSayfalar
{
    public partial class yorumGuncelle : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db = new dizi_filmBlogEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {               
                if (Request.QueryString["yorumID"] != null)
                {
                    int yorumID;
                    bool isValid = int.TryParse(Request.QueryString["yorumID"], out yorumID);

                    if (isValid)
                    {
                        var yorum = db.yorum.Find(yorumID);

                        if (yorum != null)
                        {
                            TextBox1.Text = yorum.yorumID.ToString();
                            TextBox2.Text = yorum.kullaniciAdi;
                            TextBox3.Text = yorum.yorumBlog.ToString();
                            TextBox4.Text = yorum.yorumIcerik;
                        }
                        else
                        {
                            Response.Redirect("yorumlar.aspx"); 
                        }
                    }
                    else
                    {
                        Response.Redirect("yorumlar.aspx");
                    }
                }
                else
                {
                    Response.Redirect("yorumlar.aspx"); 
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int yorumID;
            if (Request.QueryString["yorumID"] != null && int.TryParse(Request.QueryString["yorumID"], out yorumID))
            {
                var yorum = db.yorum.Find(yorumID);

                if (yorum != null)
                {
                    yorum.yorumIcerik = TextBox4.Text;
                    db.Entry(yorum).State = EntityState.Modified; 
                    db.SaveChanges();
                    Response.Redirect("yorumlar.aspx");
                }
                else
                {
                    LabelMessage.Text = "Güncellenecek yorum bulunamadı!";
                }
            }
            else
            {
                LabelMessage.Text = "Geçersiz yorum ID!";
            }
        }
    }
}
