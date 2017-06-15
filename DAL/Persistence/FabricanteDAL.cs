using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    public class FabricanteDAL : Conexao
    {
        //Metodo gravar dados no banco
        public void Gravar(GetSetFabricante fabricante)
        {
            try
            {
                AbriConexao();

                Cmd = new SqlCommand("INSERT INTO TbFabricante(NomeFabricante)VALUES(@Nome)", Con);
                Cmd.Parameters.AddWithValue("@Nome", fabricante.NomeFabricante);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao gravar fabricante. (Erro): " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
        //Metodo atualizar dados no banco
        public void Atualizar(GetSetFabricante fabricante)
        {
            try
            {
                AbriConexao();

                Cmd = new SqlCommand("UPDATE TbFabricante SET NomeFabricante=@Nome WHERE IdFabricante=@Id", Con);
                Cmd.Parameters.AddWithValue("@Nome", fabricante.NomeFabricante);
                Cmd.Parameters.AddWithValue("@Id", fabricante.IdFabricante);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao atualizar fabricante. (Erro): " + ex.Message.ToString());
            }
            finally
            {
                FecharConexao();
            }
        }
        //Metodo deletar dados do banco
        public void Deletar(int Id)
        {
            try
            {
                AbriConexao();
                Cmd = new SqlCommand("DELETE FROM TbFabricante WHERE IdFabricante=@Id", Con);
                Cmd.Parameters.AddWithValue("@Id", Id);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir fabricante. (Erro:) " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
        //Metodo pesquisar dados no banco
        public GetSetFabricante Pesquisar(int Id)
        {
            try
            {
                AbriConexao();
                Cmd = new SqlCommand("SELECT * FROM TbFabricante WHERE IdFabricante=@Id", Con);
                Cmd.Parameters.AddWithValue("@Id", Id);
                Dr = Cmd.ExecuteReader();//executa a leitura das informacoes na base

                GetSetFabricante fabricante = null;//Espaço vazio na memoria

                if (Dr.Read())
                {
                    fabricante = new GetSetFabricante();
                    fabricante.IdFabricante = Convert.ToInt32(Dr["IdFabricante"]);
                    fabricante.NomeFabricante = Convert.ToString(Dr["NomeFabricante"]);
                }
                return fabricante;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao pesquisar fabricante. (Erro:) " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
        //Metodo para listar fabricantes no banco
        public List<GetSetFabricante> Listar()
        {
            try
            {
                AbriConexao();
                Cmd = new SqlCommand("SELECT * FROM TbFabricante", Con);
                Dr = Cmd.ExecuteReader();

                List<GetSetFabricante> Lista = new List<GetSetFabricante>();//Lista vazia

                while (Dr.Read())
                {
                    GetSetFabricante lista = new GetSetFabricante();//Objeto "lista"

                    lista.IdFabricante = Convert.ToInt32(Dr["IdFabricante"]);
                    lista.NomeFabricante = Convert.ToString(Dr["NomeFabricante"]);
                    Lista.Add(lista);
                }
                return Lista;
     
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar fabricante. (Erro:) " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
