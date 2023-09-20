using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ExCSharp
{
    class NombreComplexe
    {
        public double a, b;
        public NombreComplexe(double a, double b)
        {
            this.a = a;
            this.b = b;
        }
        public NombreComplexe()
        {
            a = 0;
            b = 0;
        }
        public void setA(double a)
        {
            this.a = a;
        }
        public void setB(double b)
        {
            this.b = b;
        }
        public double getA()
        {
            return a;
        }
        public double getB()
        {
            return b;
        }

        public NombreComplexe add(NombreComplexe n)
        {
            double a = this.a + n.a;
            double b = this.b + n.b;
            return new NombreComplexe(a, b);
        }

        public NombreComplexe sub(NombreComplexe n)
        {
            return new NombreComplexe(this.a - n.a, this.b - n.b);
        }

        public NombreComplexe mult(NombreComplexe n)
        {
            return new NombreComplexe((this.a * n.a) - (this.b * n.b), (this.a * n.b) + (this.b * n.a));
        }
        public string ToString()
        {
            return this.a + " + i." + this.b;
        }
        static void Main(string[] args)
        {
            NombreComplexe n = new NombreComplexe(5, 6);
            NombreComplexe now = n.add(new NombreComplexe(5, 6));
            Console.WriteLine(now.ToString());
            Console.ReadKey();
        }
    }
}
