require 'pry'

def welcome
    puts "                
    *          .            
           *       '
      *                *     
      Style with class, have a new bag every season! 
                                *    *
   *    *                          
               *
       *
             *"
end

def ask_for_name
    puts "\nPlease enter your name:"
end 

def message_to_output_brands 
    puts "\nWe carry the following brands:"
end 

def checkout(customer_name)
    puts "\nWhat bag would you like to checkout? You currently have #{Customer.find_by_name(customer_name).budget.to_i} credits." 
end 

def message_for_shopping_cart
    puts "\nYou have checked out the following bags:"
end 
