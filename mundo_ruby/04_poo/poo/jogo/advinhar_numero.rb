class AdivinharNumero
  attr_reader :numero, :venceu

  def initialize
    @numero = 5
    @venceu = false
  end

  def tentar_advinhar(numero = 0)
    if numero == Random.rand(1..10)
      @venceu = true
      return 'você venceu!'
    elsif numero > @numero
      return 'O número informado é maior...'
    else
      return 'O número informado é menor...'
    end
  end
end

jogo = AdivinharNumero.new
until jogo.venceu do #enquanto jogo.venceu for faslso ele deve ficar faznedo o loop
 puts "Digite um número"
 numero = gets.to_i

 puts jogo.tentar_advinhar(numero)
end