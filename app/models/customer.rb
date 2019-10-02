class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 

    def self.find_by_name(customer_name)
        self.all.find_by(name: customer_name)
    end 

    def self.create_or_find_by(customer_name)
        if self.find_by(name: customer_name)
            customer = self.find_by(name: customer_name)
            puts "\nYou are already in the system"
        else
            puts "What is your address?"
            customer_address = gets.chomp
            puts "What is your birthday?"
            customer_birthday = gets.chomp
            puts "What is your budget?"
            customer_budget = gets.chomp
            customer = self.find_or_create_by(name: customer_name, address: customer_address, birthday: customer_birthday, budget: customer_budget)
            puts "You have now been added to our system"
        end 
    end

    def self.bag_type(customer_name)
        self.find_by_name(customer_name).handbags. each do |handbag|
            puts handbag.bag_type 
        end 
    end 

end 
