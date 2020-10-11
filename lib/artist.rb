require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #binding.pry
  end

  def songs
    Song.all.select do |song|
      song.artist == self
      #binding.pry
    end
  end

  def genres
    binding.pry
    self.songs.select do |song|
    end
  #Genre.all.select do |genre|
  #     genre.songs.select do |song|
  #       #binding.pry
  #       song.artist == self
  #     end
  #   end
  end

end
