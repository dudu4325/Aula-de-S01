using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class CombatenteAliado
{
  private string nome;
  private string linhagem;
  private string funcao;
  
  public CombatenteAliado(string nome, string linhagem, string funcao){
    this.nome = nome;
    this.linhagem = linhagem;
    this.funcao = funcao;
  }
  
  public void ApresentarUnidade(){
    Console.WriteLine($"Meu nome é {nome}, sou um {linhagem} com orgulho e sirvo ao senhor como {funcao}, meu Rei.");
  }
  
}

public class Program
{
	public static void Main(string[] args)
	{
		CombatenteAliado p1 = new CombatenteAliado("Jorge", "Humano", "Capitão");
		CombatenteAliado p2 = new CombatenteAliado("Mindinho", "Anão", "Soldado");
		CombatenteAliado p3 = new CombatenteAliado("Dany", "Draconato", "General");
		
		p1.ApresentarUnidade();
		p2.ApresentarUnidade();
		p3.ApresentarUnidade();
	}
}
