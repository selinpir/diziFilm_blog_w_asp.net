using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
                    dizi_filmBlogEntities2 db = new dizi_filmBlogEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["kullanici"].ToString());
            if (Session["kullanici"]==null)
            {
                Response.Redirect("~/login.aspx");                 
            }
            else
            {
                Response.Write("hoşgeldiniz:" + Session["kullanici"].ToString());
            }

            Repeater1.DataSource = db.blog.ToList();
            Repeater1.DataBind();

        }
    }
}