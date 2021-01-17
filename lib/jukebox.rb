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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_name, index| 
    index = index + 1 
    puts "#{index}. #{song_name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  reply_string = "Invalid input, please try again"
  
  songs.each_with_index do |song_name, index|
    
    if user_response == (index + 1).to_s || user_response == song_name
      reply_string = "Playing #{song_name}"
    end
  end
  
  puts reply_string
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_response = ""
  
  while user_response
    puts "Please enter a command:"
    user_response = gets.downcase.strip
    
    case user_response
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
    
  end
end 


