using System;
using System.Collections.Generic;



    class Program
{
        static void Main()
        {
        string[] stringArray = {"Hello","World","John","Mike","Joe" };
        int[] intArray = {3,13,23,12,90,43,30};
        int limit = stringArray.Length - 1;
        Console.WriteLine("Select an item between 0 and " + limit);
        int index = Convert.ToInt32(Console.ReadLine());
        if (index > limit)
        {
            Console.WriteLine("Sorry no such item");
        }
        else
        {
            Console.WriteLine(stringArray[index]);
          
        }
        limit = intArray.Length - 1;
        Console.WriteLine("Select an item between 0 and " + limit);
        index = Convert.ToInt32(Console.ReadLine());        
        if (index > limit)
        {
            Console.WriteLine("Sorry no such item");
        }
        else
        {
            Console.WriteLine(intArray[index]);
        }
       

       
        List<string> StringList = new List<string>();
        StringList.Add("Hello");
        StringList.Add("Mike");
        StringList.Add("John");
        StringList.Add("Jesse");
        Console.WriteLine("Select an item between 0 and 3");
        index = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine(StringList[index]);
        Console.ReadLine();
    }
}
