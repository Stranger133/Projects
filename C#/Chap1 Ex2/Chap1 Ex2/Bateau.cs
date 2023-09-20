using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Chap1_Ex
{
    class Bateau
    {
        public int lon, larg, v;
        public static int nbBateau = 0;
        public Bateau(int lon, int larg, int v)
        {
            this.lon = lon;
            this.larg = larg;
            this.v = v;
            nbBateau++;
        }
        public Bateau()
        {
            new Bateau(0, 0, 0);
        }
        public Bateau(Bateau b)
        {
            new Bateau(b.lon, b.larg, b.v);
        }
        public static int getNb()
        {
            return nbBateau;
        }
        public void afficheBateau()
        {
            Console.WriteLine("Longeur: {0}\nLargeur: {1}\nVitesse: {2}\nNombre de Bateau: {3}", this.lon, this.larg, this.v, nbBateau);
        }
    }
}
