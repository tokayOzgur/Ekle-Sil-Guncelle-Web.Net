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
    public class DALDepartman
    {
        //Departman Listeleme
        public static List<EntityDepartman> DepListesi() // Departmanları Listeleme metodu
        {
            List<EntityDepartman> departmen = new List<EntityDepartman>(); // değerleri ekliyeceğimiz list
            SqlCommand komut = new SqlCommand("Select * from Departman", Baglanti.bgl); // bağlantı komutu
            if (komut.Connection.State != ConnectionState.Open) //komut bağlantısı açık değilse
            {
                komut.Connection.Open();//bağlantıyı aç
            }

            SqlDataReader dr = komut.ExecuteReader();//komut üzerinde okuma işlemi gerçekleştir
            while (dr.Read())//bu okuma sürdükçe
            {
                EntityDepartman ent = new EntityDepartman(); // ent adlı bir nesne oluştur
                ent.DepId = Convert.ToInt32(dr["DepId"].ToString()); //bu nesnenin proplarına değer çek
                ent.DepAd = dr["DepAd"].ToString();
                departmen.Add(ent); // bu nesneyi listemize ekle
            }
            dr.Close();
            return departmen; // sonuç olarak listeyi geri gönder
        }

        //Departman Ekleme
        public static int DALDepEkle(EntityDepartman p)
        {
            SqlCommand komut = new SqlCommand("insert into Departman (DepAd) values (@p1)", Baglanti.bgl);
            if (komut.Connection.State != ConnectionState.Open) //komut bağlantısı açık değilse
            {
                komut.Connection.Open();//bağlantıyı aç
            }
            komut.Parameters.AddWithValue("@p1", p.DepAd);
            return komut.ExecuteNonQuery();
        }
    }
}
