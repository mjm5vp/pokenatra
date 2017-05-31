require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

# Menu
get '/' do
  erb :menu
end



# --------------------------
# Pokemon
get '/pokemon' do
  @pokemons = Pokemon.all
  erb :"pokemon/index"
end

get '/pokemon/new' do
  erb :"pokemon/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/edit"
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemon/#{@pokemon.id}")
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/pokemon")
end

# -----------------------------------------
# Trainers

get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/index"
end

get '/trainers/new' do
  erb :"trainers/new"
end

post '/trainers' do
  @pokemon = Trainer.create(params[:trainer])
  redirect "/trainers/#{@trainer.id}"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/show"
end

get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/edit"
end

put '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.update(params[:trainer])
  redirect("/trainers/#{@trainer.id}")
end

delete '/trainer/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.destroy
  redirect("/trainers")
end
