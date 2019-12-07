require 'pry'

class Artist 
  
  attr_accessor :name, :albums, :tracks
  
 @@all = []
 
  def initialize(name)
    @name = name 
    @albums = []
  end 
  
  def self.all
    @@all
  end 
  
  def self.create(name)
    Artist.name = self
    @@all << self
  end 
  
  
  def self.new_from_api(artist_name)
    API.find_artist(artist_name)
    artists = artist
    artist = self.new(artist_name)
    artist
  end 
  
  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end
    
    
     def add_album(name)
  
end 

end 
artist = Artist.new('John Mayer')
artist.albums

