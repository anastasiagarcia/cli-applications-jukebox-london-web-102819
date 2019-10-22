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
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def list(songs) 
  i=0
  songs.each {|song|
    i+=1
    puts "#$i. #$song"
  }
end

def play(songs) 
  puts "Please enter a song name or number:"
  answer=gets.strip
  if answer.to_i>=1 || answer.to_i<=songs.length
    puts "Playing #$songs[answer.to_i]"
  end
  
#else
  puts "Invalid input, please try again"
end

def exit_jukebox 
  puts "Goodbye"
end