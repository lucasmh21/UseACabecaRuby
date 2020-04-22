# frozen_string_literal: true

# Exercicios do setimo capitulo ruby head first

def volune(options)
  options[:width] * options[:height] * options[:depth]
end

puts format("Volume is %0.2f",volune(width: 10, height: 5, depth: 2.5))
