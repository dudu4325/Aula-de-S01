#include <iostream>
#include <string>
using namespace std;

class MembroInatel {
protected:
  string nomeCompleto;
  
public:
  MembroInatel(string n) : nomeCompleto(n) {}

  virtual void identificar(){
    cout << "Sou um membro da comunidade do Inatel: " << nomeCompleto << endl;
  }
  
  string getNome(){
    return nomeCompleto;
  }
  
  virtual ~MembroInatel() {}
};

class Coordenador : public MembroInatel{
protected:
  string departamento;
  
public:
  Coordenador(string n, string de) : MembroInatel(n), departamento(de) {}
  
  void identificar() override{
    cout << "Meu nome é " << getNome() << ", sou coordenador do departamento de " << departamento << " do Inatel" << endl;
  }
};

class Pesquisador : public MembroInatel{
protected:
  string laboratorio;
  
public:
  Pesquisador(string n, string la) : MembroInatel(n), laboratorio(la) {}
    
  void identificar() override{
    cout << "Meu nome é " << getNome() << ", e realizo pesquisas no laboratório " << laboratorio << " do Inatel" << endl;
  }
};

int main() 
{
  MembroInatel* c1 = new Coordenador("Renzo Paranaiba Mesquita", "computação");
  MembroInatel* p1 = new Pesquisador("Pedro Persona", "software");
  
  c1->identificar();
  p1->identificar();
  
  delete c1;
  delete p1;
  return 0;
}