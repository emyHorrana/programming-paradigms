class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} deve implementar o método 'usarHabilidade()'`);
    }

    entrarEmCombate() {
        console.log(`O agente ${this.codinome} entrou em combate com a pistola ${this.#pistola.modelo} e usou a habilidade: ${this.usarHabilidade()}`);
}
}
class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return `${this.codinome} lançou uma fumaça para bloquear a visão do inimigo`;
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return `${this.codinome} lançou uma granada para atordoar os inimigos`;
    }
}
class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return `${this.codinome} utilizou uma habilidade ofensiva para avançar contra os inimigos!`;
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`\n--- Esquadrão ${this.nome} inicia a partida ---`);

        this.#agentes.forEach(agente => {
            agente.entrarEmCombate(); }
        );
    }

    listarControladores() {
        return this.#agentes.filter(
            agente => agente instanceof Controlador
        );
    }
}

const controlador1 = new Controlador('Agente 1', 'Pistola A');
const controlador2 = new Controlador('Agente 2', 'Pistola B');
const iniciador = new Iniciador('Agente 3', 'Pistola C');
const duelista = new Duelista('Agente 4', 'Pistola D');
const esquadrao = new Esquadrao('Esquadrão Alfa',[controlador1, controlador2, iniciador, duelista]);
esquadrao.iniciarPartida();
console.log('\n--- Controladores do Esquadrão ---');
esquadrao.listarControladores().forEach(controlador => {
    console.log(`- ${controlador.codinome}`);
});

const agenteGenerico = new AgenteProtocolo('Agente Genérico', 'Pistola Comum');
// agenteGenerico.entrarEmCombate();
