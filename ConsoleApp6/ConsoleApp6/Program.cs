using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp6
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("What is your age ?");
            string age = Console.ReadLine();
            int yearsOld = Convert.ToInt16(age);
            Console.WriteLine("Have you ever had a DUI ?");
            string dui = Console.ReadLine();
            Console.WriteLine("How many speeding tickets do you have ?");
            string tickets = Console.ReadLine();
            int numberTickets = Convert.ToInt16(tickets);
            bool qualified = yearsOld > 15 && dui != "yes" && numberTickets < 3;
            Console.WriteLine("Qualified ?");
            Console.WriteLine(qualified);
            Console.ReadLine(); 

        }
    }
}
