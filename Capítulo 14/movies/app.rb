# frozen_string_literal: true

require 'sinatra'
require 'movie'
require 'movie_dao'

dao = MovieDAO.new('movies.yaml')

get('/') do
  @movies = dao.show_all
  erb :movies
end

get('/new') do
  erb :new
end

post('/create') do
  movie = Movie.new
  movie.nome = params['nome']
  movie.ano = params['ano']
  movie.autor = params['autor']
  dao.save(movie)
  'Salvo'
end

get('/:id') do
  id = params['id']
  @movie = dao.find id
  erb :movie
end
