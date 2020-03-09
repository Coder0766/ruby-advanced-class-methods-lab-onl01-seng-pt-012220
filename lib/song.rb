class Song

  @@all= []

  attr_accessor :name, :artist_name

  def initialize(name, artist_name)
    @name= name
    @artist_name= artist_name
  end

  def self.all
    @@all
  end

  def self.save
    self.class.all<< self
  end

  def self.create
    # binding.pry
    song = self.new("name","artist_name")
    @@all << song
    song
  end

  def new_by_name
    song= self.create
    song
  end


end
