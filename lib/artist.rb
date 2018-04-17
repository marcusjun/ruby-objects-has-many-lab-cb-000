class Artist
  attr_accessor :name

  @@song_count=0

  #Class reader for @songs
  def self.songs
    @songs
  end

  def initialize(name)
   @name = name
   @songs = []
  end

  def add_song(song)
   @songs << song
   song.artist = self
   @@song_count+=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count+=1
    song
  end

  def self.song_count
    @@song_count
  end

  def songs
    self.songs
  end

end
