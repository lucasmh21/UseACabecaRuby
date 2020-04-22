# frozen_string_literal: true

# Capitulo 8 - Head first
class Planetario
  attr_reader :corpos_celestes
  def initialize
    @corpos_celestes = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_corpo_celeste(planeta)
    @corpos_celestes[planeta.nome] = planeta
  end
end

# Modelo de planeta
class Planeta
  attr_accessor :tipo, :nome
  def initialize(tipo:, nome:)
    @tipo = tipo
    @nome = nome
  end
end
