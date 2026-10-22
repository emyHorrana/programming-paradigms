module Depoente
  def depor
    raise NotImplementedError, "#{self.class} deve implementar depor"
  end
end

module Detivel
  def ser_detido
    puts "Nome: #{nome}, foi levado pela Scotland Yard"
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "Nome: #{nome}, viu quem saiu do local do crime."
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "Nome: #{nome}, diz que estava em casa quando o crime aconteceu."
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "Caso: #{@caso}"
    @envolvidos.each(&:depor)
  end

  def acionar_scotland_yard
    detidos = @envolvidos.select { |envolvido| envolvido.respond_to?(:ser_detido) }
    detidos.each(&:ser_detido)
  end
end

# Main
testemunha = TestemunhaOcular.new("João")
suspeito1 = SuspeitoDoCrime.new("Maria")
suspeito2 = SuspeitoDoCrime.new("Carlos")

investigacao = Investigacao.new("Roubo no Museu")
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard