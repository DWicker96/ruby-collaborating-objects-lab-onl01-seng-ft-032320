class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_name = filename.split(" - ")[1]
        artist_name = filename.split(" - ")[0]
        song = self.new(song_name)
        song.artist = Artist.new(artist_name)
        song
                  
    end

      def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
      end

end
    