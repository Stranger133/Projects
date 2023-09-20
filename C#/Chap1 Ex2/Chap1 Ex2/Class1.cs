using System;


public class NombreComplexe
{
    private int a, b;

    public NombreComplexe()
    {
        a = 0;
        b = 0;
    }
	public NombreComplexe(int a, int b)
	{
        this.a = a;
        this.b = b;
	}

    public void setA(int a)
    {
        this.a = a;
    }

    public void setB(int b)
    {
        this.b = b;
    }

    public int getA() {
        return a;
    }
    public int getB()
    {
        return b;
    }

    public NombreComplexe add(NombreComplexe nbr)
    {
        NombreComplexe comp = new NombreComplexe(this.a + nbr.a, this.b + nbr.b);
        return comp;
    }
    public NombreComplexe sub(NombreComplexe nbr)
    {
        NombreComplexe comp = new NombreComplexe(this.a - nbr.a, this.b - nbr.b);
        return comp;
    }
    public NombreComplexe mult(NombreComplexe nbr)
    {
        NombreComplexe comp = new NombreComplexe(this.a*nbr.a - this.b*nbr.b, this.a*nbr.b + this.b*nbr.a);
        return comp;
    }

    public void afficher()
    {
        Console.WriteLine(this.a + "+" + this.b + "i");
    }
}
