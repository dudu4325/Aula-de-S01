using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class ReliquiaMagica 
{
  public string NomeItem;
  
  public ReliquiaMagica(string NomeItem){
    this.NomeItem = NomeItem;
  }
  
}

public class BauDeReliquias
{
  private List<ReliquiaMagica> _bau; 
  
  public BauDeReliquias(){
    _bau = new List<ReliquiaMagica>();
  }
  
  public void GuardarItem(ReliquiaMagica item){
    _bau.Add(item);
  }
  
  public void ListarReliquias(){
    Console.WriteLine("Reliquias no bau: ");
    foreach(var item in _bau){
      Console.WriteLine(item.NomeItem);
    }
  }
}

public class ItemDeAcampamento
{
  public string nome;
  
  public ItemDeAcampamento(string nome){
    this.nome = nome;
  }
}

public class Maga
{
  private string nome;
  private BauDeReliquias bau;
  private List<ItemDeAcampamento> _itens;
  
  public Maga(string nome, List<ItemDeAcampamento> itens){
    this.nome = nome;
    bau = new BauDeReliquias();
    _itens = itens;
  }
  
  public void AdicionarReliquia(string nome){
    bau.GuardarItem(new ReliquiaMagica(nome));
  }
  
  public void ListarItensAcampamento(){
    Console.WriteLine("Itens de acampamento: ");
    foreach (var item in _itens){
      Console.WriteLine(item.nome);
    }
  }
  
  public void ListarReliquias(){
    bau.ListarReliquias();
  }
}

public class Program
{
	public static void Main(string[] args)
	{
		ItemDeAcampamento i1 = new ItemDeAcampamento("Saco de dormir");
		ItemDeAcampamento i2 = new ItemDeAcampamento("Tenda");
		
		List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>();
		
		itens.Add(i1);
		itens.Add(i2);
		
		Maga maga = new Maga("Frieren", itens);
		
		
		maga.AdicionarReliquia("Anel de Prata");
		maga.AdicionarReliquia("Grimório antigo");
		
		maga.ListarItensAcampamento();
		Console.WriteLine();
		maga.ListarReliquias();
	}
}




