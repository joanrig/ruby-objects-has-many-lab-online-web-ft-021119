class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
  end

  def new(song)
    song = Song.new
    @song = song
    @name = song.name
    @@all<< song
  end


  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end

end
