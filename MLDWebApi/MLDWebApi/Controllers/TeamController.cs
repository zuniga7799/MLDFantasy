﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
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
  public class TeamController : ControllerBase
  {
    private readonly IConfiguration _configuration;

    public TeamController(IConfiguration configuration)
    {
      _configuration = configuration;
    }

    public JsonResult Get()
    {
      string query = @"
                select * from dbo.Teams";
      DataTable table = new DataTable();
      string sqlDataSource = _configuration.GetConnectionString("MLDAppCon");
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

    [Route("/api/[controller]/{teamId}")]
    public JsonResult GetPlayersForTeam(int teamId)
    {
      int Id = teamId;
      string query = @"
                select * from dbo.Players where TeamId = @Id";
      
      DataTable table = new DataTable();
      string sqlDataSource = _configuration.GetConnectionString("MLDAppCon");
      SqlDataReader myReader;
      using (SqlConnection myCon = new SqlConnection(sqlDataSource))
      {
        myCon.Open();
        using (SqlCommand myCommand = new SqlCommand(query, myCon))
        {
          myCommand.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
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
