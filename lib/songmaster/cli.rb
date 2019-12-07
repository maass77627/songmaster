

class Songmaster::CLI
  
  def call
    puts "Welcome to songmaster! Your friendly music database!"
    start
    choose 
    goodbye
  end 
  
  def start 
    puts ""
    puts "Enter the name of an artist you would like to see albums for, or type exit." 
   input = gets.strip 
   API.get_albums(input)
  end 
  
  def choose
   puts ""
    puts "Which album would you like to see tracks from?"
    input = gets.strip
    Album.tracks(input)
        end 
        
        def goodbye 
         puts "Thanks for checking out Songmaster!
          See you next time!"
          API.get_artist(Usher)
        end 


end 

