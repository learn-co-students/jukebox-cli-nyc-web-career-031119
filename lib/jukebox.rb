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
  puts "-  help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end

def list(my_songs)
  my_songs.each_with_index do |song,index|
  puts "#{index+1}. #{song}"
end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
    if my_songs.include?(answer)
      puts "Playing #{answer}"
    elsif answer == "exit"
      exit_jukebox
    elsif answer.to_i < 1 || answer.to_i > my_songs.length
    puts "Invalid input, please try again"

    elsif answer.to_i != 0
      puts "Playing #{my_songs[answer.to_i-1]}"
    elsif answer == "exit"
      exit_jukebox

end
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
