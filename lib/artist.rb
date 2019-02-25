class Artist
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @@all<< self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @song = song
    @@songs << song
    song.artist = self
  end

  def artist_name
    self.name = @name
  end

  def self.song_count
    @@songs.length
  end

end
