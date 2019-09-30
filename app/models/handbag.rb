class Handbag < ActiveRecord::Base
  attr_reader :brand, :model_name, :cost
  @@all = []

  def initialize()
end
