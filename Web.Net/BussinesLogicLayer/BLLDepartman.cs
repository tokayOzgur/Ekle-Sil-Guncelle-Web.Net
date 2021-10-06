using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesLogicLayer
{
    public class BLLDepartman
    {
        //Departman Listele
        public static List<EntityDepartman> BllDepartmanListele() // Burada herhangi bir şart koymadık. Basit bir listeleme kullandığımızdan dolayı.
        {
            return DALDepartman.DepListesi();
        }

        //Departman Ekle
        public static int BLLDepEkle(EntityDepartman ent)
        {
            if (!string.IsNullOrEmpty(ent.DepAd)) //eğer null veya boş değilse
            {
                return DALDepartman.DALDepEkle(ent);
            }
            return -1; //aksi durumda -1 'i döndür
        }
    }
}
