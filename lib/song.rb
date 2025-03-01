class Song
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    attr_accessor :name, :artist, :genre
    def self.count
        @@count
    end
    def self.genres
        genres = @@genres.uniq
    end
    def self.artists
        artists = @@artists.uniq
    end
    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each do |count|
            genre_count[count] += 1
          end
          genre_count
    end
    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each do |count|
            artist_count[count] += 1
          end
          artist_count
    end
end