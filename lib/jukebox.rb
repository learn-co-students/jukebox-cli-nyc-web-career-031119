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
# practice gets code:====================
# def say_hello(name)
#   "Hi #{name}!"
# end# puts "Enter your name:"
# users_name = gets.chomp
# puts say_hello(users_name)===============
#ruby lib/jukebox.rb

def help
# if user_input == "help"
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end
# end

def list(songs)
 i=0
 count = 0
 while i < songs.length
   puts "#{count+=1}. #{songs[i]}"
   i+=1
    end
  end


#ruby lib/jukebox.rb

def play(songs)

  puts "Please enter a song name or number:"
  song_input = gets.chomp
  number = song_input.to_i - 1
    #binding.pry
  if song_input == "exit"
    exit_jukebox
  elsif number < 0 && songs.include?(song_input) #gives us name when name input
     index = songs.index(song_input)
    puts "Playing #{songs[index]}"
     binding.pry
   elsif number >=0 && songs[number] != nil #gives us name with index (not a nil)
    puts "Playing #{songs[number]}"
  else
    puts "Invalid input, please try again"
    #binding.pry
    end
  end


def exit_jukebox

    puts "Goodbye"
  end

def run(songs)
commands =  ["help", "list", "play", "exit"]
help
puts "Please enter a command:" #must be call After def is declaired
user_input = gets.chomp
    while !commands.include?(user_input)
       puts "Please enter a command:"
       input = gets.strip
     end

    case user_input
    when "help"
       help
    when "list"
     list(songs)
    when "play"
      play(songs)
    when "exit"
       exit_jukebox
    else
      puts "Invalid input, please try again"
    end
end

# ruby lib/jukebox.rb
#
# puts "Please enter a command:" #must be call After def is declaired
# user_input = gets.chomp
# puts help(user_input)
# puts list(user_input, songs)
# puts play(user_input, songs)
# puts exit_jukebox(user_input)
