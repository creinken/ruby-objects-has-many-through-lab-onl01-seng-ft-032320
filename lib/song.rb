class Song

    #### Attributes ####
    attr_accessor :name, :artist, :genre
    @@all = []
    #### Instance Methods ####
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
