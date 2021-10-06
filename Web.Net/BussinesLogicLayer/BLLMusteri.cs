using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesLogicLayer
{
    public class BLLMusteri
    {
        //Müşteri Listeleme Metodu
        public static List<EntityMusteri> BLLMusteriListesi()
        {
            return DALMusteri.MusteriListesi();
        }

        //Müşteri Ekleme Metodu
        public static int BLLMusteriEkle(EntityMusteri ent)
        {
            if (!string.IsNullOrEmpty(ent.MusteriAd) && !string.IsNullOrEmpty(ent.MusteriSoyad))
            {
                return DALMusteri.DALMusteriEkle(ent);//koşul sağlandıysa DAL'a değeri gönder.
            }
            else
                return -1; //işlemde hata varsa -1 dönder
        }
        //Müşteri silme Metodu
        public static bool BLLMusteriSil(int id)
        {
            if (id != 0)
            {
                return DALMusteri.DALMusteriSil(id);
            }
            else
                return false;
        }

        //Müşteri Bilgileri Getirme Metodu
        public static List<EntityMusteri> BLLMusteriGetir(int p)
        {
            return DALMusteri.DALMusteriGetir(p);
        }

        //Müşteri Güncelleme Metodu
        public static bool BLLMusteriGuncelle(EntityMusteri ent)
        {
            if (!string.IsNullOrEmpty(ent.MusteriAd) && !string.IsNullOrEmpty(ent.MusteriSoyad) && ent.MusteriId > 0)
            {
                return DALMusteri.DALMusteriGuncelle(ent);
            }
            else
                return false;
        }
    }
}
