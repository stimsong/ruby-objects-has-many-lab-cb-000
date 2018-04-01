class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name = "nil")
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    @@song_count += 1
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
