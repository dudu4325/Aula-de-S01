#include <iostream>
#include <string>
#include <vector>
using namespace std;

class MembroConselho {
protected:
  string nome;
  
public:
  MembroConselho(string n) : nome(n) {}
  
  virtual void saudar(){
    cout << "Um mebro do conselho faz uma reverência silenciosa." << endl;
  }
  
  virtual string getNome(){
    return nome;
  }
  
  virtual ~MembroConselho() {}
};

class Anao : public MembroConselho {
public:
  Anao(string n) : MembroConselho(n) {}
  
  void saudar() override {
    cout << "Pela força da montanha, eu sou "<< getNome() << " e honro nosso aço!"  << endl;
  }
};

class Orc : public MembroConselho {
public:
  Orc(string n) : MembroConselho(n) {}
  
  void saudar() override{
    cout << "Pelo sangue e glória, eu sou " << getNome() << " e trago a força de minha tribo!" << endl;
  }
};

class Draconato : public MembroConselho {
public:
  Draconato(string n) : MembroConselho(n) {}
  
  void saudar() override {
    cout << "Pelo sopro dos ancestrais, eu sou " << getNome() << " e falo em nome dos dragões!" << endl;
  }
};

int main() 
{
  vector<MembroConselho*> membros;
  
  membros.push_back(new Anao("Tokinho"));
  membros.push_back(new Orc("Brutos"));
  membros.push_back(new Draconato("Drag"));
  
  for(MembroConselho* m : membros){
    m->saudar();
  }
  
  for(MembroConselho* m : membros){
    delete m;
  }
  
  return 0;
}