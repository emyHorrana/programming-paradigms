class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "Metodo interpretar deve ser implementado"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{nome} toca a melodia principal de '#{peca}' com o instrumento #{instrumento}"
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{nome} acompanha o ritmo do solista em '#{peca}' com o instrumento #{instrumento}."
  end
end

class Regente
  attr_reader :nome, :orquestra

  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "#{nome} rege a peça '#{peca}'."
    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |instrumentista| "#{instrumentista.class}: #{instrumentista.nome}" }
  end
end

# Main
solista = Solista.new("Maria", "Violino")
acompanhador = Acompanhador.new("João", "Piano")
regente = Regente.new("Carlos")

regente.convocar(solista)
regente.convocar(acompanhador)

regente.reger("Concerto em Dó Maior")

puts "\nEscalação da Orquestra:"
regente.escalacao.each { |texto| puts texto }

instrumentista_generico = Instrumentista.new("Marta", "Flauta")
# instrumentista_generico.interpretar("Concerto em Fá Maior") Isso gera um erro pois o método interpretar não foi implementado na classe base.