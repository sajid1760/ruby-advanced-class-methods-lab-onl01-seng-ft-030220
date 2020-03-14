class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    initialize
    save
    self
  end
  
end

song3 = Song.create

puts Song.all.include?(song3)