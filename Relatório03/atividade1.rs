use std::io;
fn validar_placa(placa:&str) -> bool {
    let mut num = 0;
    if placa.len() >= 7 {
        return false;
    }
    for c in placa.chars() {
        if !c.is_ascii_uppercase() {
            num++;
        }
        if c.is_digit(10) {
            println!("'{}' e um numero!", c);
        }
    }
    if num > 3 {
        return false;
    }
    true
}

fn main() {
    let mut entrada = String::new();
    println!("Digite a placa:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");

    bool resultado = validar_placa(&entrada);
    if resultado {
        println!("Placa valida!");
    } else {
        println!("Placa invalida.");
    }

} 