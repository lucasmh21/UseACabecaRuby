# frozen_string_literal: true

require 'yaml/store'

# Classe que armazena e consulta movie
class MovieDAO
  def initialize(filename)
    @store = YAML::Store.new(filename)
  end

  def save(movie)
    @store.transaction do
      last_index = @store.roots.max || 0
      last_index += 1
      movie.id = last_index
      @store[movie.id] = movie
    end
  end

  def show_all
    @store.transaction do
      @store.roots.map { |id| @store[id] }
    end
  end

  def find(id)
    @store.transaction do
      @store[id.to_i]
    end
  end
end
