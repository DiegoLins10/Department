using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.Models
{
    public class Department
    {
        public int IdDepto { get; set; }
        public string NomeDepto { get; set; }
        public int Gerente { get; set; }
        public string Divisao { get; set; }
        public string Local { get; set; }
    }
}
