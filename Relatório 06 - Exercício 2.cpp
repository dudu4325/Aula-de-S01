#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
  string nome;
  int idade;
  
public:
  Pessoa(string n, int i) : nome(n), idade(i) {}
  
  string getNome(){
    return nome;
  }
  
  int getIdade(){
    return idade;
  }
};

class Protagonista : public Pessoa{
private:
  int nivel;
  
public:
  Protagonista(string n, int i, int ni) : Pessoa(n,i), nivel(ni) {}
  
  void exibirProta(){
    cout << getNome() << " é um adolescente de " << getIdade() << " anos e sua persona está nível " << nivel << endl;
  }

  virtual ~Protagonista() {}
};

class Personagem : public Pessoa{
private:
  int rank;
  
public:
  Personagem(string n, int i, int ra) : Pessoa(n,i), rank(ra) {}

  void exibirPerso(){
    cout << getNome() << " é um adolescente de " << getIdade() << " anos e seu relacionamento está rank " << rank <<  endl;
  }

  virtual ~Personagem() {}
};

int main() 
{
  Protagonista prota("Makoto", 17, 8);
  Personagem secun("Kenji", 16, 3);
    
  prota.exibirProta();
  secun.exibirPerso();

  delete prota;
  delete secun;
  
  return 0;
}
