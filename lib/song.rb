class Song
  attr_accessor :name, :artist
  attr_reader :artist_name
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @artist_name = artist ? artist.name : nil
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    @artist_name = artist.name
  end

  def self.all
    @@all
  end
end
