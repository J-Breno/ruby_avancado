pessoas = [
  { pessoa1: {
    nome: "João",
    email: "joao@gmail.com"
  } },
  { pessoa2: {
    nome: "Breno",
    email: "breno@hotmail.com",
    funcionaria: "Back-end"
  } },
{ pessoa3: {
  nome: "Souza",
  email: "souza@outlook.com"
} },
{ pessoa4: {
  nome: "Melo",
  email: "melo@gmail.com",
  funcionaria: "Front-end"
} },
{ pessoa5: {
  nome: "João Breno",
  email: "joaobreno@gmail.com"
} },
{ pessoa6: {
  nome: "Breno Souza",
  email: "brenosoua@hotmail.com",
  funcionaria: "Full-stack"
} },
{ pessoa7: {
  nome: "Souza Melo",
  email: "souzamelo@outlook.com"
} },
{ pessoa8: {
  nome: "João Melo",
  email: "joaomelo@gmail.com"
} },
{ pessoa9: {
  nome: "João Souza",
  email: "joaosouza@hotmail.com"
} },
{ pessoa10: {
  nome: "Breno Melo",
  email: "brenomelo@outlook.com"
 }}
]

def full_informations(pessoa)
  pessoa.each do |_key, dados|
    if dados[:funcionaria]
      puts "O #{dados[:nome]} tem o email: #{dados[:email]} e ela é uma funcionário, cujo o seu cargo é #{dados[:funcionaria]}"
    else
      puts "O #{dados[:nome]} tem o email: #{dados[:email]}"
    end
  end
end

pessoas.each do |pessoa|
  full_informations(pessoa)
end

