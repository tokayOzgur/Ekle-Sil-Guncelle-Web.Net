using BussinesLogicLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OOP_Stok
{
    public partial class Musteriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<EntityMusteri> MusteriListesi = BLLMusteri.BLLMusteriListesi();
            Repeater1.DataSource = MusteriListesi;
            Repeater1.DataBind();
        }
    }
}