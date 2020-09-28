class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []


  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(genre)
    genre = self.new(genre)
    genre.save
    genre

  end

  def songs
    @songs
  end

  def artists
    @genre_array = []
    @songs.each do |song|
      if @genre_array.include?(song.genre)
        nil
      else
        @genre_array << song.genre
      end
    end
    @genre_array
  end


end
