#require 'pry'
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if (1..9).include?(user_input.to_i)
   puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
   puts "Invalid input, please try again."
 end
end


def list(songs)
  songs.each_with_index do |song, index|
  puts "#{index + 1}. #{song}"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  #binding.pry
  while user_input = gets.chomp
    case user_input
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "Incorrect command."
    end
    end
  end
