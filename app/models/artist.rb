class Artist

  attr_reader :name, :years_experience
  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all <<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paint| paint.artist==self}
  end 

  def galleries
    self.paintings.map(&:gallery).uniq
  end 

  def cities
    self.galleries.map(&:city).uniq
  end

  def self.total_experience
    @@all.map(&:years_experience).reduce(0,:+)
  end

  def self.most_prolific
    @@all.max_by{|art| art.paintings.length/art.years_experience}
  end

  def create_painting (title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
