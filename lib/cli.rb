require_relative "../lib/api.rb"
require_relative "../lib/songmaster.rb"

class Songmaster::CLI
  
  def greeting
    list_songs 
    choose  
    goodbye
  end 
  
  def list_songs 
    puts "songs "
    puts "Spotifys top 50 songs" 
  @songs = Songmaster::Songs 
  end 
  
  def choose
    input = nil 
    while input != exit 
    "choose a song you would like to know more about?"
    input = gets.strip
    case input 
    when 1 
      puts more info on song 1
      when 2 
        puts more info on song 2
        end 
        
        def goodbye 
         puts "Thanks for checking out the top 50 spotify songs.
          see you next time!"
        end 


end 