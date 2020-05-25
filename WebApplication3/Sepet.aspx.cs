using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;

                dt.Columns.Add("ID");
                dt.Columns.Add("AD");

                dt.Columns.Add("RESİM");



                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=USER-BILGISAYAR\\MSSQLSERVERR;Initial Catalog=UserRegistrationDB;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from URUNLER where ID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["ID"] = ds.Tables[0].Rows[0]["ID"].ToString();
                        dr["AD"] = ds.Tables[0].Rows[0]["AD"].ToString();
                        dr["RESİM"] = ds.Tables[0].Rows[0]["RESİM"].ToString();

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=USER-BILGISAYAR\\MSSQLSERVERR;Initial Catalog=UserRegistrationDB;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from URUNLER where ID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["ID"] = ds.Tables[0].Rows[0]["ID"].ToString();
                        dr["AD"] = ds.Tables[0].Rows[0]["AD"].ToString();
                        dr["RESİM"] = ds.Tables[0].Rows[0]["RESİM"].ToString();

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }

            }
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

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("AddtoCart.aspx?id=" + 1.ToString());

        }

        protected void Odeme_Click(object sender, EventArgs e)
        {

            Response.Redirect("Odeme.aspx");

        }




    }
    }
    
