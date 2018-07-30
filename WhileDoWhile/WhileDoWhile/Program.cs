using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WhileDoWhile
{
    class Program
    {
        static void Main(string[] args)
        {
            //Int32 number = 0;
            // while (number < 10) {
            //     Console.WriteLine("Give me a number ");
            //     number = Convert.ToInt32(Console.ReadLine());
            //  }
            // Console.WriteLine("Greater than 10, I'm done! ");
            // Console.ReadLine();
            Int32 number = 20;
            do {
                Console.WriteLine("Give me a number ");
                number = Convert.ToInt32(Console.ReadLine());
            }
            while (number < 10 );
            Console.WriteLine("Greater than 10, I'm done! ");
            Console.ReadLine();
        }
    }
}
