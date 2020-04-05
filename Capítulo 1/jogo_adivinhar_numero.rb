# frozen_string_literal: true

# Jogo de adivinhar o numero - Use a cabeca
puts 'Jogo de adivinhar número'
puts 'Qual o seu nome? '
name = gets.chomp
puts "Bem vindo, #{name}!"
tentatives = 0
correct_answer = false
answer = rand(1..100)
until tentatives == 10 || correct_answer
  puts "Tentiva #{tentatives + 1} de 10."
  puts 'Adivinhe um número de 1 a 100: '
  number = gets.to_i
  tentatives += 1
  if number == answer
    puts 'Parabéns, você acertou!'
    correct_answer = true
  elsif number < answer
    puts 'Respota errada. A resposta é maior que o número escolhido'
  else
    puts 'Respota errada. A resposta é menor que o número escolhido'
  end
end

unless correct_answer
  puts "Número de tentativas esgotado. A respota era #{answer}"
end
