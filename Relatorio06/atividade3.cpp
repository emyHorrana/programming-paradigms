#include <iostream>
#include <string>
using namespace std;


class MembroInatel {
//Criação dos atributos    
private:
    string nome;

//Criação dos métodos    
public:
    // Construtor (Dessa vez vazio para pegar as informações dos atributos com set na main)
    MembroInatel(){}
    
    //Virtual é para que o método possa ser sobrescrito nas classes filhas
    virtual void seApresentar() {

        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }
    // Getter - retorna o valor
    string getNome(){
        return nome;
    }
    
    //Setter - modifica o valor
    void setNome(string n){
        nome = n;
    }

};

class Aluno : public MembroInatel {
public:
    string curso;

    virtual void seApresentar() {
        cout << "Meu nome é " << getNome() << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
public:
    string disciplina;
    
    virtual void seApresentar() {
        cout << "Meu nome é " << getNome() << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};


int main() {

    // Instanciando
    Aluno aluno1;
    Professor professor1;

    aluno1.setNome("Emily");            
    aluno1.curso = "Engenharia de Software";
    professor1.setNome("João");
    professor1.disciplina = "Programação Orientada a Objetos";
    professor1.seApresentar();
    aluno1.seApresentar();

    return 0;
}
