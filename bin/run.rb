require_relative '../config/environment'
require 'pry'
def rent_or_return(customer_name)
  array = Customer.find_by_name(customer_name).handbags.to_a

  # Customers with no rentals
  if Customer.find_by(name: customer_name)
    customer_answer = gets.chomp
    if customer_answer == "rent"
      "\n"
    else
      bag_return_message
      Customer.bag_type(customer_name)
      customer_answer = gets.chomp
      customer_instance = Customer.find_by_name(customer_name)
      array = Customer.find_by_name(customer_name).handbags.to_a
      matched_bag = array.find do |handbag|
        handbag.bag_type == customer_answer
      end
      handbag_rental = Rental.where(handbag_id: matched_bag.id, customer_id: customer_instance.id)
      only_handbag = handbag_rental[0]
      Rental.delete(only_handbag.id)
      puts "\nYou have successfully made a return!"
      puts "Go back to the main page?"
    end
  end
end

welcome
ask_for_name 
customer_name = gets.chomp
customer = Customer.find_or_create_customer(customer_name)



rent_or_return(customer_name)
# Customer.create_or_find_by(customer_name)
# message_to_output_brands 
Brand.show_brands
Brand.ask_brand
checkout(customer_name)
customer_bag = gets.chomp
handbag_instance = Handbag.find_by(bag_type: customer_bag)
Customer.find_by_name(customer_name).handbags << handbag_instance
message_for_shopping_cart
Customer.bag_type(customer_name)


#ask Continue shopping