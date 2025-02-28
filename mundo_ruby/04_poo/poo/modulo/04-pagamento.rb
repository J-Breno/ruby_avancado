module Pagamento
  def pagar(bandeira, _numero,  valor)
    "pagando com o cartão #{bandeira} o valor de R$ #{valor}"
  end
end