require_relative '../config/environment'
require 'pry'

welcome
ask_for_name
customer_name = gets.chomp
Customer.create_or_find_by(customer_name)
message_to_output_brands 
Brand.show_brands
Brand.ask_brand
checkout(customer_name)
customer_bag = gets.chomp
handbag_instance = Handbag.find_by(bag_type: customer_bag)
Customer.find_by_name(customer_name).handbags << handbag_instance
message_for_shopping_cart
Customer.bag_type(customer_name)
