using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"Feitiço favorito: {FeiticoFavorito}");
    }
}
public class Companheiro
{
    public string Nome { get; private set; }
    public string Funcao { get; private set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"Companheiro: {Nome}, Função: {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; private set; }
    private Grimorio grimorio;
    private List<Companheiro> companheiros;

    public Maga(string nome)
    {
        this.Nome = nome;
        this.grimorio = new Grimorio(); // Composição: o Grimório é criado dentro da Maga
        this.companheiros = new List<Companheiro>();
    }

    public void Recrutar(Companheiro c)
    {
        companheiros.Add(c); // Agregação: a Maga pode recrutar companheiros existentes
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"Maga: {Nome}");
        Console.WriteLine("Companheiros:");
        foreach (var c in companheiros)
        {
            c.Apresentar();
        }
    }

    public void AbrirGrimorio()
    {
        grimorio.Abrir();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Companheiro companheiro1 = new Companheiro("Lucas", "Curandeiro");
        Companheiro companheiro2 = new Companheiro("Pedro", "Arqueiro");

        Maga frieren = new Maga("Marta");
        frieren.Recrutar(companheiro1);
        frieren.Recrutar(companheiro2);

        frieren.grimorio.FeiticoFavorito = "Bola de Fogo"; 

        frieren.MostrarGrupo();
        frieren.AbrirGrimorio();
    }
}