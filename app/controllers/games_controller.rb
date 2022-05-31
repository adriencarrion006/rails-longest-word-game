require 'json'
require "open-uri"
class GamesController < ApplicationController

def new
  @letters = []
    10.times { @letters << ("A".."Z").to_a.sample }
    return @letters
end
def score
  # recuperuction du mots entrer par le joueur
  @new = params[:new]
  # ouvrir le ficher json uri.open(url)
  word_dictionnary = URI.open("https://wagon-dictionary.herokuapp.com/#{@new}")
  # word_dictionary ici est Json, on le read dans l'argument de la methode parse  # JSON on le parse
  word = JSON.parse(word_dictionnary.read)
  @valeur = word['found']
  # p valeur.class
end

end
