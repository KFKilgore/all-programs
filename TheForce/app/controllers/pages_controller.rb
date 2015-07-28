class PagesController < ApplicationController
  
  require 'open-uri'
  require 'json'
  
  def home
  end

# Here we pull the real-time info from SWAPI.com Star Wars API and put it in a hash.

#copy and paste the URL "http://swapi.co/ " and see what data is there
  def films
    data = JSON.parse(open("http://swapi.co/api/films").read)
    @results = data["results"]
  end

  def people
    data = JSON.parse(open("http://swapi.co/api/people").read)
    @results = data["results"]
  end

  def planets
    data = JSON.parse(open("http://swapi.co/api/planets").read)
    @results = data["results"]
  end

  def species
    data = JSON.parse(open("http://swapi.co/api/species").read)
    @results = data["results"]
  end

  def starships
    data = JSON.parse(open("http://swapi.co/api/starships").read)
    @results = data["results"]
  end

  def vehicles
    data = JSON.parse(open("http://swapi.co/api/vehicles").read)
    @results = data["results"]
  end
end