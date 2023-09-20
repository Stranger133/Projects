using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ExCSharp
{
    class Ex1
    {
        static void main(string[] args)
        {
            double a, b;
            Console.WriteLine("Donner a: ");
            String str1 = Console.ReadLine();

            Console.WriteLine("Donner b: ");
            String str2 = Console.ReadLine();

            if (double.TryParse(str1, out a) && double.TryParse(str2, out b))
            {
                Console.WriteLine("x  = " + ((-b) / a).ToString());
            }
            Console.ReadKey();
        }
    }
}
