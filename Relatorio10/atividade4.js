
class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} ataca ${alvo.nome} com uma técnica de Nen!`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} usa um ataque de aura intensificada contra ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transforma sua aura em um ataque especial contra ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} cria uma manifestação física de sua aura contra ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\n--- Aranhas avistadas em ${this.cidade} ---`);

        this.#aranhas.forEach(aranha => {
            console.log(`Número: ${aranha.numero} | Nome: ${aranha.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(aranha => aranha.numero === numero);
    }
}

const aranha1 = new Aranha('Maria', 1);
const aranha2 = new Aranha('João', 2);

// Agregação: as aranhas já existem antes de serem reunidas
const trupe = new TrupeFantasma('Cidade central', [aranha1, aranha2]);

trupe.revelarAranhas();
const alvo = trupe.buscarAranha(1);

const usuarios = [
    new Intensificador('Hunter 1'),
    new Transmutador('Hunter 2'),
    new Materializador('Hunter 3')
];
console.log('\n--- Batalha contra a Trupe Fantasma ---');

usuarios.forEach(usuario => {
    usuario.atacar(alvo);
});
