class CosmicOdyssey::Planet
  attr_accessor :name, :dfs, :description, :url, :fun_fact, :brief_history_0, :brief_history_2, :brief_history_3, :brief_history_4
  
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
    "\n\nDistance from sun: #{dfs || "Irrelevant for this one.\n"}\n"
  end
  
  
end