class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name = "nil")
    @name = name
    @artist_name = Artist.name
  end

  def artist_name("nil")
    self.artist.name
  end

end
