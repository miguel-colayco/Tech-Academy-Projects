using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathAndComparisonOperators
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Give me a number ");
          string num = Console.ReadLine();
            Int32 number = Convert.ToInt32(num);
            Console.WriteLine(number*50);
            Console.WriteLine("Give me a number ");
            string num2 = Console.ReadLine();
            Int32 number2 = Convert.ToInt32(num2);
            Console.WriteLine(number2 + 25);
            Console.WriteLine("Give me a number ");
            string num3 = Console.ReadLine();
            Double number3 = Convert.ToDouble(num3);
            Console.WriteLine(number3/12.5);
            Console.WriteLine("Give me a number ");
            string num4 = Console.ReadLine();
            Int32 number4 = Convert.ToInt32(num4);
            Console.WriteLine(number4>50);
            Console.WriteLine("Give me a number ");
            string num5 = Console.ReadLine();
            Int32 number5 = Convert.ToInt32(num5);
            Console.WriteLine(number5 % 7);
            Console.ReadLine();

        }
    }
}
