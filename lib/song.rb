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
    person = self.new
    person.save
    person
  end
  
end

song3 = Song.create


puts song.all.include?(song3)