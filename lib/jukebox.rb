songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts  "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  # valid_song = String
  
  songs_array.each_with_index do |song, song_index|
    if user_input.to_i == song_index+1 || user_input == song
      puts "Playing #{song}"
    else
     puts  "Invalid input, please try again"
    end
  end
end

def list (songs_array)
  songs_array.each_with_index do |song, song_index|
    puts "#{song_index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  
  help
  puts "Please enter a command:"
    user_response = gets.chomp
if user_response == "exit"
  exit_jukebox
  
else
  until user_response == "exit"
     
        if user_response == "list"
          list(songs_array)
        elsif user_response == "play" 
          play(songs_array)
        elsif user_response == "help"
          help
        else user_response == "exit"
          exit_jukebox
        end
        
      puts "Please enter a command:"
      user_response = gets.chomp
  end
  
end
end
