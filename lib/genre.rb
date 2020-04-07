class Genre

    #### Attributes ####
    attr_accessor :name
    @@all = []

    #### Instance Methods ####
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song_list| song_list.genre == self}
    end

    def artists
        songs.collect {|song_obj| song_obj.artist}
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
