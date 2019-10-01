class Handbag < ActiveRecord::Base
  belongs_to :brand
  has_many :rentals 
  has_many :customers, through: :rentals 
end
