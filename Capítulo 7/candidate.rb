# frozen_string_literal: true

# Classe que representa o candidato
class Candidate
  attr_accessor :name, :age, :birthplace, :occupation

  def initialize(name, age:, birthplace:, occupation: 'Nada')
    @name = name
    @age = age
    @birthplace = birthplace
    @occupation = occupation
  end
end
