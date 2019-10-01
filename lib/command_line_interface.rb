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
        puts "What is your address?"
        customer_address = gets.chomp
        puts "What is your birthday?"
        customer_birthday = gets.chomp
        puts "What is your budget?"
        customer_budget = gets.chomp
        Customer.find_or_create_by(name: customer_name, address: customer_address, birthday: customer_birthday, budget: customer_budget)
        puts "You have now been added to our system"
    end
end

