require 'pry'
#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/danny/Development/jukebox-cli-nyc-web-career-031119/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "-  help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end
binding.pry


def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
    puts "Please enter a command:"
    response = gets.chomp

    case response
    when "exit"
      exit_jukebox
      break
      when "help"
        help
      when "list"
        list(my_songs)
        play(my_songs)
      when "play"
        play(my_songs)
      else
        puts "Invalid input, please try again"
        puts "Please enter a command:"
        response = gets.chomp
      end
  end
end
