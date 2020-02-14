class CosmicOdyssey::CLI 
  
  def call 
    
    #get_planet_info
    puts <<~DOC
      ____________________________ 
     |                            |
     |****************************|
     | Welcome to COSMIC ODYSSEY! |
     |****************************|
     |____________________________|
    
     Our solar system is a an
     amazing amphitheater full of 
     all sorts of amazing and 
     interesting things, that we 
     have yet to explore. However,
     we as people still know a fair
     amount of cool and fun things
     to learn! Sit back, relax and
     have fun on your...
     
     ****** COSMIC ODYSSEY!! ******
     
     
     To continue to another page, 
     follow the instructions at the
     bottom of each page.
     
     
    
     --------START  EXIT----------
    
      DOC
      puts "Type START to start or EXIT to exit"
      start_or_exit
    end
    
    def start_or_exit
      user_input = gets.strip
      user_input = user_input.downcase
      
      case user_input
        when "start"
          start_app
        when "exit"
          goodbye
        else
          puts " Incorrect selection! Try it again!"
          start_or_exit
      end
    end
    
    def start_app
    @input = ""
    until @input == "exit"
      get_system_bodies
      get_planets
      get_user_planets
      seen_enough
    end
    goodbye
  end
  
  def get_system_bodies
    #will be scraped
    
    @planets = CosmicOdyssey::Planet.all 
    # binding.pry 
  end
  
  def get_planets
    #list planets
    puts "\n\n\nChoose a Planet, by typing in the number corresponding to the planet", "to start our journey!!\n\n\n"
    @planets.each.with_index(1) { |planet, index, name| 
      puts "#{index}. #{planet.name}"
    }
  end
  
  def get_user_planets
    chosen_planet = gets.strip.to_i
    if chosen_planet < 1 || chosen_planet > @planets.size
      puts "Incorrect selection! Try again!"
      # binding.pry
      get_user_planets
    else
      
      show_planet(chosen_planet) if valid_input(chosen_planet.to_i, @planets)
      
      # binding.pry
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_planet(chosen_planet)
    planet = @planets[chosen_planet-1]
    puts "\n\n\nWelcome to #{planet.name}!\n\n\n"
    CosmicOdyssey::Scraper.update_planet(planet)
    puts <<~DOC
     #{planet.description}
     #{}
     #{planet.brief_history_0}
     #{}
     #{planet.brief_history_2}
     #{}
     #{planet.brief_history_3}
     #{}
     #{planet.brief_history_4}
     #{}
     #{planet.fun_fact}
     
     DOC
  end
  
  def seen_enough
    puts "--Seen enough? Type 'exit' to return home--\n", "\n--To see another celestial body hit any key.--"
    @input = gets.strip
  end 
  
  def goodbye
    puts "\n\nSEE YOU NEXT TIME ON...COSMIC ODYSSEY!!"
  end 

  
  
  
end
