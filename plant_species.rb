class PlantSpecies
    
    attr_reader :name, :type, :months_for_planting, :days_to_maturity_min, :days_to_maturity_max, :difficulty

    @@plant_species = []

    def initialize (name, type, months_for_planting, days_to_maturity_min, days_to_maturity_max, difficulty)
        @name = name #string
        @type = type #string
        @months_for_planting = months_for_planting #string or string array?? Very open to other names for this one
        @days_to_maturity_min = days_to_maturity_min #Integer, average would be used as usually presented as a range e.g.e 70~90 days = 80
        @days_to_maturity_max = days_to_maturity_max #Integer, average would be used as usually presented as a range e.g.e 70~90 days = 80
        @difficulty = difficulty #string
    
        
    def PlantSpecies.add_plant_species (plant)  
      @@plant_species << plant  
    end

    def PlantSpecies.show_list
      index = 1
      system 'clear'
      puts ""
      puts "                 Plants Wiki, select one".red
      puts ""
      @@plant_species.each do |plant|
        puts "                      [#{index}] ".red + "#{plant.name}".green
        index += 1
      end
      input = gets.strip.to_i
      index = nil
      if input <= @@plant_species.length
        index = input - 1
        @@plant_species[index].show_info
      else
      end    
    end

    def show_info
      title 
      puts ""
      puts ""
      puts "Name: ".red  + self.name
      puts "Type: ".red + self.type
      puts "Suitable Months to plant (Southern Hemisphere): ".red 
      puts "      #{self.months_for_planting}"
      puts "Days to Maturity: ".red + self.days_to_maturity_min.to_s + " ~ " + self.days_to_maturity_max.to_s
      puts "Degree of difficulty: ".red + self.difficulty
    end
    
    def PlantSpecies.add_to_garden(user, i)
      index = 1
      system 'clear'
      puts ""
      puts "                Please select plant to add".red
      puts "                      [B]ack".red
      
      @@plant_species.each do |plant|
        puts "                      [#{index}] ".red + "#{plant.name}".green
        index += 1
      end
      input = gets.strip.to_i
      index = input - 1
      today = Date.today
      new_plant = Plant.new(date_planted: today , plant_species: @@plant_species[index]) 
      user.gardens[i].add_plant(new_plant)
      puts "#{user.gardens[i].plants_planted.last.plant_species.name} has been added."

    end    
        

        #above two will be used when give_suitable_plants is used 

        #Maybe will use:
        #@tips = tips #string
    end # end initialize
end