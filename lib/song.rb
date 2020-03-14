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

  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new 
    song.save
    song.name = name
    song
  end
  
  def self.find_by_name(name)
  
end

song3 = Song.create

song5 = Song.create_by_name("The Middle")

puts Song.all.include?(song5)