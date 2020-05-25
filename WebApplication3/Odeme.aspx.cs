using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;

namespace WebApplication3
{
    public partial class Odeme : System.Web.UI.Page
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
            komut = new SqlCommand("select * from KartBilgileri where KartNo=@kartno and Cvv=@cvv and Ay=@ay and Yil=@yil ", baglanti);
            komut.Parameters.AddWithValue("@kartno", kartno.Text);
            komut.Parameters.AddWithValue("@cvv", cvv.Text);
            komut.Parameters.AddWithValue("@ay", ay.Text);
            komut.Parameters.AddWithValue("@yil", yil.Text);
            baglanti.Open();
            SqlDataReader sdr = komut.ExecuteReader();
            if (sdr.Read())
            {
                MsgBox("ÖDEME BAŞARILI !!");
                Thread.Sleep(5000);
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