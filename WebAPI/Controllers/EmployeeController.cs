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
using System.IO;
using Microsoft.AspNetCore.Hosting;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        /*
         * Injecao de dependencia
         * pegando configuracoes do bd
         */
        private readonly IConfiguration _configuration;
        /*
         * Injecao de dependencia para colocar a foto no banco de dados
         */
        private readonly IWebHostEnvironment _env;

        public EmployeeController(IConfiguration configuration, IWebHostEnvironment env)
        {
            _configuration = configuration;
            _env = env;
        }

        /*
         * Metodo para pegar todas as informacoes da Table department
         */
        [HttpGet]
        public JsonResult Get()
        {
            string query = @"
                    select IdEmpregado, NomeEmpregado, IdDepto, Cargo, Salario, 
                    convert(varchar(10),DateOfJoining,120) as DateOfJoining,
                    PhotoFileName
                    from dbo.Empregado";
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
        public JsonResult Post(Employee emp)
        {
            string query = @"
                    insert into dbo.Empregado 
                    (NomeEmpregado, IdDepto, Cargo, Salario, DateOfJoining, PhotoFileName)
                    values 
                    (
                     '" + emp.NomeEmpregado + @"'
                     ,'" + emp.IdDepto + @"'
                     ,'" + emp.Cargo + @"'
                     ,'" + emp.Salario + @"'
                     ,'" + emp.DateOfJoining + @"'
                     ,'" + emp.PhotoFileName + @"'
                    )
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
        public JsonResult Put(Employee emp)
        {
                string query = @"
                    update dbo.Empregado set 
                    NomeEmpregado = '" + emp.NomeEmpregado + @"'
                    ,IdDepto = '" + emp.IdDepto + @"'
                    ,Cargo = '" + emp.Cargo + @"'
                    ,Salario = '" + emp.Salario + @"'
                    ,DateOfJoining = '" + emp.DateOfJoining + @"'
                    ,PhotoFileName = '" + emp.PhotoFileName + @"'  
                    where IdEmpregado = " + emp.IdEmpregado + @";  
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
                    delete from dbo.Empregado
                    where IdEmpregado = " + id + @";  
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

        /*
         * metodo para salvar a foto
         * no bando de dados
         */
        [Route("SaveFile")]
        [HttpPost]
        public JsonResult SaveFile()
        {
            try
            {
                var httpRequest = Request.Form;
                var postedFile = httpRequest.Files[0];
                string filename = postedFile.FileName;
                var physicalPath = _env.ContentRootPath + "/Photos/" + filename;

                using (var stream = new FileStream(physicalPath, FileMode.Create))
                {
                    postedFile.CopyTo(stream);
                }
                return new JsonResult(filename);
            }
            catch(Exception)
            {
                return new JsonResult("anonymous.png");
            }
        }

        /*
         * Metodo para pegar todos os departamentos
         */
        [Route("GetAllDepartmentNames")]
        public JsonResult GetAllDepartmentNames()
        {
            string query = @"
                    select IdDepto, NomeDepto from dbo.departamento             
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
            return new JsonResult(table);
        }
    }
}
