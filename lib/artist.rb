class Artist 
  
  class Artist

  attr_reader :name, :tracks, :albums

  def initialize(name)
    @artist = API.get_artist(name)
    @albums = API.get_albums(@artist)
    @tracks = API.get_songs_from_album(@artist, 4)
  end

end


artist = Artist.new('John Mayer')
puts artist.albums
puts "==============="
puts artist.tracks