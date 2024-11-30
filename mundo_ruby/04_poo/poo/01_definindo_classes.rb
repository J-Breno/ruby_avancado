require_relative 'exercicio1'#estou importando aquela do exercicio1 para esse meu arquivo

novoTable = Tablet.new "100G", "10","IOS"
novoTable.ligar("sim")
novoTable.conectarWifi(1234)
novoTable.carregar

puts "=================="

class Pessoa

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  attr_accessor :nome, :idade

  def gritar_alto(texto = "AHHHHHH")
    puts "Gritando: #{texto}"
  end

  def agradecer
    puts "Obrigado!"
  end
end

obj1 = Pessoa.new
obj1.gritar_alto()
obj1.agradecer