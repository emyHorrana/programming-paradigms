#include <iostream>
#include <string>
using namespace std;


class LinkSocial {
//Criação dos atributos    
private:
    string nome;
    string arcana;
    int rank;

//Criação dos métodos    
public:
    // Construtor (Dessa vez vazio para pegar as informações dos atributos com set na main)
    LinkSocial(){}
    

    int subirRank(){
        rank++;
        return rank;
    }
    void exibirStatus() {
        cout << "Nome: " << nome << endl;
        cout << "Arcana: " << arcana << endl;
        cout << "Rank: " << rank << endl;
    }
    // Getter - retorna o valor
    string getNome(){
        return nome;
    }
    string getArcana(){
        return arcana;
    }
    int getRank(){
        return rank;
    }
    //Setter - modifica o valor
    void setNome(string n){
        nome = n;
    }
    void setArcana(string a){
        arcana = a;
    }
    void setRank(int r){
        rank = r;
    }

};

int main() {

    // Instanciando
    LinkSocial link1;

    link1.setNome("João");
    link1.setArcana("Link");
    link1.setRank(1);

    link1.subirRank();

    link1.exibirStatus();
    return 0;
}
