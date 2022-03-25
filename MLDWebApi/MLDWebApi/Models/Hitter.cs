using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MLDWebApi.Models
{
  public class Hitter
  {
    public string PlayerName { get; set; }
    public int Age { get; set; }
    public int Salary { get; set; }
    public int Contract { get; set; }
    public double FantasyPoints { get; set; }
    public double PPG { get; set; }

    public int[] stats { get; set; }

  }
}
