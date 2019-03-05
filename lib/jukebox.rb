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
    puts "I accept the following commands: \n
    - help : displays this help message \n
    - list : displays a list of the songs you can play \n
    - play : lets you choose a song to play \n
    - exit : exits the program"
end

def list(songs)
  i = 0
  while i < songs.length
    puts "#{i+1}. #{songs[i]}"
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  num = user_response.to_i
  foo = ""
  i = 0
  while i <= songs.length
  if num == i+1 || user_response == songs[i]
    foo << "Playing #{songs[i]}"
  end
  i += 1
  end
  if foo.length == 0
  puts "Invalid input, please try again"
  else
  puts foo
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
puts "Please enter a command"
  user_input = gets.chomp
    if user_input == "exit"
      exit_jukebox
    elsif user_input ==  "play"
      play(songs)
      run(songs)
    elsif user_input == "help"
      help
      run(songs)
    elsif user_input == "list"
      list(songs)
      run(songs)
    else
      puts "Invalid input, please try again"
      run(songs)
    end
end

run(songs)
