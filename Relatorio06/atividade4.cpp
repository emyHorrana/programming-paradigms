#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Hobbit {
//Criação dos atributos
private:
    string nome;
    
//Criação dos métodos
public:
    Hobbit(string n) : nome(n) {}
    
    virtual void fazerAtividade() {
        cout << "O hobbit " << nome << " está aproveitando um dia tranquilo na Comarca." << endl;
    }

    string getNome() {
        return nome;
    }
};

class Jardineiro : public Hobbit {
public:
    Jardineiro(string n) : Hobbit(n) {}
    
    void fazerAtividade() override {
        cout << "O jardineiro " << getNome() << " está cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit {
public:
    Cozinheiro(string n) : Hobbit(n) {}
    
    void fazerAtividade() override {
        cout << "O cozinheiro " << getNome() << " está preparando o segundo café da manhã para os convidados!" << endl;
    }
};

class Fazendeiro : public Hobbit {
public: 
    Fazendeiro(string n) : Hobbit(n) {}
    
    void fazerAtividade() override {
        cout << "O fazendeiro " << getNome() << " está colhendo vegetais e hortaliças em suas terras!" << endl;
    }
};

int main() {
    // etor de ponteiros para Hobbit
    vector<Hobbit*> hobbits;
    
    // Instnciando 
    hobbits.push_back(new Jardineiro("João"));
    hobbits.push_back(new Cozinheiro("Pedro"));
    hobbits.push_back(new Fazendeiro("Lucas"));
    
    // Percorre o vetor chamando fazerAtividade()
    for (Hobbit* hobbit : hobbits) {
        hobbit->fazerAtividade();
    }
    
    // Liberando memória alocada
    for (Hobbit* hobbit : hobbits) {
        delete hobbit;
    }
    
    return 0;
}