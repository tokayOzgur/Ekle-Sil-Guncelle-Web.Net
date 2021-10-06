using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesLogicLayer
{
    public class BLLUrun
    {
        //Ürün listeleme metodu
        public static List<EntityUrun> BLLUrunList()
        {
            return DALUrun.DalUrunList();
        }

        //Ürün Ekleme metodu
        public static int BLLUrunEkle(EntityUrun ent)
        {
            if (!string.IsNullOrEmpty(ent.UrunAd) && !(ent.UrunFiyat < 0) && !(ent.UrunAdet < 0))
            {
                return DALUrun.DALUrunEkle(ent); // nesneyi gönder
            }
            else
                return -1; //hata kodu dönder
        }
    }
}
