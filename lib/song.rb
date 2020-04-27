class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song_data = filename.split(" - ")
    song = Song.new(song_data[1])
    song.artist.name = song_data[0]
    song
  end

  def artist_name=(name)

  end

end
