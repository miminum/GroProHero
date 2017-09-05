require 'colorize'
require 'date'
require 'yaml'
require 'awesome_print'
require_relative 'menu'
require_relative 'user'
require_relative 'art'
require_relative 'garden'
require_relative 'plant'
require_relative 'plant_species'
require_relative 'progress_bar'

#-----CREATE TEST USER-------
test_user = User.new(first_name: 'Joe', skill_level: 'easy', email: 'farmerjoe@farm.com')
User.add_user(test_user)
#------CREATE TEST GARDEN------
test_garden = Garden.new(name: 'backyard', area: 1, climate: 'hot and dry', location: 'Melbourne', sunlight: 6)
test_user.add_garden(test_garden)
#-----PLANT SPECIES DATA-----
carrot = PlantSpecies.new('Carrot', 'Root Vegetable', 'January, February, March, April, May, September, October, November, December', 50, 80, 'easy')
potato = PlantSpecies.new('Potato', 'Root Vegetable', 'January, February, March, April, May, September, October, November, December', 100, 130, 'easy')
broccoli = PlantSpecies.new('Broccoli', 'Cruciferous Vegetable', 'February, March, April', 70, 100, 'hard')
celery = PlantSpecies.new('Celery', 'Marshland Plant', 'September, October', 130, 140, 'hard')
chives = PlantSpecies.new('Chives', 'Perennial Herb', 'January, February, March, April, May, September, October, November, December', 55, 65, 'easy')
coriander = PlantSpecies.new('Coriander', 'Annual Herb', 'April, May, June, July, September', 60, 75, 'easy')
lettuce = PlantSpecies.new('Lettuce', 'Annual Plant', 'January, February, March, April, May, June, July, August, September, October, November, December', 56, 84, 'easy')
onion = PlantSpecies.new('Onion', 'Perennial Vegetable', 'February, May, June, July, August', 100, 120, 'easy')
oregano = PlantSpecies.new('Oregano', 'Perennial Herb', 'January, February, March, April, May', 50, 60, 'easy')
radish = PlantSpecies.new('Radish', 'Root Vegetable', 'January, February, March, April, May, June, July, August, September, October, November, December', 35, 49, 'easy')
tomato = PlantSpecies.new('Tomato', 'Fruit', 'September, October', 60, 120, 'hard')
#-----------INSERT PLANTSPECIES INTO CLASS VARIABLE ARRAY----------
PlantSpecies.add_plant_species (carrot) 
PlantSpecies.add_plant_species (potato) 
PlantSpecies.add_plant_species (broccoli) 
PlantSpecies.add_plant_species (celery) 
PlantSpecies.add_plant_species (chives) 
PlantSpecies.add_plant_species (coriander) 
PlantSpecies.add_plant_species (lettuce) 
PlantSpecies.add_plant_species (onion) 
PlantSpecies.add_plant_species (oregano) 
PlantSpecies.add_plant_species (radish) 
PlantSpecies.add_plant_species (tomato)
#------------CREATE TEST PLANTED PLANTS----------------
date_planted = Date.parse('2017-6-20')
my_carrot = Plant.new(date_planted: date_planted , plant_species: carrot)
date_planted = Date.parse('2017-6-28')
my_potato = Plant.new(date_planted: date_planted, plant_species: potato)
#-----------PLANT TEST PLANTS--------------------------
test_garden.add_plant(my_carrot)
test_garden.add_plant(my_potato)
#-----------GNOME ANIMATION-----------------
gnome_animate
main_menu
