use std::io;
fn validar_placa(placa:&str) -> bool {
    let mut num = 0;
    if placa.len() < 7 {
        return false;
    }
    for c in placa.chars() {
        if c.is_alphabetic() && !c.is_ascii_uppercase() {
            return false
        }
        if c.is_digit(10) {
            num += 1;
        }
    }
    if num > 3 {
        return false;
    }
    true
}

fn main() {
    loop {
        let mut entrada = String::new();
        println!("Digite a placa:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        let entrada = entrada.trim();

        let resultado = validar_placa(&entrada);
        if resultado {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida.");
        }
    }
} 