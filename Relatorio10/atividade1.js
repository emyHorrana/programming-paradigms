class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }
    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida = Math.max(0, this.#vida - pontos);

        console.log(`${this.apelido} ficou com ${this.#vida} de vida.`);
    }
    atacar(alvo) {
        console.log(`${this.apelido} realizou um ataque genérico!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Água', vidaInicial);
    }
    atacar(alvo) {
        console.log(`${this.apelido} usou jato de agua!`);
        alvo.sofrerDano(20);
    }
}


class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }
    atacar(alvo) {
        console.log(`${this.apelido} usou chicote`);
        alvo.sofrerDano(15);
    }
}

const squirtle = new Squirtle('Tartaruga', 100);
const bulbasaur = new Bulbasaur('Folhinha', 30);

console.log('\n--- Pokémon ---');

console.log(`Nome: ${squirtle.apelido}`);
console.log(`Tipo: ${squirtle.tipo}`);
console.log(`Vida: ${squirtle.vida}`);
console.log('');
console.log(`Nome: ${bulbasaur.apelido}`);
console.log(`Tipo: ${bulbasaur.tipo}`);
console.log(`Vida: ${bulbasaur.vida}`);
console.log('\n--- Início da Batalha ---');
bulbasaur.atacar(squirtle);
squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);
console.log('\n--- Vida final dos pokémon ---');
console.log(`${squirtle.apelido} possui ${squirtle.vida} de vida.`);
console.log(`${bulbasaur.apelido} possui ${bulbasaur.vida} de vida.`);
// console.log(squirtle.#vida); gera um erro porque #vida é privado.



