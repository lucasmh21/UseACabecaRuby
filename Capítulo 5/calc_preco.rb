# frozen_string_literal: true

# Metodos do capitulo 5
def sum(prices)
  prices.sum
end

prices = [3.99, 25.00, 8.99]
puts format("%0.2f",sum(prices))