using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; //Biblioteca de acesso a SQL
using System.Data;

namespace DAL.Persistence
{
    public class Conexao
    {
        //Atributos
        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;

        //Metodo Abri conexao
        protected void AbriConexao()
        {
            try
            {
                //Caminho da conexao
                Con = new SqlConnection(@"Server=WGALVAO\SQLEXPRESS;Initial Catalog=Libra; Integrated Security=True");

                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        //Metodo Fechar conexao
        protected void FecharConexao()
        {
            try
            {
                if (Con.State == ConnectionState.Open)
                {
                    Con.Close();
                    Con.Dispose();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao conectar com o banco. (Erro): " + ex.Message);
            }
        }
    }
}
