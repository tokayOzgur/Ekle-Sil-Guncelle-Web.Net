using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using System.Data.SqlClient;
using System.Data;

namespace DataAccessLayer
{
    public class DALMusteri
    {
        //Müşteri Listele
        public static List<EntityMusteri> MusteriListesi()
        {
            List<EntityMusteri> entityMusteris = new List<EntityMusteri>();
            SqlCommand komut = new SqlCommand("select * from Musteri", Baglanti.bgl);

            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityMusteri ent = new EntityMusteri();
                ent.MusteriId = Convert.ToInt32(dr["MusteriId"].ToString());
                ent.MusteriAd = dr["MusteriAd"].ToString();
                ent.MusteriSoyad = dr["MusteriSoyad"].ToString();

                entityMusteris.Add(ent);
            }
            dr.Close();
            return entityMusteris;
        }

        //Müşteri Ekleme Metodu
        public static int DALMusteriEkle(EntityMusteri ent)
        {
            SqlCommand komut = new SqlCommand("insert into Musteri(MusteriAd,MusteriSoyad) values(@p1,@p2)", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", ent.MusteriAd);
            komut.Parameters.AddWithValue("@p2", ent.MusteriSoyad);
            return komut.ExecuteNonQuery();
        }

        //Müşteri Sil
        public static bool DALMusteriSil(int id)
        {
            SqlCommand komut = new SqlCommand("delete from Musteri where MusteriId=@p1", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", id);
            return komut.ExecuteNonQuery() > 0;
        }
        //Müşteri Bilgi getirme Metodu 
        public static List<EntityMusteri> DALMusteriGetir(int id)
        {
            List<EntityMusteri> entityMusteris = new List<EntityMusteri>();
            SqlCommand komut = new SqlCommand("select * from Musteri where MusteriId = @p1", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityMusteri ent = new EntityMusteri();
                //ent.MusteriId = Convert.ToInt32(dr["MusteriId"].ToString());
                ent.MusteriAd = dr["MusteriAd"].ToString();
                ent.MusteriSoyad = dr["MusteriSoyad"].ToString();

                entityMusteris.Add(ent);
            }
            dr.Close();
            return entityMusteris;
        }

        //Müşteri Güncelle metodu
        public static bool DALMusteriGuncelle(EntityMusteri ent)
        {
            SqlCommand komut = new SqlCommand("update Musteri set MusteriAd=@p1, MusteriSoyad=@p2 where MusteriId=@p3", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", ent.MusteriAd);
            komut.Parameters.AddWithValue("@p2", ent.MusteriSoyad);
            komut.Parameters.AddWithValue("@p3", ent.MusteriId);
            return komut.ExecuteNonQuery() > 0;
        }
    }
}
