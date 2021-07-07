require "pry"

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
  puts  "I accept the following commends:"
  puts  " - help : displays this help message"
  puts  " - list : displays a list of songs you can play"
  puts  " - play : lets your choose a song to play"
  puts  " - exit : exits this program"
end

def list(list_of_songs)
  counter = 0
  while counter < list_of_songs.length
    puts "#{counter+1}. #{list_of_songs[counter]}"
    counter += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs_list)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  
  if (user_input.to_i < 10 && user_input.to_i > 0)
    puts "Playing #{songs_list[user_input.to_i - 1]}"
  end
  
  songs_list.each do |song|
    if user_input == song
      puts "Playing #{song}"
    end
  end
  
  puts "Invalid input, please try again"
end

def run(jukebox_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  until command == "exit"
    if command == "list"
      list(jukebox_songs)
    elsif command == "play"
      play(jukebox_songs)
    elsif command == "help"
      help
    end
    help
    puts "Please enter a command:"
    command = gets.chomp
  end
  
  if command == "exit"
    exit_jukebox
  end
end  