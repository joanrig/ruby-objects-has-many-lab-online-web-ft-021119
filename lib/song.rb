class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all<< self
  end

  # def new(song)
  #   song = Song.new
  #   @song = song
  #   @name = song.name
  # end


  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end

end
