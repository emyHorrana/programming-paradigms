#include <iostream>
#include <string>
using namespace std;


class Banda {
//Criação dos atributos    
private:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

//Criação dos métodos    
public:
    // Construtor (O que deve entrar como parâmetros (igual os atributos) na hora de instanciar na main)
    Banda(string n, int i, float p, int e) : nome(n), integrantes(i), potenciaSom(p), energia(e) {}
    //Essse & é para 
    void duelar(Banda &rival) {
        cout << nome << " esta duelando contra " << rival.nome << "!" << endl;
        cout << "A banda " << nome << " fez sua apresentacao!" << endl;

        rival.energia -= potenciaSom;
    }

    void exibirStatus() {
        cout << "Nome: " << nome << endl;
        cout << "Integrantes: " << integrantes << endl;
        cout << "Potencia do som: " << potenciaSom << endl;
        cout << "Energia da plateia: " << energia << endl;
        cout << "-----------------------------" << endl;

    }
};

int main() {

    // Instanciando duas bandas 
    //Banda(string n, int i, float p, int e) : nome(n), integrantes(i), potenciaSom(p), energia(e) {}
    Banda banda1("Queen", 4, 30.0, 100);
    Banda banda2("Pink Floyd", 5, 25.0, 100);

    //Chamando o médoto duelar() da classe banda
    cout << "--- DUELO ---" << endl;
    banda1.duelar(banda2);

    //Chamando o médoto exibirStatus() da classe banda
    cout << endl;
    cout << "--STATUS APÓS O CONFRONTO --" << endl;

    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
