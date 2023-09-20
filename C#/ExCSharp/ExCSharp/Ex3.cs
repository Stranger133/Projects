using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ExCSharp
{
    class Ex3
    {
        static void main(string[] args)
        {
            int n;
            bool s;
            do
            {
                Console.WriteLine("Donner 0 < n < 7:");
                s = int.TryParse(Console.ReadLine(), out n);
            } while (!s || n <= 0 || n > 7);
            double sum = 1;
            for(int i = 2;i <= n; i++){
                sum += 1/(Math.Pow(i, 3));
            }
            Console.WriteLine("S = " + sum);

            Console.ReadKey();
        }
    }
}
