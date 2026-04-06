#include <iostream>
#include <string>
using namespace std;

class Robo {

protected:
  string modelo;
  int versao;
  float potenciaLaser;
  int integridade;
  
  
public:
  Robo (string m, int v, float pL, int in) : modelo(m), versao(v), potenciaLaser(pL), integridade(in) {}
    
  virtual void disparar(Robo &alvo){
    if (potenciaLaser < alvo.integridade){
      cout << modelo << " atirou em " << alvo.modelo << ", que perdeu " << potenciaLaser << " de integridade." << endl << endl;
      alvo.integridade -= potenciaLaser;
    }
    
    if (alvo.integridade < 0){
      alvo.integridade = 0;
    }
  }
  
  void exibirStatus() {
    cout << "Modelo: " << modelo << endl;
    cout << "Versão: " << versao << endl;
    cout << "Potência do Laser: " << potenciaLaser << endl;
    cout << "Integridade: " << integridade << endl << endl;
  }
  
};

int main() 
{
    Robo c1("destruidor", 2, 6.0, 5);
    Robo c2("saco de pancada", 4, 1, 15);
    
    c1.exibirStatus();
    c2.exibirStatus();
    
    c1.disparar(c2);
    
    c1.exibirStatus();
    c2.exibirStatus();
    
    return 0;
}