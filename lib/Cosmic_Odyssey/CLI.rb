class CosmicOdyssey::CLI 
  
  def call 
    
    #get_planet_info
    puts " \n ____________________________ \n"
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
    # @planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune""\n\n"]
    @planets = CosmicOdyssey::Planet.all
  end
  
  def get_planets
    #list planets
    puts "Choose a Planet to start our journey!!\n\n\n"
    @planets.each.with_index(1) { |planet, index| 
      puts "#{index} #{planet}"
    }
  end
  
  def get_user_planets
    chosen_planet = gets.strip.to_i
    show_planet(chosen_planet) if valid_input(chosen_planet.to_i, @planets)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_planet(chosen_planet)
    planet = @planets[chosen_planet-1]
    puts "\n\n\nWelcome to #{planet}!\n\n\n"
    # CosmicOdyssey::Planet.all.each.with_index(1) do |planet|
    #   puts planet.name
    # end
    #get_user_planets
  end
  
end
