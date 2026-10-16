from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass
class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo    

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo_cyberdeck: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(f"{self.nome} está quebrando o gelo de um servidor usando o cyberdeck {self.cyberdeck.modelo}.")  

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone {self.codigo} está interceptando o sinal da rede.")

class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula Hacker {self.nome} iniciando ataque!")
        for membro in self.membros:
            membro.executar_invasao()

if __name__ == "__main__":
    netrunner = OperadorNetrunner("Leo", "Cyberdeck X")
    drone = DroneDeVigilancia("DR-001")

    celula = CelulaHacker("Célula Alpha", [netrunner, drone])
    celula.iniciar_ataque()

    #unidade_invalida = IUnidadeDeRede()  #Da erro, pois não é possível instanciar uma classe abstrata diretamente