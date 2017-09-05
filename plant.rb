class Plant
# Needs
# - date_planted: date
# - plant_species: instance of class plant species

    attr_accessor :date_planted, :plant_species

    def initialize(date_planted:, plant_species:)
        @date_planted = date_planted
        @plant_species = plant_species
    end # initialize

    def get_maturity_date_min
        # start from date_planted and work out resulting date
        # after number of days to maturity
        date_planted.next_day(plant_species.days_to_maturity_min)
    end # get_maturity_date
    
    def get_maturity_date_max
        # start from date_planted and work out resulting date
        # after number of days to maturity
        date_planted.next_day(plant_species.days_to_maturity_max)
    end # get_maturity_date

    def get_days_elapsed
          # Start at date planted and count the number of
        # days to go forward until today to find out number
        # of days elapsed
        today = Date.today
        temp_date = date_planted
        day_counter = 0
        while ( (temp_date <=> today) ==  -1 ) 
            temp_date = temp_date.next_day(1)
            day_counter = day_counter + 1
        end # while ( (temp_date <=> today) ==  -1 )
        day_counter
    end # get_days_elapsed

  def get_days_until_harvest_min
       # Start at minimum maturity date and count the number of
        # days to go back until today to find out minimum number
        # of days until harvest 
        today = Date.today
        temp_date = get_maturity_date_min
        day_counter = 0
        while ( (temp_date <=> today) == 1 )
            temp_date = temp_date.prev_day(1)
            day_counter = day_counter + 1
        end # while ( (temp_date <=> today) == 1 )
        day_counter 
    end # get_days_until_harvest_min

    def get_days_until_harvest_max
        # Start at maximum maturity date and count the number of
        # days to go back until today to find out maximum number
        # of days until harvest 
        today = Date.today
        temp_date = get_maturity_date_max
        day_counter = 0
        while ( (temp_date <=> today) == 1 )
            temp_date = temp_date.prev_day(1)
            day_counter = day_counter + 1
        end # while ( (temp_date <=> today) == 1 )
        day_counter 
    end # get_days_until_harvest



end # class PLant