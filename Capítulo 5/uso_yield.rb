# frozen_string_literal: true

# Utilização de blocos
def sum(numbers)
  sum = 0
  numbers.each { |number| sum += number }
  sum
end

puts sum [50, 100, 200]
