using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShippingPackage
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Package Express. Please follow the instructions below.");
            Console.WriteLine("What is the Package Weight ?");
            decimal weight = Convert.ToDecimal(Console.ReadLine());
            if (weight > 50)
            {
                Console.WriteLine("Package too heavy to be shipped via Package Express.  Have a good day");
                Console.ReadLine();
            }
            else {
                Console.WriteLine("What is the width ?");
                decimal width = Convert.ToDecimal(Console.ReadLine());
                Console.WriteLine("What is the height ?");
                decimal height = Convert.ToDecimal(Console.ReadLine());
                Console.WriteLine("What is the length ?");
                decimal length = Convert.ToDecimal(Console.ReadLine());
                decimal total = width + height + length;
                if (total > 50)
                {
                    Console.WriteLine("Package too big to be shipped via Package Express ");
                    Console.ReadLine();
                }
                else {
                    decimal quote = total * weight / 100;
                    Console.WriteLine("Your estimated total for shipping this package is: $" + quote);
                    Console.ReadLine();
                }


            }
        }
    }
}
