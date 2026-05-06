class Pokemon {
  #vida;

  constructor(nome, tipo, vida){
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vida;
  }

  getVida(){
    return this.#vida;
  }

  atacar(){
    console.log(`${this.nome} atacou de forma genérica!`);
  }

  receberDano(dano){
    this.#vida -= dano;
      if (this.#vida < 0) {
        this.#vida = 0;
      }
  }
}

class Pikachu extends Pokemon {
  constructor(){
    super("Pikachu", "Elétrico", 100);
  }

  atacar(){
    console.log("Pikachu usou Choque do Trovão!");
  }
}

class Charizard extends Pokemon {
  constructor(){
    super("Charizard", "Fogo/Voador", 150);
  }

  atacar() {
    console.log("Charizard usou Lança-Chamas!");
  }
}

const pikachu = new Pikachu();
const charizard = new Charizard();

pikachu.atacar();
charizard.atacar();

console.log(`Vida do Pikachu: ${pikachu.getVida()}`);
pikachu.receberDano(30);
console.log(`Vida do Pikachu: ${pikachu.getVida()}`);

