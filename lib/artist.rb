class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def self.all
    @@all
  end


  def songs
    @songs
  end

  def self.find_or_create_by_name
    if (self.artist.nil?)
      self.artist = Artist.new(self)
    else
      self.artist.name
    end
  end

  def print_songs
  end


end
