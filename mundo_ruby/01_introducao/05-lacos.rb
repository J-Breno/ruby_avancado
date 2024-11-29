numeros = [1, 2, 3, 4, 5, 6, 7, 8 ]
numeros.each do |numero|
  puts numero + 1
end

pust "================"

numeros = numeros.map {|numero| numero + 1} #o map altera o valor
# eu poderia fazer assim também: numeros.map! {|numero| numero + 1} assim eu não precisava reatribuir o valor na variável

colors = {Joao: "azul", Breno: "Vermelho", Souza: "Amarelo"}

colors.each do |chave, valor|
  puts "#{chave} gosta de #{valor}"
end

frases = color.map do |nome, cor|
  "#{nome} gosta de #{cor}"
end