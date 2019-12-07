class Songmaster::Artist 
  
  attr_accessor :name, :albums, :tracks
  
 @@all = []
 
  def initialize(name)
    @name = name 
    @@all << self
    @albums = []
  end 
  
  def self.all
    @@all
  end 
  
end 