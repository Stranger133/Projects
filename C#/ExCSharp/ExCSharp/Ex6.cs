using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ExCSharp
{
    class Ex6
    {
        static void main(String[] args)
        {
            int n;
            double m = 0.0;
            bool s;
            do
            {
                Console.Write("Donne n: ");
                s = int.TryParse(Console.ReadLine(), out n);
            } while (n <= 0 || n > 6 || !s);
            int[] tab = new int[n];
            int sum = 0;
            for (int i = 0; i < n; i++)
            {
                Console.WriteLine(string.Format("Give tab[{0}] :", i));
                tab[i] = int.Parse(Console.ReadLine());
            }
            for (int i = 0; i < n; i++)
            {
                sum += tab[i];
            }
            m = sum / n;
            Console.WriteLine("Mean = " + m.ToString());
            Console.ReadKey();
        }
    }
}
