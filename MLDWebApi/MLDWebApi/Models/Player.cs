using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MLDWebApi.Models
{
  public class Player
  {
    public int PlayerId { get; set; }
    public string PlayerName { get; set; }
    public string Position { get; set; }
    public int Age { get; set; }
    public int Salary { get; set; }
    public int Contract { get; set; }
    public double FantasyPoints { get; set; }
    public double PPG { get; set; }

    public double[] stats { get; set; }
  }
}
