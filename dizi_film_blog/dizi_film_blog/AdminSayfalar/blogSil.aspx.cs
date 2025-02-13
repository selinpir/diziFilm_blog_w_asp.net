using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;
namespace dizi_film_blog
{
    public partial class blogSil : System.Web.UI.Page
    {
        dizi_filmBlogEntities db=new dizi_filmBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // blogID Query String var mı kontrol et
                if (Request.QueryString["blogID"] != null)
                {
                    int blogID;
                    bool isValid = int.TryParse(Request.QueryString["blogID"], out blogID);

                    if (isValid)
                    {
                        var blog = db.blog.Find(blogID);
                        if (blog != null)
                        {
                            db.blog.Remove(blog);
                            db.SaveChanges();
                        }
                    }
                }
                Response.Redirect("bloglar.aspx");
            }
        }

    }
}