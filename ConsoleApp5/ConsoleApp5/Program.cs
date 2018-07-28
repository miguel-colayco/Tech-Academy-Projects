using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

    class Program
    {
        static void Main(string[] args)
        {
        Console.WriteLine("Anonymous Income Comparison Program");
        Console.WriteLine("Person 1");
        Console.WriteLine("Hourly Rate? ");
        string hourRate1= Console.ReadLine();
        double payRate1 = Convert.ToDouble(hourRate1);
        Console.WriteLine("Hours worked per week? ");
        string hoursWorked1 = Console.ReadLine();
        double workedHours1 = Convert.ToDouble(hoursWorked1);
        double annualSalary1 = payRate1 * workedHours1 * 52;
        Console.WriteLine("Person 2");
        Console.WriteLine("Hourly Rate? ");
        string hourRate2 = Console.ReadLine();
        double payRate2 = Convert.ToDouble(hourRate2);
        Console.WriteLine("Hours worked per week? ");
        string hoursWorked2 = Console.ReadLine();
        double workedHours2 = Convert.ToDouble(hoursWorked2);
        double annualSalary2 = payRate2 * workedHours2 * 52;
        Console.WriteLine("Annual Salary of Person1: ");
        Console.WriteLine("$" + annualSalary1);
        Console.WriteLine("Annual Salary of Person2: ");
        Console.WriteLine("$" + annualSalary2);
        Console.WriteLine("Does Person 1 make more than Person 2? ");
        Console.WriteLine(annualSalary1 > annualSalary2);
        Console.ReadLine();
    }
    }
