using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using System.Data.SqlClient;
using System.Data;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : ControllerBase
    {
        /*
         * usando para fazer a injecao de dependencia
         * do appsetting.json
         */
        private readonly IConfiguration _configuration;

        public DepartmentController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        /*
         * Metodo para pegar todas as informacoes da Table department
         */
        [HttpGet]
        public JsonResult Get()
        {
            string query = @"
                    select IdDepto, NomeDepto, Gerente, Divisao, Local from dbo.Departamento";
            DataTable table = new DataTable();
            string sqlDataSource = _configuration.GetConnectionString("EmployeeAppCon");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);

                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult(table);
        }

        /*
         * Metodo para insert na table
         */
        [HttpPost]
        public JsonResult Post(Department dep)
        {
            string query = @"
                    insert into dbo.Departamento values 
                    ('" + dep.NomeDepto+@"'
                    ,'"+dep.Gerente+@"'
                    ,'"+dep.Divisao+@"'
                    ,'"+dep.Local+@"')
                    ";
            DataTable table = new DataTable();
            string sqlDataSource = _configuration.GetConnectionString("EmployeeAppCon");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);

                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Added Sucessfully");
        }

        /*
         * metodo para dar um 
         * update no BD
         */
        [HttpPut]
        public JsonResult Put(Department dep)
        {
            string query = @"
                    update dbo.Departamento set NomeDepto = '"+dep.NomeDepto+ @"'
                    ,Gerente = '" + dep.Gerente + @"'
                    ,Divisao = '" + dep.Divisao + @"'
                    ,Local = '" + dep.Local + @"'
                    where IdDepto = " + dep.IdDepto + @";  
                    ";
            DataTable table = new DataTable();
            string sqlDataSource = _configuration.GetConnectionString("EmployeeAppCon");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);

                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Updated Sucessfully");
        }

        /*
         * metodo para deletar pelo Id
         */
        [HttpDelete("{id}")]
        public JsonResult Delete(int id)
        {
            string query = @"
                    delete from dbo.Departamento
                    where IdDepto = " + id + @";  
                    ";
            DataTable table = new DataTable();
            string sqlDataSource = _configuration.GetConnectionString("EmployeeAppCon");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(sqlDataSource))
            {
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);

                    myReader.Close();
                    myCon.Close();
                }
            }
            return new JsonResult("Deleted Sucessfully");
        }
    }
}
