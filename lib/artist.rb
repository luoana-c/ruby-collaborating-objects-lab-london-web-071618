require 'pry'
require_relative 'song.rb'
require_relative 'mp3_importer.rb'

class Artist
  attr_accessor :name, :songs, :save

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name(name)

  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

# artist = Artist.new('Michael Jackson')
# artist.save
#
# binding.pry
# p "bla"
