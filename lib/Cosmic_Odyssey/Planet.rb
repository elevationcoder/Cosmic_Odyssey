class CosmicOdyssey::Planet
  attr_accessor :name, :dfs, :description, :url
  
  def initialize(name)
    @name = name
    save
  end
  
  @@all = []
  
  def self.all
    CosmicOdyssey::Scraper.scrape_planets if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
  def distance_from_sun
    "Distance from sun: #{dfs || "Irrelevant for this one."}"
  end
  
end