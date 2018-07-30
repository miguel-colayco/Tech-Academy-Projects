using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strings
{
    class Program
    {
        static void Main(string[] args)
        {
            string first = "Hi ";
            string second = "My name is ";
            string third = "Mike";
            string together =  first + second + third;
            Console.WriteLine(together);
            Console.WriteLine("Upper Case: " + together.ToUpper());
            StringBuilder paragraph = new StringBuilder();

                string sentence = Console.ReadLine();
                paragraph.Append(sentence);
           
            Console.WriteLine(paragraph);
            Console.ReadLine();
        }
    }
}
