using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinesLogicLayer
{
    public class BLLSatis
    {
        // Satış Listeleme Metodu
        public static List<EntitySatis> BLLSatisList()
        {
            return DALSatis.DALSatisList();
        }
        //Satış Ekleme Metodu
        public static int BLLSatisEkle(EntitySatis ent)
        {
            if (ent.SatisUrun != 0 && ent.SatisMusteri != 0 && ent.SatisPersonel != 0 && ent.SatisTutar != 0)
            {
                return DALSatis.DALSatisEkle(ent);
            }
            else
                return -1;
        }
    }
}
