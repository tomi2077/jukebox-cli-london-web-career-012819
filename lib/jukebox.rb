
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
  puts "Please enter a song name or number: "
  user_response = gets.chomp()
  
  if (1..9).to_a.index(user_response.to_i) != nil
    puts "playing #{songs[user_response.to_i - 1]}"
  elsif songs.index(user_response) != nil
    puts "playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index| 
    puts "#{index +1}. #{song}" 
  end 
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  puts "Please enter a command: "
  response = gets.chomp()
  
  while response != "exit"
  
    case response
      when "list"
        list
      when "play"
        play
      when "help"
        help
      when "exit"
        exit_jukebox
    else
      puts "Invalid command"
      help()
    end
  end
end



