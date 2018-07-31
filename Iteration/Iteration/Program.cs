using System;
using System.Collections.Generic;



class Program
{
    static void Main(string[] args)
    {
        //string[] names = { "John", "James", "Mary", "Mike", "Gary" };
        //Console.WriteLine("Enter some text ");
        //string text = Console.ReadLine();
        //for (int i = 0; i < names.Length; i++) {
        //    names[i] = text + names[i];
        //    Console.WriteLine(names[i]);
        //};

        //int j = 0;
        //while (j == 0) {
        //    Console.WriteLine("This goes on forever!")
        //}

        //int j = 0;
        //do {
        //    Console.WriteLine("This will stop after ten");
        //    j++;
        //}
        //while (j <= 10);
       
        //string[] uniqueItems = { "One", "of", "a kind", "items", "here", "no repeat" };
        //Console.WriteLine("Which item are you searching for ?");
        //string item = Console.ReadLine();
        //j = 0;
        //bool match = false;
        //while (j < uniqueItems.Length && !match)
        //{
        //    match = (uniqueItems[j] == item);
        //    if (match)
        //    {
        //        Console.WriteLine("That is item number: " + j);
        //    }
            
        //    j++;
        //}
        //if (!match) {
        //    Console.WriteLine("That item is not on the list.");
        //}

        List<string> items = new List<string>() {"First","Repeat","Third","Fourth","Repeat", "Sixth","Repeat"};
        List<string> myList = new List<string>();
        List<string> repeats = new List<string>();

        foreach (string item in items)
        {
            if (!myList.Contains(item))
            {
                myList.Add(item);
                Console.WriteLine(item);
            }
            else
            {
                repeats.Add(item);
                Console.WriteLine(item + " appears more than once on this list");
            }
            
           
        }
        
        Console.ReadLine();

    }
  
   
 }

