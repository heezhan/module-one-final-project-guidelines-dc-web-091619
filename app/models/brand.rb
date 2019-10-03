class Brand < ActiveRecord::Base
    has_many :handbags
    
    def self.find_by_name(customer_brand)
        self.all.find_by(name: customer_brand)
    end 

    def self.show_brands
        puts self.pluck(:name)
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
