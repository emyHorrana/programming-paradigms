class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `Criatura: ${this.criatura}, Nível de Perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas;

    constructor(numero) {
        this.numero = numero;
        this.#fichas = [];
    }

    anotar(criatura, nivelDePerigo) {
        // Composição: a ficha é criada dentro do diário e armazenada nele.

        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }

    exibirFichas() {
        console.log(`\n--- Diário ${this.numero} ---`);

        this.#fichas.forEach(ficha => {
            console.log(ficha.descrever());
        });
    }
}
class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios;

    constructor(dono) {
        this.dono = dono;
        this.#funcionarios = [];
    }

    contratar(funcionario) {
        //Agregação: o funcionário já foi criado antes da cabana.
        // Ele continua existindo mesmo fora da cabana.
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`\n--- Cabana do misterio ---`);
        console.log(`Dono: ${this.dono}`);

        this.#funcionarios.forEach(funcionario => {
            console.log(`Funcionário: ${funcionario.nome} | Cargo: ${funcionario.cargo}`);
        });
    }
}
const diario = new DiarioMisterioso(3);

diario.anotar('Zumbi', 'Alto');
diario.anotar('Gnomo', 'Médio');
diario.anotar('Homem-Mariposa', 'Extremo');
diario.exibirFichas();
const funcionario1 = new Funcionario('João', 'Atendente');
const funcionario2 = new Funcionario('Maria', 'Recepcionista');
const cabana = new CabanaDoMisterio('Tio-avô');
cabana.contratar(funcionario1);
cabana.contratar(funcionario2);

cabana.abrirAsPortas();
