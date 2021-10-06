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
    public class DALUrun
    {
        //Ürünleri Listeleme
        public static List<EntityUrun> DalUrunList()
        {
            List<EntityUrun> entityUruns = new List<EntityUrun>();
            SqlCommand komut = new SqlCommand("select * from Urun", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityUrun ent = new EntityUrun();
                ent.UrunId = Convert.ToInt32(dr["UrunId"].ToString());
                ent.UrunAd = dr["UrunAd"].ToString();
                ent.UrunAdet = Convert.ToInt32(dr["UrunAdet"].ToString());
                ent.UrunFiyat = Convert.ToDecimal(dr["UrunFiyat"].ToString());

                entityUruns.Add(ent);
            }
            dr.Close();
            return entityUruns;
        }

        //Ürün Ekleme Metodu
        public static int DALUrunEkle(EntityUrun ent)
        {
            SqlCommand komut = new SqlCommand("insert into Urun(UrunAd, UrunAdet, UrunFiyat) values(@p1,@p2,@p3)", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", ent.UrunAd);
            komut.Parameters.AddWithValue("@p2", ent.UrunAdet);
            komut.Parameters.AddWithValue("@p3", ent.UrunFiyat);
            return komut.ExecuteNonQuery();
        }
    }
}
