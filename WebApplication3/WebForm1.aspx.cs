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
    public partial class WebForm1 : System.Web.UI.Page
    {
        Class1 kullanıcıVerisi = Class1.getKullanıcıVerileri();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void MsgBox(string sMessage)
        {
            string msg = "<script language=\"javascript\">";
            msg += "alert('" + sMessage + "');";
            msg += "</script>";
            Response.Write(msg);
        }

        protected void girisyap_Click(object sender, EventArgs e)
        {
            /* if (eposta.Text == kullanıcıVerisi.Eposta &&
                 sifre.Text == kullanıcıVerisi.parola
                 )
             {
                 Response.Redirect("AnaSayfa.aspx");
             }
             else
             {
                 MsgBox("Bilgiler Hatalı. Tekrar Deneyiniz");
             }*/

            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["eticaretdbBaglantisi"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);
            komut = new SqlCommand("select * from uyeler where email=@email and şifre=@şifre ", baglanti);
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

        protected void uyeolma_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            SqlCommand komut;

            string baglanStr = ConfigurationManager.ConnectionStrings["eticaretdbBaglantisi"].ConnectionString;
            baglanti = new SqlConnection(baglanStr);



            komut = new SqlCommand("INSERT INTO uyeler (email, şifre) VALUES(@email, @şifre)", baglanti);
            komut.Parameters.AddWithValue("@email", email.Text);
            komut.Parameters.AddWithValue("@şifre", şifre.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            
        }
    }
}