using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class AbominacaoCosmica 
{
  public string nome;
  
  public AbominacaoCosmica(string nome){
    this.nome = nome;
  }
  
  public virtual void Manifestar(){
    
  }
  
}

public class Shoggoth : AbominacaoCosmica
{
  public Shoggoth(string nome) : base(nome) {}
  
  public override void Manifestar(){
    Console.WriteLine("A massa de protoplasma se arrasta borbulhando, moldando órgãos e olhos conforme avança.");
  }
}

public class CacadorAlado : AbominacaoCosmica
{
  public CacadorAlado(string nome) : base(nome) {}
  
  public override void Manifestar(){
    Console.WriteLine("A criatura bate suas asas membranosas, mergulhando do vácuo estelar em um voo silencioso.");
  }
}

public class Program
{
	public static void Main(string[] args)
	{
		List<AbominacaoCosmica> abominacoes = new List<AbominacaoCosmica>();
		
		Shoggoth c1 = new Shoggoth("Shoggoth");
		CacadorAlado c2 = new CacadorAlado("Caçador Alado");
		
		abominacoes.Add(c1);
		abominacoes.Add(c2);
		
		foreach (var criatura in abominacoes){
		  criatura.Manifestar();
		}
	}
}