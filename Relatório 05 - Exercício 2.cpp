#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
  float produto = 1;
  for(int i = 0; i < tamanho; i++){
    produto = produto * arr[i];
  }
  return produto;
}

int main() {
  int T;
  float resultado;
  
  cin >> T;
  
  float lista[T];
  
  for(int i = 0; i < T; i++){
    cin >> lista[i];
  }
  
  resultado = multiplicaArray(lista, T);
  
  cout << resultado << endl;
  
  return 0;
}