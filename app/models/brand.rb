class Brand < ActiveRecord::Base
    has_many :handbags
    
    def self.find_by_name(customer_brand)
        self.all.find_by(name: customer_brand)
    end 
end
