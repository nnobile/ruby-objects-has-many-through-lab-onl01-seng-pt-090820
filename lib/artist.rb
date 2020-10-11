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
    Song.new(self, name, genre)
  end

  def songs
    binding.pry
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    genres.map do |genre|
      genre.artist
  end
end

end
