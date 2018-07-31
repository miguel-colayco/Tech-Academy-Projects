using System;
using System.Collections.Generic;



    class Program
    {

        
        static void Main(string[] args)
        {
        List<int> numbers = new List<int>() {12,10,6,8,14,18};
        try
        {
            
            Console.WriteLine("Pick a number.");
            int divideBy = Convert.ToInt32(Console.ReadLine());
            foreach (int number in numbers) {
                int quotient = number / divideBy;
                Console.WriteLine(quotient);
            }

        }
        catch (FormatException )
        {
            Console.WriteLine("Please type a whole number ");
            return;
        }
        catch (DivideByZeroException )
        {
            Console.WriteLine("Please don't divide by zero.");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        finally
        {
            Console.ReadLine();
        }
        Console.ReadLine();
        }
    }

