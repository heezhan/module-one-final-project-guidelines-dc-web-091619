class Brand < ActiveRecord::Base
    has_many :handbags

    def self.show_brands
        puts self.pluck(:name)
      #returning all the names from the brand table
    end 

    def message_brand
        "Heyy my brand is #{self.name}"
    end

    def self.ask_brand
        puts "\nWhat brand are you interested in?"
        customer_brand = gets.chomp
        puts "\nWe have the following bags available from #{customer_brand}:"
        found_brand = self.find_by_name(customer_brand)
        found_brand.handbags.each do |handbag|
            puts "#{handbag.bag_type} --- $#{handbag.cost.to_i}"
        end 
    end


end

