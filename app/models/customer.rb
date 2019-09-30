class Customer < ActiveRecord::Base
    has_many :rentals
    has_many :handbags, through: :rentals 

    attr_accessor :name, :birthday, :address, :budget 

    @@all = []

    def initialize(name, birthday, address, budget)
        @name = name 
        @birthday = birthday 
        @address = address 
        @budget = budget 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end 
