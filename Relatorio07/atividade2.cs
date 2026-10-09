using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; private set; }
    public int Nivel { get; private set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
        Console.WriteLine($"[Pokemon] {Especie} de nível {Nivel} foi criado.");
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} ataca com um golpe genérico");
    }
}
public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
        //this.Especie = especie;
        //this.Nivel = nivel;
    }

    public override void Atacar()
    {
        Console.WriteLine($"{Especie} usa um golpe do tipo Planta!");
    }
}
public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
        //this.Especie = especie;
        //this.Nivel = nivel;
    }

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"{Especie} solta uma descarga elétrica!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        List<Pokemon> pokemons = new List<Pokemon>
        {
            new TipoPlanta("Charmander", 5),
            new TipoEletrico("Pikachu", 10),
            new Pokemon("Charmander", 8)
        };

        foreach (var pokemon in pokemons)
        {
            pokemon.Atacar();
        }
    }
}