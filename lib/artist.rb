class Artist
    attr_accessor :name 

    @@all = []
#new = is initialized with name
#name = has an attr_accessor for name
 def initialize(name)
    @name = name
    @@all << self
 end

 def self.all
    @all
 end 

#add_song
#takes in argument of a song and associates that song with artist
#by telling the song that it belongs to the artist 
 def add_song(song)
    song.artist = self
 end

 #songs - has many songs
 def songs
    Song.all.select {|song| song.artist == self}
 end

#add_song
#takes in an argument of a song and associates that song with the artist 
#by telling the song that it belongs to that artist
 def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self 
 end

 #song_count - is a class method that returns total number of songs
 #associated to all existing artist
 def self.song_count #class method: self.
    Song.all.count #.count returns number of elements
 end

end
