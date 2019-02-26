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

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_hash = Hash.new
  songs.each_with_index do |song, index|
    song_hash[song] = index + 1
  end
  song_hash
  song_name = gets.chomp
  if (song_name.to_i > 0) && (song_name.to_i <= songs.size)
    song_num = song_name.to_i
    song_hash.each do |name, number|
      if song_num == number
        puts "Playing #{name}"
      end
    end
  elsif songs.include?(song_name)
    song_hash.each do |name, number|
      if song_name == name
        puts "Playing #{name}"
      end
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
    end
  end
end
