class Artist
  attr_accessor :name, :artist_name

  @@song_count = 0

  def initialize(artist_name = "nil")
    @artist_name = artist_name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(name)
    @@song_count += 1
#    song = Song.new(name)
    @songs << name
    name.artist = self
  end

  def add_song_by_name(name)
    @@song_count += 1
    song = Song.new(name)
    @songs << song
    name.artist = self
  end

  def self.song_count
    @@song_count
  end

end
