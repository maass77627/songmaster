class Songmaster::Album
  
  attr_accessor :name, :tracks
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
 
  
  
  
end 