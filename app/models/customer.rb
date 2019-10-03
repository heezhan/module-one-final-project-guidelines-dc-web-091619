require 'pry'

class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 

    # Find or create a customer. If the name exists in the db, then we will return the customer instance
    # If the name doesn't exist, we will create a new customer.
    def self.find_or_create_customer(customer_name)
      # If the customer exists. Display customer exists prompt and return the customer object
      if Customer.find_by(name: customer_name)
        returning_costumer_prompt(customer_name)
        customer = self.find_by_name(customer_name)

      # Otherwise display the new customer prompt. Use the response to create a new customer and return the new customer object
      else
        registration_information = new_customer_prompt
        customer = self.new_customer(customer_name, registration_information[0], registration_information[1], registration_information[2])
      end
      customer
    end

    def self.find_by_name(customer_name)
        self.all.find_by(name: customer_name)
    end 

    

    # Creates a new customer with the customer inputs that will be passed in from customer new prompt array
    def self.new_customer(customer_name, customer_address, customer_birthday, customer_budget)
        self.find_or_create_by(name: customer_name, address: customer_address, birthday: customer_birthday, budget: customer_budget)
        puts "\nYou have now been added to our system!"
    end

    def self.bag_type(customer_name)
        self.find_by_name(customer_name).handbags. each do |handbag|
            puts handbag.bag_type 
        end 
    end

    
    
end 
