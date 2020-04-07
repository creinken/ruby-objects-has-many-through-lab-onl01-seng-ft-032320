class Artist

    #### Attributes ####
    attr_accessor :name
    @@all = []

    #### Instance Methods ####
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres
        songs.collect {|song_obj| song_obj.genre}
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
