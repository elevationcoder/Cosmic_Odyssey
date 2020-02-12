class CosmicOdyssey::CLI 
  
  def call 
    #get_system_bodies
    #get_planets
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
  
  end
  
  def get_system_bodies
    #will be scraped
    @planets = ["Mercury", "Venus", "Earth", "Mars"]
  end
  
  def get_planets
    #list planets
    @planets.each_with_index { |index, planet| 
      puts "#{index} #{planet}"
    }
      
  end
  
end
