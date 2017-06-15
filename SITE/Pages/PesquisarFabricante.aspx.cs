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
    public partial class PesquisarFabricante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlFabricante.Visible = false;
        }
        //metodo pesquisar fabricante
        protected void btnPesquisarFabricante(object sender, EventArgs e)
        {
            try
            {
                int Id = Convert.ToInt32(txtID.Text);

                FabricanteDAL fabricanteDAL = new FabricanteDAL();

                //GetSetFabricante fabricante = fabricanteDAL.Pesquisar(Id);
                GetSetFabricante fabricante = new GetSetFabricante();

                fabricante = fabricanteDAL.Pesquisar(Id);

                if (fabricante != null)
                {
                    pnlFabricante.Visible = true;

                    txtNomeFabricante.Text = fabricante.NomeFabricante;
                    txtID.Enabled = false;

                    lblMensagem.Text = string.Empty;
                }
                else
                {
                    pnlFabricante.Visible = false;
                    lblMensagem.Text = "Fabricante não existe";
                    txtID.Text = string.Empty;
                }

            }
            catch (Exception ex)
            {

                lblMensagem.Text = "Erro ao pesquisar fabricante (Erro) " + ex.Message;
            }

        }

        protected void btnAtualizarFabricante(object sender, EventArgs e)
        {
            try
            {
                GetSetFabricante fabricante = new GetSetFabricante();

                fabricante.IdFabricante = Convert.ToInt32(txtID.Text);
                fabricante.NomeFabricante = Convert.ToString(txtNomeFabricante.Text);

                FabricanteDAL fabricanteDAL = new FabricanteDAL();

                fabricanteDAL.Atualizar(fabricante);

                lblMensagem.Text = "Fabricante atualizado com sucesso";
                txtID.Text = string.Empty;
                txtID.Enabled = true;
                
            }
            catch (Exception ex)
            {

                lblMensagem.Text = "Erro ao atualizar fabricante (Erro) " + ex.Message;
            }


        }

        protected void btnDeletarFabricante(object sender, EventArgs e)
        {
            try
            {
                int Id = Convert.ToInt32(txtID.Text);

                FabricanteDAL fabricanteDAL = new FabricanteDAL();

                fabricanteDAL.Deletar(Id);

                txtID.Text = string.Empty;
                txtID.Enabled = true;
                txtNomeFabricante.Text = string.Empty;

                lblMensagem.Text = "Fabricante excluído com sucesso";
            }
            catch (Exception ex)
            {

                lblMensagem.Text = "Erro ao excluir o fabricante (Erro) " + ex.Message;
            }
        }

        protected void btnLimparFabricante(object sender, EventArgs e)
        {
            txtID.Enabled = true;
            txtID.Text = string.Empty;
            txtNomeFabricante.Text = string.Empty;
            txtID.Focus();
        }
    }
}