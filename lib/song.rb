class Song
  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def initialize(artist, name, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
