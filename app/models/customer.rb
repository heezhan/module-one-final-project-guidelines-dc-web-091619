class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 
end 
