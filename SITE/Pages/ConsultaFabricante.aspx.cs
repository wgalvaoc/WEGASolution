using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

namespace SITE.Pages
{
    public partial class ConsultaFabricante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                FabricanteDAL fabricante = new FabricanteDAL();

                gridFabricante.DataSource = fabricante.Listar();//Popupar o data gridview

                gridFabricante.DataBind();//Exibir o conteudo do grid.
            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }

        protected void gridFabricante_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridFabricante.PageIndex = e.NewPageIndex;
            gridFabricante.DataBind();

        }
    }
}