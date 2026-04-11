using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class CriaturaPokemon 
{
  public string especie;
  
  public CriaturaPokemon(string especie){
    this.especie = especie;
  }
  
  public virtual void ExecutarMovimento(){
    Console.WriteLine($"O pokemon {especie} ataca!");
  }
}

public class TipoFogo : CriaturaPokemon
{
  public TipoFogo(string especie) : base(especie) {}
  
  public override void ExecutarMovimento(){
    Console.WriteLine($"{especie} lança uma rajada de chamas.");
  }
}

public class TipoAgua : CriaturaPokemon
{
  public TipoAgua(string especie) : base(especie) {
    
  }
  
  public override void ExecutarMovimento(){
    Console.WriteLine($"{especie} dispara uma bolha de água.");
  }
}


public class Program
{
	public static void Main(string[] args)
	{
		List<CriaturaPokemon> pokemons = new List<CriaturaPokemon>();
		
		TipoFogo p1 = new TipoFogo("Scorbunny");
		TipoAgua p2 = new TipoAgua("Greninja");
		
		pokemons.Add(p1);
		pokemons.Add(p2);
		
		foreach (var pokemon in pokemons){
		  pokemon.ExecutarMovimento();
		}
	}
}
