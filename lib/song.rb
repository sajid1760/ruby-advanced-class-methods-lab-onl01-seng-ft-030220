class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    save
    self
  end
  
end

song3 = Song.create

puts Song.all.include?(song3)