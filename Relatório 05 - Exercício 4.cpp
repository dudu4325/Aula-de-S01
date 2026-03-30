#include <iostream>
using namespace std;

int main() {
  int sala[5][5];
  int opcao, f, c;
  int ocupados, vazios = 0;
  
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 5; j++){
      sala[i][j] = 0;
    }
  }
  
  do {
    cout << "1. Reservar assento" << endl << "2. Ver mapa da sala" << endl << "3. Sair" << endl;
    
    cin >> opcao;
    
    switch(opcao) {
      case 1:
        cout << "Diga com fileira e coluna deseja reservar(0-4)." << endl;
        
        cin >> f;
        cin >> c;
        
        if(sala[f][c] == 0){
          sala[f][c] = 1;
          cout << "Sucesso" << endl;
        }
        else{
          cout << "Erro: Assento ocupado!" << endl;
        }
        
        break;
      case 2:
        for(int i = 0; i < 5; i++){
          for(int j = 0; j < 5; j++){
            cout << "[" << sala[i][j] << "] ";
          }
          cout << endl;
        }
        
        break;
    }
    
  } while(opcao != 3);
  
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 5; j++){
      if(sala[i][j] == 0){
        vazios++;
      }
      else{
        ocupados++;
      }
    }
  }
  
  cout << "Assentos ocupados: " << ocupados << endl << "Assentos vazios: " << vazios << endl;
  
  return 0;
}