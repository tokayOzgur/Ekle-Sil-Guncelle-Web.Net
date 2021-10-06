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
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityUrun ent = new EntityUrun();
            ent.UrunAd = TextBox1.Text;
            ent.UrunAdet = TextBox2.Text == "" ? 0 : Convert.ToInt32(TextBox2.Text);
            ent.UrunFiyat = TextBox3.Text == "" ? 0 : Convert.ToDecimal(TextBox3.Text);

            int kontrol = BLLUrun.BLLUrunEkle(ent); //işlemin kontrolüne göre kullanıcıya bilgi verme
            if (kontrol == -1)
            {
                //ürün ekleme işlemi hatalıysa
                //kullanıcıya gösterilecek mesaj
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kayıt Başarısız. Lütfen tüm boş alanları eksiksiz ve doğru şekilde doldurunuz.')", true);
            }
            else
            {
                //ürün ekleme işlemi başarılıysa
                //kullanıcıya gösterilecek mesaj
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kayıt Başarılı. ')", true);

                //ürün ekleme sonrasında kullanıcıyı ürünler sayfasına yönlendir
                Response.Redirect("Urunler.aspx");
            }
        }
    }
}