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
    public class DALPersonel
    {
        //Personel listeleme metodu
        public static List<EntityPersonel> PersonelListesi()
        {
            List<EntityPersonel> degerler = new List<EntityPersonel>();
            SqlCommand komut = new SqlCommand("PerListesi", Baglanti.bgl);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityPersonel ent = new EntityPersonel();
                ent.PerId = Convert.ToInt32(dr["PerId"].ToString());
                ent.PerAd = dr["PerAd"].ToString();
                ent.PerSoyad = dr["PerSoyad"].ToString();
                ent.PerFoto = dr["PerFoto"].ToString();
                //ent.PerDepartman = Convert.ToInt32(dr["PerDepartman"].ToString());
                ent.ProcPerDepartman = (dr["DepAd"].ToString());
                ent.PerMaas = Convert.ToDecimal(dr["PerMaas"].ToString());
                ent.PerSemt = dr["PerSemt"].ToString();

                degerler.Add(ent);
            }
            dr.Close();
            return degerler;
        }
        //Personel Ekleme Metodu
        public static int DALPersonelEkle(EntityPersonel ent)
        {
            SqlCommand komut = new SqlCommand("insert into Personel (PerAd,PerSoyad,PerDepartman,PerMaas,PerSemt) values (@p1,@p2,@p3,@p4,@p5)", Baglanti.bgl); // Personel fotoğrafı güncelleme kısmında gerçekleştiricez.

            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", ent.PerAd);
            komut.Parameters.AddWithValue("@p2", ent.PerSoyad);
            komut.Parameters.AddWithValue("@p3", ent.PerDepartman);
            komut.Parameters.AddWithValue("@p4", ent.PerMaas);
            komut.Parameters.AddWithValue("@p5", ent.PerSemt);

            return komut.ExecuteNonQuery();
        }
    }
}
