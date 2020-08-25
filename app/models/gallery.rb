class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paint| paint.gallery==self}
  end

  def artists
    self.paintings.map(&:artist).uniq
  end

  def artist_names
    self.artists.map(&:name)
  end

  def most_expensive_painting
    self.paintings.max_by{|paint| paint.price}
  end

end