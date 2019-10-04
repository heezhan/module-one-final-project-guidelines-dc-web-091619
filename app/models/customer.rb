require 'pry'

class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 

    # Find or create a customer. If the name exists in the db, then we will return the customer instance
    # If the name doesn't exist, we will create a new customer.
    

   
        # self.all.find_by(name: customer_name)

    

    # Creates a new customer with the customer inputs that will be passed in from customer new prompt array
    
    
   

    def self.bag_type(customer_name)
        self.find_by_name(customer_name).handbags.each do |handbag|
            puts handbag.bag_type 
        end 
    end

    
    
end 
