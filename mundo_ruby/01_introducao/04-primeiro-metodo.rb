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
  def imprimir_comprovante(&block)
    self.impressao = true
    block.call(self)
    "Impressao"
  end
end

# agendamento = Agendamento.new Time.now, "Descrição"
# puts agendamento.imprimir_comprovante

# puts Agendamento.criar_imprimir(Time.now, "Teste")

# exibe_descricao_com_nome = lambda do |agendamento|
#   "Agendamento com Data #{agendamento.data_hora} e Descrição #{agendamento.descricao}"
# end

agendamento = Agendamento.new(Time.now, "Teste")
teste = agendamento.imprimir_comprovante() do |agendamento|
  puts "Agendamento com Data #{agendamento.data_hora} e Descrição #{agendamento.descricao}"
end

puts teste

# O block seria tipo uma função anônima no js ou um callback, porém diferente do js, o block
# não precisa ser necessáriamente uma função, mas ele é um bloco de código