class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    @@all << song
  end

  def songs
    song.all.select {|song| song.artist == self}
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
