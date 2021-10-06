using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesLogicLayer
{
    public class BLLPersonel
    {
        //Personel Listeleme Metodu
        public static List<EntityPersonel> BLLPerList()
        {
            return DALPersonel.PersonelListesi();
        }
        //Personel Ekleme Metodu
        public static int BLLPersonelEkle(EntityPersonel ent)
        {
            if (!string.IsNullOrEmpty(ent.PerAd) && !string.IsNullOrEmpty(ent.PerSoyad) && !string.IsNullOrEmpty(ent.PerSemt) && ent.PerDepartman > 0 && ent.PerMaas > 0)
            {
                return DALPersonel.DALPersonelEkle(ent);
            }
            else
                return -1;  
        }
    }
}
