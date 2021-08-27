using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.Models
{
    public class Employee
    {
        public int IdEmpregado { get; set; }
        public string NomeEmpregado { get; set; }
        public string IdDepto { get; set; }
        public string Cargo { get; set; }
        public string Tempo_Emp { get; set; }
        public double Salario { get; set; }
        public double Comissao { get; set; }
        public string DateOfJoining { get; set; }
        public string PhotoFileName { get; set; }
    }
}
