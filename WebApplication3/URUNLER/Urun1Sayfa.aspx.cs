using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class UrunSayfa1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SepetButon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Sepet.aspx");
        }

        protected void Anasayfar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Anasayfa.aspx");
        }

        protected void deneme_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Anasayfa.aspx");
        }

        protected void Logo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Anasayfa.aspx");
        }


        protected void UyelikButon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Uyelik.aspx");
        }

        protected void Instagram_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://instagram.com/bedayz");
        }

        protected void Twitter_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://twitter.com/bedayzon");
        }

        protected void Facebook_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com/bedayzon");
        }

        protected void abonelikbuton_Click(object sender, EventArgs e)
        {

        }

        protected void Urun_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Sepet.aspx?id=" + 2.ToString());
        }
    }
}