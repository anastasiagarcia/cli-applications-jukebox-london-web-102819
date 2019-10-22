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
    puts "#{i}. #{song}"
  }
end

def play(songs) 
  puts "Please enter a song name or number:"
  answer=gets.strip
  song_number=answer.to_i
  if song_number>=1 && song_number<=songs.length
    song_playing=songs[song_number-1]
    puts "Playing #{song_playing}"
  else
    playing_song=songs.detect {|song| answer == song}
    if playing_song!= nil 
      puts "Playing #{playing_song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox 
  puts "Goodbye"
end