class CosmicOdyssey::Scraper
  def scrape_planets
    site = "https://nineplanets.org/kids/"
    
    page = Nokogiri::HTML(open(site))
end