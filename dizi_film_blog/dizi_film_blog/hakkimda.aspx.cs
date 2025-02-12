using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog
{
    public partial class hakkimda : System.Web.UI.Page
    {
        dizi_filmBlogEntities db= new dizi_filmBlogEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.hakkimizda.ToList();
            Repeater1.DataBind();

        }
    }
}