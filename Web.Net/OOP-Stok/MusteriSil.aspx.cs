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
    public partial class MusteriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["MusteriId"]);
            EntityMusteri ent = new EntityMusteri();
            ent.MusteriId = x;
            BLLMusteri.BLLMusteriSil(ent.MusteriId);
            Response.Redirect("Musteriler.aspx");
        }
    }
}