require 'pry'

def welcome
    "Style with class, have a new bag every season"
end 

def get_name_from_user
    puts "Please enter your name"
    customer_name = gets.chomp
    if Customer.find_by(name: customer_name)
        puts "You are already in the system"
    else 
        Customer.find_or_create_by(name: customer_name)
        puts "You have now been added to our system"
    end 
end

