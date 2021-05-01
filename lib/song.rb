class Song
    @@all = [] #class variable set to an array
    attr_accessor :name, :artist #artist belongs to an artist

    #new - initialized with an argument of name
    #pushes new instances into class variable called @@all upon intialization
    def initialize(name)
        @name = name
        @@all << self 
    end

    #artist_name = knows name of its artist
    #returns nil of song doesnt have an artist
    def artist_name
        artist.name if artist
    end

    #.all = class method that returns an array of all song instances that was created 
    def self.all
        @@all
    end
end