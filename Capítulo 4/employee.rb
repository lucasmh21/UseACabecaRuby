# frozen_string_literal: true

# Superclasse empregado
class Employe
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  def name=(name)
    raise 'Nome inválido!' if name == ''

    @name = name
  end

  def self.teste_hello_world
    'Hello World! Teste!'
  end
end
