# frozen_string_literal: true

# Superclasse animal
class Animal
  attr_reader :name, :age

  def name=(name)
    raise 'Nome inválido' if name == ''

    @name = name
  end

  def age=(age)
    raise 'Idade inválida' if age.negative?

    @age = age
  end

  def talk; end

  def move(destination)
    "#{name} anda até #{destination}"
  end
end
