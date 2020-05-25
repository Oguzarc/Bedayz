using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MenuDeneme_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }

        

        protected void Anasayfar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }

        protected void deneme_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }

        protected void Logo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }


        protected void UyelikButon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Uyelik.aspx");
        }

        protected void SepetButon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Sepet.aspx");
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

            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["eticaretdbBaglantisi"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);



            komut = new SqlCommand("INSERT INTO Abonelik (MailAdress) VALUES(@abonemail)", baglanti);
            komut.Parameters.AddWithValue("@abonemail", abonelik.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            Response.Redirect("Anasayfa.aspx");
        }

        protected void Urun1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun2Sayfa.aspx");
        }

        protected void Urun2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun2Sayfa.aspx");
        }

        protected void Urun3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun3Sayfa.aspx");
        }

        protected void Urun4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun4Sayfa.aspx");
        }

        protected void Urun5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun5Sayfa.aspx");
        }

        protected void Urun6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun6Sayfa.aspx");
        }

        protected void Urun7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun7Sayfa.aspx");

        }

        protected void Urun8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun8Sayfa.aspx");
        }

        protected void Urun9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun9Sayfa.aspx");
        }

        protected void Urun10_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun10Sayfa.aspx");
        }

        protected void Urun11_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun11Sayfa.aspx");
        }

        protected void Urun12_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("URUNLER/Urun12Sayfa.aspx");
        }

        
    }
}