using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
using System.Data.SqlClient;

namespace SITE.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarFabricante(object sender, EventArgs e)
        {
            try
            {
                



                GetSetFabricante fabricanteModel = new GetSetFabricante();

                fabricanteModel.NomeFabricante = txtNomeFabricante.Text;

                FabricanteDAL fabricanteDAL = new FabricanteDAL();

                fabricanteDAL.Gravar(fabricanteModel);

                lblMensagem.Text = "Fabricante " + fabricanteModel.NomeFabricante + " cadastrado com sucesso." ;
                txtNomeFabricante.Text = string.Empty;
            }
            catch (Exception ex)
            {

                lblMensagem.Text = "Erro ao gravar fabricante (Erro). " + ex.Message;
            }
        }
    }
}