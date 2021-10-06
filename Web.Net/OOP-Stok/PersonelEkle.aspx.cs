using BussinesLogicLayer;
using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OOP_Stok
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from Departman", Baglanti.bgl);
                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataValueField = "DepId";
                DropDownList1.DataTextField = "DepAd";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityPersonel ent = new EntityPersonel();
            ent.PerAd = TextBox1.Text;
            ent.PerSoyad = TextBox2.Text;
            ent.PerDepartman = Convert.ToInt32(DropDownList1.SelectedValue);
            ent.PerMaas = Convert.ToDecimal(TextBox3.Text);
            ent.PerSemt = TextBox4.Text;
           
            BLLPersonel.BLLPersonelEkle(ent);
            Response.Redirect("Personeller.aspx");
        }
    }
}