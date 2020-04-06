# frozen_string_literal: true

# Classe que representa o cachorro
class Dog < Animal
  def talk
    puts "#{name} late"
  end

  def move(destination)
    resposta = super
    puts resposta
    puts "O cachorro #{name} está feliz!"
  end
end
