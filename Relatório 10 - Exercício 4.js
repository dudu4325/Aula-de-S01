class Hunter {
  constructor(nome){
    this.nome = nome;
  }

  lutar(){
    console.log(`${this.nome} luta de forma genérica.`);
  }
}

class Gon extends Hunter {
  lutar() {
    console.log(`${this.nome} usa Jajanken!`);
  }
}

class Killua extends Hunter {
  lutar(){
    console.log(`${this.nome} usa Godspeed!`);
  }
}

class Kurapika extends Hunter{
  lutar(){
    console.log(`${this.nome} usa suas correntes!`);
  }
}

class TrupeFantasma {
  constructor(nome, membros){
    this.nome = nome;
    this.membros = membros; 
  }

  revelarMembros(){
    console.log(`${this.nome}:`);
    this.membros.forEach(m => {
      console.log(m);
    });
  }
}

const gon = new Gon("Gon");
const killua = new Killua("Killua");
const kurapika = new Kurapika("Kurapika");

gon.lutar();
killua.lutar();
kurapika.lutar();

const trupe = new TrupeFantasma("Trupe Fantasma", ["Chrollo","Hisoka","Feitan"]);

console.log();
trupe.revelarMembros();
