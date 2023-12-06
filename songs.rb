class Song
  attr_reader :name, :artist, :duration
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def each_filename
    basename = "#{name}-#{artist}".gsub(" ", "-").downcase
    extensions = [".mp3", ".wav", ".aac"]
    extensions.each { |ext| yield basename + ext }
  end
end

class Playlist
  include Enumerable
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each(&block)
    @songs.each(&block)
  end

  def each_tagline
    each { |song| yield "#{song.name} - #{song.artist}" }
  end

  def each_by_artist(artist)
    select { |song| song.artist == artist }.each { |song| yield song }
  end
end


song1 = Song.new("greedy", "Tate McRae", 3)
song2 = Song.new("alkeline", "Sleep Token", 5)
song3 = Song.new("Tea Leaves", "Our Last Night", 4)

playlist = Playlist.new("My Playlist")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

playlist.each { |song| song.play }
sleep_token_songs = playlist.select { |song| song.artist == "Sleep Token" }
puts sleep_token_songs.inspect

playlist.each_tagline { |tagline| puts tagline }
playlist.each_by_artist("Sleep Token") { |song| song.play }

