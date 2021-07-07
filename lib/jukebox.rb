require 'pry'

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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip 
  if (1..9).include?(song.to_i)
   puts "Playing #{songs[song.to_i-1]}"
  elsif songs.include?(song)
    puts "Playing #{song}"
  else
   puts "Invalid input, please try again"
 end 
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1} #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  if command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "help"
    help 
  else 
    exit_jukebox
  end 
end 

 