class Tablet
  def initialize(capacidade, tamanha_de_tela, sistema_operacional)
    @capacidade = capacidade
    @tamanho_de_tela = tamanha_de_tela
    @sistema_operacional = sistema_operacional
  end

  attr_accessor :capacidade, :tamanho_de_tela, :sistema_operacional

  def ligar(value)
    return "Ligou" if value == 'sim'
    return "desligou" if value == 'não'
  end

  def carregar
    puts "Carregando"
  end

  def conectarWifi(password)
    return "Conectado" if password == 1234
    return "Senha invalida"
  end
end