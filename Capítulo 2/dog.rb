# frozen_string_literal: true

# Classe representando um cachorro
class Dog
  attr_reader :name, :age

  def name=(value)
    raise 'Nome em branco' if value == ''

    @name = value
  end

  def age=(value)
    raise 'Idade inválida!' if value.negative?

    @age = value
  end

  def move(destino)
    puts "O cachorro #{@name} está indo para #{destino}"
  end

  def talk1
    puts 'Late'
  end

  def report_age
    puts "O cachorro #{@name} possui #{@age} anos de idade"
  end
end
