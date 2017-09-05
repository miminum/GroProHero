require 'colorize'
require "awesome_print"
#================================================
def show_plant_progress(plant, index) #function for visually presenting progress: each 'tomato' represents 10% of the maximum time til harvesting
    #key - no colour: date not passed
    #         yellow: date passed; not ready for harvest
    #          green: date passed; also past min days til harvest
    #            red: only for days passed over max days til harvest 

  days_elapsed = plant.get_days_elapsed
  puts "              #{index.to_s.yellow + '.'}<< #{plant.plant_species.name.cyan} >> Planted on #{plant.date_planted.to_s}  "
     
  #show 10%
  print '              '
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.10
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.10
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 20%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.20
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.20
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 30%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.30
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max  * 0.30
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 40%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.40
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.40
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 50%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.50
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.50
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 60%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.60
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.60
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 70%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.70
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.70
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 80%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.80
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.80
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 90%
  if days_elapsed < plant.plant_species.days_to_maturity_max * 0.90
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max * 0.90
    if days_elapsed >= plant.plant_species.days_to_maturity_min
        print '🍅 '.green
    else
        print '🍅 '.yellow
    end
  end
  #show 100%
  if days_elapsed < plant.plant_species.days_to_maturity_max
    print '🍅 '
  elsif days_elapsed >= plant.plant_species.days_to_maturity_max
    print '🍅 '.green
  end
  #show 110%
  if days_elapsed > plant.plant_species.days_to_maturity_max * 1.10
    print '🍅 '.red
  end
  #show 120%
  if days_elapsed > plant.plant_species.days_to_maturity_max * 1.20
    print '🍅 '.red
  end

  puts ''
  puts "              Days elapsed: #{days_elapsed.to_s.yellow} | Days to harvest #{plant.get_days_until_harvest_min.to_s.yellow} ~ #{plant.get_days_until_harvest_max.to_s.yellow}"
  puts ''
  
end #show_plant_progress
#================================================