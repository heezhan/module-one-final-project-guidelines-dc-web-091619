class Brand < ActiveRecord::Base
    has_many :handbags

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end
