using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntitySatis
    {
        public int SatisId { get; set; } //proc'tan gelecek değer
        public int SatisUrun { get; set; }
        public int SatisPersonel { get; set; }
        public decimal SatisTutar { get; set; }//proc'tan gelecek değer
        public int SatisMusteri { get; set; }


        public string UrunAd { get; set; }//proc'tan gelecek değer
        public string PerAdSoyad { get; set; }//proc'tan gelecek değer
        public string MusteriAdSoyad { get; set; }//proc'tan gelecek değer
    }
}
