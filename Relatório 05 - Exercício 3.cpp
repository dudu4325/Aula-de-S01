#include <iostream>
using namespace std;

int main() {
  int opcao;
  float saldo;
  float deposito;
  float saque;
  
  
  cout << "Qual seu saldo inicial?" << endl;
  cin >> saldo;
  
  
  do {
    cout << "1. Ver Saldo" << endl << "2. Depositar" << endl << "3. Sacar" << endl << "4. Sair " << endl;
    
    cin >> opcao;
    
    switch(opcao){
      case 1:
        cout << "Seu saldo é " << saldo << endl;
        break;
      case 2:
        cout << "Quanto você irá depositar?" << endl;
        cin >> deposito;
        
        if (deposito > 0){
          saldo += deposito;
          
          cout << "Deposito realizado" << endl;
        }
        else{
          cout << "Deposito inválido" << endl;
        }
        break;
      case 3:
        cout << "Quanto você irá sacar?" << endl;
        cin >> saque;
        
        if (saque < saldo) {
          saldo -= saque;
          
          cout << "Saque realizado" << endl;
        }
        else{
          cout << "Saldo insuficiente" << endl;
        }
        break;
    }
    
  } while (opcao != 4);
  
  return 0;
}