using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class GetSetEquipamento
    {
        //Declaracao dos atributos
        public int IdEquipamento { get; set; }
        public int PatrimonioEquipamento { get; set; }
        public string Serie { get; set; }
        public string Fabricante { get; set; }
        public string Modelo { get; set; }

    }
}
