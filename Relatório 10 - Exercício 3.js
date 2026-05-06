class Criatura {
  constructor(nome, perigo){
    this.nome = nome;
    this.perigo = perigo;
  }
}

class Diario {
  constructor(){
    this._criaturas = [];
  }

  registrarCriatura(criatura){
    this._criaturas.push(criatura);
  }

  listarCriaturas(){
    console.log("Criaturas Registradas:");
    this._criaturas.forEach(c => {
        console.log(`Nome: ${c.nome} | Perigo: ${c.perigo}`);
    });
    console.log();
  }
}

class Personagem {
  constructor(nome){
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens; 
  }

  listarFuncionarios(){
    console.log("Funcionários da Cabana do Mistério\:");
    this.personagens.forEach(p => {
        console.log(p.nome);
    });
  }
}

const diario = new Diario();

const c1 = new Criatura("Gnomo", "Baixo");
const c2 = new Criatura("Shapeshifter", "Alto");
const c3 = new Criatura("Bill Cipher", "Extremo");

diario.registrarCriatura(c1);
diario.registrarCriatura(c2);
diario.registrarCriatura(c3);

diario.listarCriaturas();

const p1 = new Personagem("Tio Vô Stan");
const p2 = new Personagem("Mabel");
const p3 = new Personagem("Soos");

const cabana = new CabanaMisterio([p1, p2, p3]);

cabana.listarFuncionarios();
