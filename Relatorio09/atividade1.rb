class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end
#get manual
  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Nome: #{nome}, Preço: R$#{preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super}, Lenda: #{lenda}"
  end
end

#Main
drinks = [
    CoquetelAfterlife.new("Drink A", 15),
    DrinkDeLenda.new("Drink B", 50, "Lenda B"),
    DrinkDeLenda.new("Drink C", 80, "Lenda C")
]

drinks.each do |drink|
  puts drink.ficha
end

drinks[1].preco = 500 # Preço inválido
drinks[1].preco = 80 # Preço válido

puts drinks[1].ficha

# Tentativa de alterar o nome diretamente
# drinks[0].nome = "New Name" # Isso não é permitido pois nome é apenas leitura