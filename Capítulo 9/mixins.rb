# frozen_string_literal: true

# Modulo que adiciona o comportamento de latir
module PodeLatir
  def latir
    puts 'Au!'
  end
end

# Classes para testar mixins
class Cachorro
  include PodeLatir
end
