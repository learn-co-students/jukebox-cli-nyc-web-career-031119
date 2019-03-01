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
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  songs.each do |x|
    puts "#{i+1}. #{songs[i]}"
    i+=0
  end
end

def play(songs)
  numbered_choices = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  
  
  puts "Please enter a song name or number:"
  requested = gets.chomp
  if songs.include?(requested)
    puts "Playing #{requested}"
  elsif numbered_choices.include?(requested)
    index = numbered_choices.index(requested) 
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = gets.chomp
    if answer == "list"
      list(songs)
    elsif answer == "play"
      play(songs)
    elsif answer == "help"
      help
    elsif answer == "exit"
      exit_jukebox
    end
end