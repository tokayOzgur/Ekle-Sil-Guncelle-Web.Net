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
    public partial class MusteriGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["MusteriId"]);
            TextBox3.Text = x.ToString();//textbox3'e id değerini taşı 
            EntityMusteri ent = new EntityMusteri();
            if (Page.IsPostBack == false)
            {
                List<EntityMusteri> MusList = BLLMusteri.BLLMusteriGetir(x);
                TextBox1.Text = MusList[0].MusteriAd.ToString();
                TextBox2.Text = MusList[0].MusteriSoyad.ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityMusteri ent = new EntityMusteri();
            ent.MusteriAd = TextBox1.Text;
            ent.MusteriSoyad = TextBox2.Text;
            ent.MusteriId = Convert.ToInt32(TextBox3.Text);
            BLLMusteri.BLLMusteriGuncelle(ent);
            Response.Redirect("Musteriler.aspx");
        }
    }
}