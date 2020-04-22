# frozen_string_literal: true

# Ler arquivo
file = File.open("helloworld.txt")
texto = file.readlines

texto.each {|text| puts "#{text}"} 
