class Garden
# - area: integer. In sq. metres
# - climate: string
# - location/city: string
# - sunlight per year: integer
# - plants_planted: array of instances of the class plant

    attr_accessor :name, :area, :climate, :location, :sunlight, :plants_planted

    def initialize(name:, area:, climate:, location:, sunlight:)
        @area = area
        @name = name
        @climate = climate
        @location = location
        @sunlight = sunlight
        @plants_planted = []
    end # initialsze

    # Add plant to plants array 
    def add_plant(plant)
        @plants_planted << plant
    end # def garden

  def show_progress
    index = 1
    @plants_planted.each do |plant|
      show_plant_progress(plant, index)
      index += 1
    end
  end

  def show_plants_in_garden(user, i)
    system 'clear'
    title
    puts "                      [1] ".red + "Add Plants                                  ".green
    puts "                      Plants already planted".red
    index = 2
    @plants_planted.each do |plant|
      puts "                      [#{index}] ".red + "#{plant.plant_species.name}*                                  ".green
      index += 1
    end
    input = gets.to_i
    PlantSpecies.add_to_garden(user, i) if input = 1
    sleep 3  
  end
end # end class Garden

