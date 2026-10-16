class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Invocando Persona {self.nome} do Arcano {self.arcano}")
class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome
class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        self.__persona = Persona("Arsène", "Louco")  #Na composição a Persona é criada dentro do Lider e só existe enquanto o Lider existir
        self._equipe = []  

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado) 
    def infiltrar(self, palacio):
        print(f"Infiltrando no Palácio de {palacio}")
        self.__persona.invocar()  
        print("Equipe recrutada:")
        for aliado in self._equipe:
            print(f"- {aliado.nome} ({aliado.codinome})")

if __name__ == "__main__":
    #Na agregação os aliados são criados antes do líder e continuam existindo fora do grupo,
    #  mesmo que o líder seja destruído, diferente da composição.
    aliado1 = Aliado("Renato", "Re") 
    aliado2 = Aliado("Mariana", "Mari")

    lider = Lider("Joker")
    lider.recrutar(aliado1)
    lider.recrutar(aliado2)

    lider.infiltrar("João")