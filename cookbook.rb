
INPUT_RECIPES = 1 
OUTPUT_RECIPES = 5
EXIT = 10

def welcome()
    puts "Welcome to the CookBook"
end    

def menu()
    puts "[#{INPUT_RECIPES}] For add a recipe"
    puts "[#{OUTPUT_RECIPES}] For see all registereds recipes"
    puts "[#{EXIT}] For exit"
    
    puts
    print "Choose a option: "
    return gets.to_i()
end     

def inputRecipe()
    puts "Write your recipe: "
    recipe = gets.chomp()
    puts "Write your recipe type:"
    type = gets.chomp()

    puts;
    puts " recipe #{recipe} sucessflly registered!"
    puts
    return { recipe:recipe, type:type }

end

def outputRecipe(reci)
    puts ">===== registered recipes =====<";
    #structure often used looks like a 'for' looping

    reci.each do |recipe|
        puts "#{recipe[:recipe]} - #{recipe[:type]}" 

    end   
    puts 
    if reci.empty?
       puts"No recepi registered yet" 
       puts
    end    
end
    
welcome()

recipes = []

option = menu()
puts


loop do 

    if(option ==INPUT_RECIPES)
      
    recipes << inputRecipe()          

    elsif(option == OUTPUT_RECIPES)
    
    outputRecipe(recipes) 

    elsif(option == EXIT)
        break    
    else
        puts "bad decision"
    end 

    option = menu()
     puts

     puts "thank you for using CookBook!"
end
