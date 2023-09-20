using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Chap1_Ex
{
    class Program
    {
        public static int SumofDigits(int x) {
            int s = 0;
            while (x != 0)
            {
                s += x % 10;
                x /= 10;
            }
            return s;
        }
        static void Main(string[] args)
        {
            /*              Exercice 2
            Console.WriteLine("Donner n: ");
            int n = int.Parse(Console.ReadLine());
            double sum = 0;
            for (int i = 1; i <= n; i++) {
                sum += Math.Pow(i, 2);
                Console.WriteLine("Sum{0}: {1}",i ,sum);
            }
            Console.WriteLine("Final Sum: " + sum);
             */
            
            /*              Exercice 3
            int n = -1;
            while (n < 0 | n > 7) {
                Console.WriteLine("Donner n: ");
                n = int.Parse(Console.ReadLine());
            }
            double sum = 1;
            for (int i = 2; i <= n; i++)
            {
                Console.WriteLine("Sum{0}: {1}", i, sum);
                sum += 1 / Math.Pow(i, 3);
                
            }
            Console.WriteLine("Final Sum: " + sum);
            */

            /*              Exercice 4
            int[] array = new int[6];
            for (int i=0; i<=5; i++) {
                Console.WriteLine("Donne le {0}eme element: ", i+1);
                array[i] = int.Parse(Console.ReadLine());
            }
            int n, s = 0;
            Console.WriteLine("Donner n: ");
            n = int.Parse(Console.ReadLine());
            foreach (int j in array)
            {
                if (j == n)
                {
                    s++;
                }
            }
            Console.WriteLine("{0} a ete repetee {1} fois;", n, s);
            */

            /*              Exercice 5
            int s = 0;
            Console.WriteLine("Donner la chaine de char:");
            string str = Console.ReadLine();
            Console.WriteLine("Donner n: ");
            char n = Console.ReadKey().KeyChar;  //or string input = Console.ReadLine();
             *                                        char n = input[0];
            foreach (char j in str)
            {
                if (j == n) {
                    s++;
                }
            }
            Console.WriteLine("\n{0} a ete repetee {1} fois;", n, s);
            */

            /*              Exercice 6
            int n = 7;
            while (n > 6)
            {
                Console.WriteLine("Donner n:");
                n = int.Parse(Console.ReadLine());
            }
            int[] array = new int[n];
            for (int i = 0; i < n; i++)
            {
                Console.WriteLine("Donner le " + (i+1) + "eme element");
                array[i] = int.Parse(Console.ReadLine());
            }
            float s = 0;
            foreach (int j in array) {
                s += j;
            }
            float mean = s / array.Length;
            Console.WriteLine("Mean = {0}", mean);
            */

            /*              Exercice 7
            Console.WriteLine("Donner X: ");
            int x = 0;
            int s = SumofDigits(x = int.Parse(Console.ReadLine()));
            Console.WriteLine("the sum is :" + s);
            */
            
            /*              Exercice 8
            NombreComplexe x = new NombreComplexe(2, 9);
            NombreComplexe y = new NombreComplexe(3, 7);
            x.afficher();
            y.afficher();
            NombreComplexe z = x.add(y);
            z.afficher();
            NombreComplexe h = y.mult(z);
            h.afficher();
            */

            /*              Exercice 9
            Bateau B1 = new Bateau(140, 220, 120);
            B1.afficheBateau();

            Sous_marin S1 = new Sous_marin(123, 230, 120, 200);
            Sous_marin S2 = new Sous_marin(123, 230, 120, 220);

            S1.afficheMarin();
            S2.afficheMarin();

            Console.WriteLine(S1.compare(S2));

            Console.WriteLine(Bateau.getNb());
            */
            Console.ReadKey();
        }
    }
}
