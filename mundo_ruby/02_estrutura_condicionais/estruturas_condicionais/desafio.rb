class ContaCorrente
  def initialize(saldo_inicial)
    @saldo_inicial = saldo_inicial
  end

  attr_accessor :saldo_inicial

  def sacar(valor)
    return "Não é possível sacar esse valor de R$ #{valor.to_f}, saldo insuficiente. Saldo: R$ #{self.saldo_inicial.to_f}" if valor > saldo_inicial
    self.saldo_inicial -= valor
    "Você sacou: R$ #{valor.to_f}. Seu saldo agora é de: R$ #{self.saldo_inicial.to_f}"
  end

  def depositar(valor)
    self.saldo_inicial += valor
    "Você depositou: R$ #{valor.to_f}. Seu saldo agora é de: R$ #{self.saldo_inicial.to_f}"
  end
end

conta = ContaCorrente.new 1000

puts conta.sacar 1001
puts conta.sacar 999
puts conta.depositar 10000