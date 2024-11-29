puts true if '1' == '1'
puts '1' != 1.to_s

idade = 17

if idade < 18
  puts 'Você é menor de idade'
elsif idade == 17
  puts 'Você é quase maior de idade'
else
  puts 'Você é maior de idade'
end

resultado = idade >= 18 ? 'Você é maior de idade' : 'Vocẽ é menor de idade'

puts resultado
dia_da_semana = 'Domingo'
case dia_da_semana
when 'Sábado'
  puts 'Meio Período'
when 'Domingo'
  puts 'Folga'
else
  puts 'Dia normal'
end

acesso_autorizado = true

if !acesso_autorizado
  puts "Acesso negado"
end

# Ou faça assim que é melhor

unless acesso_autorizado
  puts "Acesso negaco"
end

class User
  def initialize(name, role)
    @name = name
    @role = role
  end

  attr_accessor :name, :role

  def authorize!
    # if role == :admin
    #   return true
    # else
    #   puts 'acesso negado'
    # end
    return true if role == :admin

    'Acesso negado.'
  end
end

authorized_user = User.new 'João', :admin
unauthorized_user = User.new 'Breno', :student

puts authorized_user.authorize!
puts unauthorized_user.authorize!

CONDICOES = {
  'Sábado' => 'Meio Período',
  'Domingo' => 'Folga'
}.freeze
dia = 'Sábado'
puts CONDICOES[dia] || 'Dia normal'