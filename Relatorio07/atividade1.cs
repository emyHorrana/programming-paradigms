using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;
public class CombatenteDeGondor{
    // todo: ENCAPSULAMENTO
    // { get; set; } é a forma do C# de expor o atributo de forma controlada
    // get = pode ler, set = pode alterar
    public string nome { get; private set; }
    public string povo { get; private set; }
    public string posto { get; private set; }

    public string armamento { get; private set; } = "Desarmado";

    // todo: CONSTRUTOR
    // roda automaticamente quando o objeto é criado
    public CombatenteDeGondor(string nome, string povo, string posto, string armamento = "Desarmado")
    {
        this.nome = nome;
        this.povo = povo;
        this.posto = posto;
        this.armamento = armamento;
        Console.WriteLine($"[CombatenteDeGondor] {nome} do povo {povo} e posto {posto} foi criado.");
    }
    public void Equipar(string arma)
    {
        this.armamento = arma;
        Console.WriteLine($"[CombatenteDeGondor] {nome} foi equipado com {arma}.");
    }
    public void ApresentarUnidade()
    {
        Console.WriteLine($"\n--- {nome} ---");
        Console.WriteLine($"Povo: {povo}");
        Console.WriteLine($"Posto: {posto}");
        if (armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        CombatenteDeGondor combatente1 = new CombatenteDeGondor("A", "Gondor", "Capitão");
        CombatenteDeGondor combatente2 = new CombatenteDeGondor("B", "Gondor", "Guerreiro");
        CombatenteDeGondor combatente3 = new CombatenteDeGondor("C", "Gondor", "Guerreiro");

        combatente1.Equipar("Espada");
        combatente2.Equipar("Escudo");

        combatente1.ApresentarUnidade();
        combatente2.ApresentarUnidade();
        combatente3.ApresentarUnidade();

        //Não dá para alterar o posto na main, pois a propriedade Posto tem private set
        // combatente1.posto = "Rei"; s
    }
}