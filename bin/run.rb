require_relative '../config/environment'
require 'pry'

cli = Cli.new 
cli.welcome
cli.ask_for_name 
# customer_name = gets.chomp
# cli.find_or_create_customer(customer_name)



# cli.rent_or_return(customer_name)
# Customer.create_or_find_by(customer_name)
# message_to_output_brands 
# Brand.show_brands
# Brand.ask_brand
# checkout(customer_name)
# customer_bag = gets.chomp
# handbag_instance = Handbag.find_by(bag_type: customer_bag)
# Customer.find_by_name(customer_name).handbags << handbag_instance
# message_for_shopping_cart
# Customer.bag_type(customer_name)


#ask Continue shopping