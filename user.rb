class User
  attr_accessor :email, :first_name, :skill_level, :gardens
  # Class variable @@users so that we can store user data in an array so that we can find their data when they log in
  @@users = []

  def initialize(first_name:, email:, skill_level:)
    @gardens = []
    @email = email
    @first_name = first_name
    @skill_level = skill_level
  end
  # Class method to add user into the users array
  def User.add_user(user)
    @@users << user
  end

  def add_garden(garden)
    @gardens << garden
  end
  # Class method to show the last email of user who signed up 
  def User.last_email
    @@users.last.email
  end
  # Class method to find email of user who logged in 
  def User.find_user_for_email(email)
    # Hold the user with the specified email
    found_user = nil
    # We loop through each user that we have
    @@users.each do |user|
      # Check if this particular user has the specified email
      if user.email == email
        #If so, we have found our user
        found_user = user
        break # so once account is found, it exits from the loop
      end # if end 
    end # loop end
    return found_user
  end # def end

  def display_gardens_for_user 
    index = 4
    @gardens.each do |garden|
      puts "                      [#{index}] ".red + "Add/View plants for #{garden.name}".green
      index += 1
    end  
  end  

  def display_progress_bars_for_gardens
    system 'clear'
    title
    @gardens.each do |garden|
      puts "                      Progress for #{garden.name}".red
      puts ""
      garden.show_progress
    input = gets.strip
    break if input != nil
  end  
    
  end  
end