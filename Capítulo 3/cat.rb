# frozen_string_literal: true

# Classe que representa o gato
class Cat < Animal
  def talk
    puts "#{name} mia"
  end

  def move(destination)
    puts "O gato #{name} está feliz por ir até #{destination}"
  end
end
