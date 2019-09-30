
class Brand < ActiveRecord::Base
  attr_reader :brand, :model_name, :cost
  @@all = []

  def initialize(brand, model_name, cost)
    @brand = brand
    @model_name = model_name
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end
end
