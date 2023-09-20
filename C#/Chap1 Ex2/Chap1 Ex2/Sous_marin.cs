using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Chap1_Ex 
{
    class Sous_marin : Bateau
    {
        public int prof;
        public Sous_marin(int lon, int larg, int v, int prof)
            : base(lon, larg, v)
        {
            this.prof = prof;
        }
        public void afficheMarin()
        {
            Console.WriteLine("Longeur: {0}\nLargeur: {1}\nVitesse: {2}\nNombre de Bateau: {3}\nProfondeur: {4}", this.lon, this.larg, this.v, nbBateau, this.prof);
        }
        public bool compare(Sous_marin s)
        {
            if (this.prof == s.prof)
            {
                return true;
            }
            return false;
        }
    }
}
