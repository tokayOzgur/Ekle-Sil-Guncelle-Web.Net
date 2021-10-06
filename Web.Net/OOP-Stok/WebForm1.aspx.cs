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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<EntityDepartman> depList = BLLDepartman.BllDepartmanListele();
            Repeater1.DataSource = depList;
            Repeater1.DataBind();//veriler repeater üzerinde bağla
        }
    }
}