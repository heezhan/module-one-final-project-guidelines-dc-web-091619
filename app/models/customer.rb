require 'pry'

class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 

    def self.find_by_name(customer_name)
        self.all.find_by(name: customer_name)
    end 

    def self.returning_customer(customer_name)
        # self.find_by(name: customer_name)
        # customer = self.find_by(name: customer_name)
        puts "\nWelcome back #{customer_name}!"
        puts "Do you want to rent or return?"
    end 
    
    def self.new_customer(customer_name)
            puts "\nWhat is your address?"
            customer_address = gets.chomp
            puts "\nWhat is your birthday?"
            customer_birthday = gets.chomp
            puts "\nWhat is your budget?"
            customer_budget = gets.chomp
            customer = self.find_or_create_by(name: customer_name, address: customer_address, birthday: customer_birthday, budget: customer_budget)
            puts "\nYou have now been added to our system!"
    end

    def self.bag_type(customer_name)
        self.find_by_name(customer_name).handbags. each do |handbag|
            binding.pry
            puts handbag.bag_type 
        end 
    end 

end 