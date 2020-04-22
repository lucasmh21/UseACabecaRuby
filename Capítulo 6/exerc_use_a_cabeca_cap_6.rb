# frozen_string_literal: true

# Exercicio do capitulo 6 - Imas de geladeira
def make_casserols
  puts 'Preheat oven to 375 degress'
  ingredients = yield
  puts "Place #{ingredients} in dish"
  puts 'Bake for 20 minutes'
end

make_casserols do
  'rice, broccoli, and chicker'
end

make_casserols do
  'noodles, celery, and tuna'
end
