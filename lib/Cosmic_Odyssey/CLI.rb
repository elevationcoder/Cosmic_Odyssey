class CosmicOdyssey::CLI 
  
  def call 
    
    #get_planet_info
    puts " ____________________________ "
    puts "|                            |"
    puts "|****************************|"
    puts "| Welcome to COSMIC ODYSSEY! |"
    puts "|****************************|"
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
    get_user_planets
  end
  
  def get_system_bodies
    #will be scraped
    @planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
  end
  
  def get_planets
    #list planets
    puts "Choose a Planet to see info by selecting corresponding number"
    @planets.each.with_index(1) { |planet, index| 
      puts "#{index} #{planet}"
    }
  end
  
  def get_user_planets
    chosen_planet = gets.strip
    binding.pry 
  end
  
end
