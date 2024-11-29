class Agendamento
  def initialize(data_hora, descricao)
    @data_hora =data_hora
    @descricao = descricao
    @impressao = false
  end

  attr_accessor :data_hora, :descricao, :impressao

  def self.criar_imprimir(data_hora, descricao)
    agendamento = self.new(data_hora, descricao)
    agendamento.imprimir_comprovante
  end
  def imprimir_comprovante
    self.impressao = true
    "Impressao"
  end
end

agendamento = Agendamento.new Time.now, "Descrição"
puts agendamento.imprimir_comprovante

puts Agendamento.criar_imprimir(Time.now, "Teste")