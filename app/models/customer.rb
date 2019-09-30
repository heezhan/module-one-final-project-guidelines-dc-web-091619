class Customer < ActiveRecord::Base
    attr_accessor :name, :birthday, :address, :budget 

    @@all = []

    def initialize(name, birthday, address, budget)
        @name = name 
        @birthday = birthday 
        @address = address 
        @budget = budget 
        @@all << self 
    end 

end 