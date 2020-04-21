class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    self.all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def self.find_by_name(name)
    result = self.all.detect { |song| song.name == name }
    result
  end
  
  def self.find_or_create_by_name(name)
    
  end
  
  def self.alphabetical
    
  end
  
  def self.new_from_filename(filename)
    
  end
  
  def self.create_from_filename(filename)
    
  end
  
  def self.destroy_all
    self.all.clear
  end

end
