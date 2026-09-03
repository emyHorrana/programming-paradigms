 use std::io;

 fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    (palpite - numero_secreto).abs() <= 5
}

fn main() {
    let numero_secreto: i32 = 13;
    
    loop{
        let mut entrada = String::new();
        println!("Digite seu palpite:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        
        let palpite: i32 = entrada.trim().parse().unwrap_or(0);
        let distancia = (palpite - numero_secreto).abs();
        
        if acertou_o_alvo(palpite, numero_secreto) {
            println!("Voce acertou! Ficou a apenas {} unidades do numero secreto!", distancia);
            break;
        } else {
            println!("Voce passou longe! Tente novamente");
        }
    }
}