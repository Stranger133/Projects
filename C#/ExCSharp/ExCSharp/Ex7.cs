using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ExCSharp
{
    class Ex7
    {
        public static int sum(int n)
        {
            int sum=0;
            string str = n.ToString();
            int size = str.Length;
            for (int i = 0; i < size; i++)
            {
                sum += int.Parse(str[i].ToString());
            }
            return sum;
        }
        static void main(string[] args)
        {
            Console.WriteLine("Sum of what:");
            int n = int.Parse(Console.ReadLine());
            Console.WriteLine("Sum = " + sum(n).ToString());

            Console.ReadKey();
        }
    }
}
