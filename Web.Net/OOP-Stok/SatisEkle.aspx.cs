using BussinesLogicLayer;
using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OOP_Stok
{
    public partial class SatisEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // DropDown Ürün
                SqlCommand komut = new SqlCommand("select * from Urun", Baglanti.bgl);
                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DrpDownUrunAd.DataValueField = "UrunId";
                DrpDownUrunAd.DataTextField = "UrunAd";
                DrpDownUrunAd.DataSource = dt;
                DrpDownUrunAd.DataBind();

                //DropDown Personel
                SqlCommand komut2 = new SqlCommand("select PerId,(PerAd+' '+PerSoyad) as PerAdSoyad from Personel", Baglanti.bgl);
                SqlDataAdapter da2 = new SqlDataAdapter(komut2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                DrpDownPerAd.DataValueField = "PerId";
                DrpDownPerAd.DataTextField = "PerAdSoyad";
                DrpDownPerAd.DataSource = dt2;
                DrpDownPerAd.DataBind();

                //DropDownMüşteri
                SqlCommand komut3 = new SqlCommand("select MusteriId, (MusteriAd +' '+MusteriSoyad) as MusteriAdSoyad from Musteri", Baglanti.bgl);
                SqlDataAdapter da3 = new SqlDataAdapter(komut3);
                DataTable dt3 = new DataTable();
                da3.Fill(dt3);
                DrpDownMusAd.DataValueField = "MusteriId";
                DrpDownMusAd.DataTextField = "MusteriAdSoyad";
                DrpDownMusAd.DataSource = dt3;
                DrpDownMusAd.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntitySatis ent = new EntitySatis();
            ent.SatisUrun = Convert.ToInt32(DrpDownUrunAd.SelectedValue);
            ent.SatisPersonel = Convert.ToInt32(DrpDownPerAd.SelectedValue);
            ent.SatisMusteri = Convert.ToInt32(DrpDownMusAd.SelectedValue);
            ent.SatisTutar = Convert.ToDecimal(TextBox1.Text);
            int kontrol = BLLSatis.BLLSatisEkle(ent);
            if (kontrol != -1)
                Response.Redirect("Satis.aspx");
        }
    }
}