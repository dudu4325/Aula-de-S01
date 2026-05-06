class Habilidade {
  usar(){
    throw new Error("O método usar() precisa ser sobrescrito!");
  }
}

class Smoke extends Habilidade {
  usar(){
    console.log("Criando uma cortina de fumaça!");
  }
}

class Flash extends Habilidade {
  usar(){
    console.log("Cegando os inimigos!");
  }
}

class Dash extends Habilidade {
  usar(){
    console.log("Avançando!");
  }
}

class Armadilha extends Habilidade {
  usar(){
    console.log("Posicionando armadilha no mapa!");
  }
}

class Agente {
  constructor(nome, funcao, habilidade){
    this.nome = nome;
    this.funcao = funcao;
    this._habilidade = habilidade; 
  }

  entrarEmCombate(){
    console.log(`Agente: ${this.nome} | Função: ${this.funcao}`);
    this._habilidade.usar();
    console.log();
  }

  getHabilidade(){
    return this._habilidade;
  }
}

class Time {
  constructor(agentes) {
    this.agentes = agentes;
  }

  iniciarPartida(){
    console.log("Iniciando Partida");
    this.agentes.forEach(agente => agente.entrarEmCombate());
  }

  listarControladores(){
    return this.agentes.filter(
    agente => agente.getHabilidade() instanceof Smoke
    );
  }
}

const omen = new Agente("Omen", "Controlador", new Smoke());
const skye = new Agente("Skye", "Iniciador", new Flash());
const jett = new Agente("Jett", "Duelista", new Dash());
const cypher = new Agente("Cypher", "Sentinela", new Armadilha());

const time = new Time([omen, skye, jett, cypher]);

time.iniciarPartida();

console.log("Controladores:");
const controladores = time.listarControladores();
controladores.forEach(a => {
    console.log(a.nome);
});

