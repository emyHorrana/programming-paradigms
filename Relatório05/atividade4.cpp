#include <iostream>
using namespace std;

int main() {
    int matriz_solar[5][5] = {0}; 
    int opcao;

    do {
        cout << "\n=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch(opcao) {
            case 1: {
                int fileira, coluna;
                cout << "Digite a fileira (0-4): ";
                cin >> fileira;
                cout << "Digite a coluna (0-4): ";
                cin >> coluna;

                if (fileira < 0 || fileira > 4 || coluna < 0 || coluna > 4) {
                    cout << "Erro: Indice fora do intervalo!" << endl;
                } else if (matriz_solar[fileira][coluna] == 0) {
                    matriz_solar[fileira][coluna] = 1; // Ativa a célula
                    cout << "Sucesso: Celula solar ativada!" << endl;
                } else {
                    cout << "Erro: Celula solar ja esta em operacao!" << endl;
                }
                break;
            }

            case 2:
                cout << "--- Mapa da Matriz Solar ---" << endl;
                for(int i = 0; i < 5; i++) {
                    for(int j = 0; j < 5; j++) {
                        cout << "[" << matriz_solar[i][j] << "] ";
                    }
                    cout << endl;
                }
                break;

            case 3:
                cout << "Encerrando operacao..." << endl;
                break;

            default:
                cout << "Opcao invalida! Tente novamente." << endl;
        }
    } while(opcao != 3);

    int total_ativas = 0;
    for(int i = 0; i < 5; i++) {      
        for(int j = 0; j < 5; j++) {
            if (matriz_solar[i][j] == 1) {
                total_ativas++;
            }
        }

    }

    int total_inativas = 25 - total_ativas;
    float percentual_operacao = (total_ativas / 25.0) * 100;

    cout << "\n=== RELATORIO FINAL DE OPERACAO ===" << endl;
    cout << "Total de celulas ATIVAS: " << total_ativas << endl;
    cout << "Total de celulas INATIVAS: " << total_inativas << endl;
    cout << "Capacidade Operacional: " << percentual_operacao << "%" << endl;

    return 0;
}
 