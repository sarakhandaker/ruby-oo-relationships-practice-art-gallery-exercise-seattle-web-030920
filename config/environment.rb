require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

sara=Artist.new("sara", 10)
brad= Artist.new("brad", 20)

gal=Gallery.new("gal", "seattle")
gal2= Gallery.new("gal2", "portland")

sara.create_painting("hi", 10, gal)
sara.create_painting("hi2", 10, gal2)
brad.create_painting("hi3", 10, gal)
brad.create_painting("hjgkhb", 1000, gal)
binding.pry