require 'pry'

class Handbag < ActiveRecord::Base
  belongs_to :brand
  has_many :rentals 
  has_many :customers, through: :rentals 

  def self.find_by_name(customer_bag)
    self.find_by(bag_type: customer_bag)
  end 
  
end
