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
    public partial class DepartmanEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityDepartman ent = new EntityDepartman();//yeni nesne üretttik 
            ent.DepAd = TextBox1.Text; //textbox1 den gelen değeri aldık
            BLLDepartman.BLLDepEkle(ent);//bu değeri BLL'e katmanına gönder
        }
    }
}