using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DALSatis
    {
        // Satış Listeleme Metodu
        public static List<EntitySatis> DALSatisList()
        {
            List<EntitySatis> entitySatis = new List<EntitySatis>();
            SqlCommand komut = new SqlCommand("Satislar", Baglanti.bgl);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntitySatis ent = new EntitySatis();
                ent.SatisId = Convert.ToInt32(dr["SatısId"].ToString());
                ent.UrunAd = (dr["UrunAd"].ToString());
                ent.PerAdSoyad = dr["Personel"].ToString();
                ent.MusteriAdSoyad = dr["Musteri"].ToString();
                ent.SatisTutar = Convert.ToDecimal(dr["Tutar"]);

                entitySatis.Add(ent);
            }
            dr.Close();
            return entitySatis;
        }
        //Satış Ekleme Metodu
        public static int DALSatisEkle(EntitySatis ent)
        {
            SqlCommand komut = new SqlCommand("insert into Satıs (Urun, Personel, Tutar, Musteri) values (@p1,@p2,@p3,@p4)", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", ent.SatisUrun);
            komut.Parameters.AddWithValue("@p2", ent.SatisPersonel);
            komut.Parameters.AddWithValue("@p3", ent.SatisTutar);
            komut.Parameters.AddWithValue("@p4", ent.SatisMusteri);
            return komut.ExecuteNonQuery();

        }
    }
}
