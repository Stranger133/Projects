using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ExCSharp
{
    class Ex5
    {
        static void main(String[] args)
        {
            Console.Write("Give String: ");
            String str = Console.ReadLine();
            char c = 'a';
            int n = 0;
            for (int i = 0; i < str.Length; i++)
            {
                if (c == str[i])
                {
                    n++;
                }
            }
            Console.WriteLine("n = " + n.ToString());
            Console.ReadKey();
        }
    }
}
