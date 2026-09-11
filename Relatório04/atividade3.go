package main
import "fmt"

func gerarEscalaPlantao(n int){
	for i := 0; i < n; i++ {
		dia := 1 + (i * 4)
		fmt.Printf("Plantao %d: Dia %d do mes\n", i+1, dia)
	}
}
func main() {
	var n int
	fmt.Print("Digite a quantidade de plantoes: ")
	fmt.Scanln(&n)
	fmt.Print("-----Escala de Plantao Tecnico-----\n")
	gerarEscalaPlantao(n)
}