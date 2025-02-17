using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog.AdminSayfalar
{
    public partial class yorumSil : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db=new dizi_filmBlogEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["yorumID"]!=null)
            {
                int yorumID;
                bool isValid= int.TryParse(Request.QueryString["yorumID"],out yorumID);

                if (isValid)
                {
                    var yorum = db.yorum.Find(yorumID); //db.yorum tablosu
                    if (yorum != null)
                    {
                        db.yorum.Remove(yorum);
                        db.SaveChanges();

                    }
                }
            }
            Response.Redirect("yorumlar.aspx");
        }
    }
}