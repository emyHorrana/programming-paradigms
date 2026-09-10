package main
import 'fmt'

ValidarCodigoRastreio(codigo string) (bool, string){
	if len(codigo) == 10 {	
		return true, "Código de rastreio registrado no sistema!"
	} else {
		return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."	
	}	
	
}
func main() {
	for {
		var codigo string
		fmt.Print("Digite o código de rastreio: ")
		fmt.Scanln(&codigo)
		isValid, message := ValidarCodigoRastreio(codigo)
		fmt.Println(message)
		if isValid {
			break
		}
	}
}	