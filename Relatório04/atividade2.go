package main
import "fmt"

func main() {
	var trimestre1, trimestre2, trimestre3 int
	fmt.Print("Digite a quantidade de vendas do 1 trimestre: ")
	fmt.Scanln(&trimestre1)

	fmt.Print("Digite a quantidade de vendas do 2 trimestre: ")
	fmt.Scanln(&trimestre2)

	fmt.Print("Digite a quantidade de vendas do 3 trimestre: ")
	fmt.Scanln(&trimestre3)

	soma := trimestre1 + trimestre2 + trimestre3

	fmt.Printf("Total de vendas: %d unidades \n", soma)
	if soma < 100 {
		fmt.Println("Meta minima anual nao atingida!")
	} else {
		switch {
		case soma >= 250:
			fmt.Println("Classificacao: Top Seller")
		case soma >= 180:
			fmt.Println("Classificacao: Senior")
		default:
			fmt.Println("Classificacao: Pleno")
		}
	}

}