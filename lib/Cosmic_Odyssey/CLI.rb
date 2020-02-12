class CosmicOdyssey::CLI 
  
  def call 
    
    #get_planet_info
    puts " ____________________________ "
    puts "|                            |"  
    puts "| Welcome to COSMIC ODYSSEY! |"
    puts "|____________________________|"
    puts
    puts
    puts
    puts  "--------START  EXIT----------"
    puts
    puts
    puts
    get_system_bodies
    get_planets
  end
  
  def get_system_bodies
    #will be scraped
    @planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
  end
  
  def get_planets
    #list planets
    @planets.each_with_index { |planet, index| 
      puts "#{index+1} #{planet}"
    }
      
  end
  
end
