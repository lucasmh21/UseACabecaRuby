# frozen_string_literal: true

# Classe de mago para o exercicio do caputilo 2
class Mage
  attr_accessor :name, :spell

  def enchant(target)
    puts "#{@name} encanta #{target} com a magia #{spell}"
  end
end
