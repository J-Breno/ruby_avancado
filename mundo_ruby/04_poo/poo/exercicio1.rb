class Tablet
  def initialize(capacidade, tamanha_de_tela, sistema_operacional)
    @capacidade = capacidade
    @tamanho_de_tela = tamanha_de_tela
    @sistema_operacional = sistema_operacional
  end

  attr_accessor :capacidade, :tamanho_de_tela, :sistema_operacional

  def ligar(value)
    puts "Ligou" if value == 'sim'
    puts "desligou" if value == 'não'
  end

  def carregar
    puts "Carregando"
  end

  def conectarWifi(password)
    return puts "Conectado" if password == 1234
    puts "Senha invalida"
  end
end