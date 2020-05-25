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
    public partial class Uyelik : System.Web.UI.Page
    {
        Class1 kullanıcıVerisi = Class1.getKullanıcıVerileri();

     

        private void MsgBox(string sMessage)
        {
            string msg = "<script language=\"javascript\">";
            msg += "alert('" + sMessage + "');";
            msg += "</script>";
            Response.Write(msg);
        }

        protected void girisyap_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["eticaretdbBaglantisi"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("select * from Users where MailAdress=@email and Password=@şifre ", baglanti);
            komut.Parameters.AddWithValue("@email", eposta.Text);
            komut.Parameters.AddWithValue("@şifre", sifre.Text);
            baglanti.Open();
            SqlDataReader sdr = komut.ExecuteReader();
            if (sdr.Read())
            {
                Response.Redirect("AnaSayfa.aspx");
            }
            else
            {
                MsgBox("Bilgiler Hatalı. Tekrar Deneyiniz");
            }
            baglanti.Close();
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

        protected void uyeolma_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["eticaretdbBaglantisi"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);



            komut = new SqlCommand("INSERT INTO Users (FirstName , LastName , MailAdress , Password) VALUES(@Ad, @Soyad , @email , @şifre)", baglanti);
            komut.Parameters.AddWithValue("@Ad", Ad.Text);
            komut.Parameters.AddWithValue("@Soyad", Soyad.Text);
            komut.Parameters.AddWithValue("@email", email.Text);
            komut.Parameters.AddWithValue("@şifre", şifre.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

            Response.Redirect("Anasayfa.aspx");
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
    }
}

