class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 

    def self.find_by_name()
        self.all.find_by(name: customer_brand)
    end 
end 
