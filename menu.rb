def main_menu
  loop do
    system 'clear'
    title
    puts "                      [1] ".red + "New Account                                  ".green
    puts "                      [2] ".red + "Log in                                       ".green
    puts "                      [3] ".red + "Random Plant Info                            ".green
    puts "                      [X] ".red + "Exit                                         ".green

    choice = gets.strip
    case choice
      when '1'
        sign_up_account
      when '2'
        sign_into_account  
      when '3'
        PlantSpecies.show_list
        input = gets.strip
      when 'X', 'x'
        exit
      else
      puts "Invalid choice: #{choice}"
      sleep 3
    end
  end
end

def sign_up_account
  system 'clear'
  title
  puts "                      Sign up Page".red
    # Ask user to enter email address
  puts "Please enter your email address:"
  email = gets.strip
  # Ask user to enter first name address
  puts "Please enter your first name:"
  first_name = gets.strip
  # Ask user to enter last name address
  skill_level = nil
  loop do 
    puts "Please enter your gardening skill level; [B]eginner or [A]dvanced:"
    input = gets.strip
    case input
      when 'B', 'b'
        skill_level = 'easy'
        break
      when 'A', 'a'
        skill_level = 'hard'
        break
      else
        puts "#{input} is not a valid choice"
    end
  end
  puts "Put a name for your garden (eg: backyard right, backyard #1):"
  garden_name = gets.strip

  new_account = User.new(first_name: first_name, email: email, skill_level: skill_level)
  User.add_user(new_account)
  new_garden = Garden.new(name: garden_name, area: nil, climate: nil, location: nil, sunlight: nil)
    
  # Associate garden with user in garden array
  new_account.add_garden(new_garden)
  
  # Create new garden with user details
  puts "Account for #{User.last_email} has been succesfully created"
  sleep 3
end

def sign_into_account
  system 'clear'
  title
  puts "Log in Page".red
  
  user = nil
  until user # Keep running the code inside until we have an user
    puts "Please type in your email:"
    email = gets.strip
        
    user = User.find_user_for_email(email)
    #If no account was found
    puts "No account found for email: #{email}" if user.nil? 
        
  end
  user
  logged_in_menu(user)
end

def logged_in_menu(user)
  loop do
    system 'clear'
    title
    puts "                   My Menu for #{user.email} ".red 
    puts ""
    puts "                      [1] ".red + "Add Garden                                  ".green
    puts "                      [2] ".red + "Progress Bar                                  ".green
    puts "                      [3] ".red + "Logoff                                  ".green
    user.display_gardens_for_user
    puts "                     [99] ".red + "Add to plants wiki                                 ".green if user.skill_level == 'hard'
    input = gets.strip.to_i
    
    if input == 1
      add_garden_to_user (user)
    elsif input == 2
      user.display_progress_bars_for_gardens
      system 'clear' 
    elsif input == 3
      puts ""
      puts "                      Logoff initialising".red.bold
      sleep 2
      break
    elsif input > 3   
      system 'clear'
      i = input - 4
      user.gardens[i].show_plants_in_garden(user, i)
      selection = gets.strip
    else
    end
  end  
end

def add_garden_to_user (user)
   puts "                Add a new garden for #{user.email} ".red
   puts ""
   puts "             What would you like to name this garden?"
   garden_name = gets.strip
   new_garden = Garden.new(name: garden_name, area: nil, climate: nil, location: nil, sunlight: nil)
   user.add_garden(new_garden)

   puts "Garden, #{user.gardens.last.name} has been added"
end
  