﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dizi_film_blog.Entity;

namespace dizi_film_blog
{
   
    public partial class _default1 : System.Web.UI.Page
    {
        dizi_filmBlogEntities2 db = new dizi_filmBlogEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar=db.blog.OrderByDescending(b => b.blogTarih).ToList(); //genel bilgi
            Repeater2.DataSource = bloglar;
            Repeater2.DataBind();

            var kategoriler = db.kategori.ToList(); //kategoriler
            Repeater1.DataSource = kategoriler;
            Repeater1.DataBind();

            var enSonYazilar = db.blog.OrderByDescending(b => b.blogTarih).Take(4).ToList();
            Repeater3.DataSource = enSonYazilar;
            Repeater3.DataBind();
        }

        public string GetShortContent(string content)
        {
            int maxLength = 150; // Görüntülenecek maksimum karakter uzunluğu
            if (string.IsNullOrEmpty(content))
                return string.Empty;

            return content.Length > maxLength ? content.Substring(0, maxLength) + "..." : content;
        }

    
    }

}