class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem enviada para o passado: #{mensagem}"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new # Na composição o laboratorio cria e é o dono do PhoneWave, que não existe fora do laboratório.
    @membros = [] # Na agregação membros são criados fora do laboratório e apenas adicionados ao laboratório, podendo existir fora dele.
  end

  def admitir(membro)
    @membros << membro
    puts "Admitido: Número #{membro.numero}, Nome #{membro.nome}"
  end

  def experimento(mensagem)
    puts "Membros presentes no experimento:"
    @membros.each do |membro|
      puts "Número #{membro.numero}, Nome #{membro.nome}"
    end
    @phonewave.enviar_dmail(mensagem)
  end
end

# Main
membro1 = MembroDoLab.new(1, "Jonas")
membro2 = MembroDoLab.new(2, "Ruan")

laboratorio = LaboratorioDeGadgets.new
laboratorio.admitir(membro1)
laboratorio.admitir(membro2)

laboratorio.experimento("Teste de envio de mensagem para o passado")