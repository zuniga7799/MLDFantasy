using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using MLDWebApi.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace MLDWebApi.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class PlayerController : ControllerBase
  {
    private readonly IConfiguration _configuration;

    public PlayerController(IConfiguration configuration)
    {
      _configuration = configuration;
    }

    [HttpGet]
    public JsonResult Get()
    {
      string query = @"
                select * from dbo.Players";
      DataTable table = new DataTable();
      string sqlDataSource = _configuration.GetConnectionString("PlayersAppCon");
      SqlDataReader myReader;
      using(SqlConnection myCon=new SqlConnection(sqlDataSource))
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

    [HttpPost]
    public JsonResult Post(Player player)
    {
      string query = @"insert into dbo.Players values
                      ('Aaron Judge', 'RF', 29, 18, 2026, 2.96) ";
      DataTable table = new DataTable();
      string sqlDataSource = _configuration.GetConnectionString("PlayersAppCon");
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

      return new JsonResult("Added Successfully");
    }

    [HttpPut]
    public JsonResult Put(Player player)
    {
      string query = @"update dbo.Players set
                      Salary = '" + player.Salary + @"'
                      where PlayerId = " + player.PlayerId + @"'
                      ";
      DataTable table = new DataTable();
      string sqlDataSource = _configuration.GetConnectionString("PlayersAppCon");
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

      return new JsonResult("Updated Successfully");
    }
  }
}
