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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  name = gets.chomp
  if 0 < name.to_i && name.to_i < 10
    puts "Playing #{songs[name.to_i-1]}"
  elsif songs.include?(name)
    puts "Playing #{name}"
  else
    puts "Invalid input, please try again"
  end
end

def list (songs)
  songs.each_with_index { |song, ind| puts "#{ind+1}. #{song}" }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  while command != "exit"
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Please use valid command."
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  exit_jukebox

end
