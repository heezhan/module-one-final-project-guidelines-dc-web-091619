require 'pry'
require_relative '../config/environment'

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

def bag_return_message
    puts "\nThese are the bags you have rented out"
    puts "Which one are you returning?\n"
end

# Prompt for a new customer. The customer responses will be stored in an array
def new_customer_prompt
  response = []
  puts "\nWelcome new customer! We will now ask you for some information to set up your account."
  puts "\nWhat is your address?"
  response.push(gets.chomp)
  puts "\nWhat is your birthday?"
  response.push(gets.chomp)
  puts "\nWhat is your budget?"
  response.push(gets.chomp)
  response
end

# Prompt for an existing customer
def returning_costumer_prompt(customer_name)
  puts "\nWelcome back #{customer_name}!"
  puts "Do you want to rent or return?"
end
