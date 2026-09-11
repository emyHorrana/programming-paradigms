package main
import "fmt"

//Todos meus códigos estão sem acentuação pois as vezes gerava erro no oneCompiler

func ValidarCodigoRastreio(codigo string) (bool, string){
	if len(codigo) == 10 {	
		return true, "Codigo de rastreio registrado no sistema!"
	} else {
		return false, "Erro: O codigo de rastreio deve ter exatamente 10 caracteres."	
	}	
	
}
func main() {
	for {
		var codigo string
		fmt.Print("Digite o codigo de rastreio: ")
		fmt.Scanln(&codigo)
		valido, mensagem := ValidarCodigoRastreio(codigo)
		fmt.Println(mensagem)
		if valido {
			break
		}
	}
}	