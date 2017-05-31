require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Trainer.destroy_all
ash = Trainer.create(name: "Ash", level: rand(30), img_url: "https://vignette3.wikia.nocookie.net/pokemon/images/4/41/Kantoash.png/revision/latest?cb=20110507193331")
misty = Trainer.create(name: "Misty", level: rand(30), img_url: "https://vignette3.wikia.nocookie.net/loveinterest/images/f/f0/Misty.png/revision/latest?cb=20140807145614")
brock = Trainer.create(name: "Brock", level: rand(30), img_url: "http://www.factfiend.com/wp-content/uploads/2014/04/Brock-pokemon-18232516-418-358.jpg")
gary = Trainer.create(name: "Gary", level: rand(30), img_url: "http://cdn.bulbagarden.net/upload/thumb/4/4a/Gary_Oak_DP.png/220px-Gary_Oak_DP.png")



Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer: ash)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer: ash)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer: misty)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer: misty)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer: brock)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer: brock)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer: gary)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer: gary)
