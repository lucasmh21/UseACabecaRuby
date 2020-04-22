# frozen_string_literal: true

# Classe que representa filme
class Movie
  attr_accessor :id, :nome, :autor, :ano

  def initialize(nome: '', autor: '', ano: '')
    @nome = nome
    @autor = autor
    @ano = ano
  end
end
