require 'pry'
require_relative '../config/environment'
class Cli
  attr_accessor :customer_name
    def welcome
        puts "                 
        *          .            
            *       '
        *                *     
        Style with class, have a new bag every season! 
                                    *    *
    *    *                          
                *
        *
                *"
        
    end

    def ask_for_name
        puts "\n* Please enter your name:"
        @customer_name = gets.chomp
  
        find_or_create_customer(@customer_name)

    end 

    def returning_customer_prompt(customer_name)
      puts "\n* Welcome back #{customer_name}!"
      puts "* Do you want to rent or return?"
      # rent_or_return
    end

    # Prompt for a new customer. The customer responses will be stored in an array
    def new_customer_prompt
      response = []
      puts "\n* Welcome new customer! We will now ask you for some information to set up your account."
      puts "\n* What is your address?"
      response.push(gets.chomp)
      puts "\n* What is your birthday?"
      response.push(gets.chomp)
      puts "\n* What is your budget?"
      response.push(gets.chomp)
      response
    end
  
    def find_or_create_customer(customer_name)
      # If the customer exists. Display customer exists prompt and return the customer object
      if Customer.find_by(name: customer_name)
        self.returning_customer_prompt(customer_name)
        return rent_or_return(customer_name)
        # customer = self.find_by_name(customer_name)

      # Otherwise display the new customer prompt. Use the response to create a new customer and return the new customer object
      else
        registration_information = new_customer_prompt
        customer = Customer.create(name: customer_name, address: registration_information[0], birthday: registration_information[1], budget: registration_information[2])
    
        # self.create(name: customer_name, address: customer_address, birthday: customer_birthday, budget: customer_budget)
        puts "\nYou have now been added to our system!"
      end
      customer
      self.show_brands
    end

    def show_brands
      message_to_output_brands
      puts Brand.pluck(:name)
      self.ask_brand
    end 

    def message_to_output_brands 
      puts "\n* We carry the following brands:"
    end 

    def ask_brand
      puts "\nWhat brand are you interested in?"
      customer_brand = gets.chomp
      puts "\nWe have the following bags available from #{customer_brand}:"
      found_brand = Brand.all.find_by(name: customer_brand) 
      found_brand.handbags.each do |handbag|
          puts "#{handbag.bag_type} --- $#{handbag.cost.to_i}"
      end 
      checkout(@customer_name)
    end 

    def checkout(customer_name)
      customer_instance = Customer.find_by(name: customer_name)
      puts "\n* What bag would you like to checkout? You currently have #{customer_instance.budget.to_i} credits." 
      customer_bag = gets.chomp
      handbag_instance = Handbag.find_by(bag_type: customer_bag)
      Customer.find_by(name: customer_name).handbags << handbag_instance
      message_for_shopping_cart
    end 

    def rent_or_return(customer_name)
        array = Customer.find_by_name(customer_name).handbags.to_a
      
        # Customers with no rentals
          customer_answer = gets.chomp
          if customer_answer == "rent"
            show_brands
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

    def message_for_shopping_cart
        puts "\n* You have checked out the following bags:"
        Customer.bag_type(@customer_name)
        puts "\n Do you want to continue shopping? Please type Yes or No"
        user_answer = gets.chomp
        if user_answer == "Yes"
          show_brands
        else 
          puts "Have a nice day"
        end 
    end 

    def bag_return_message
        puts "\n* These are the bags you have rented out"
        puts "Which one are you returning?\n"
    end

    # Prompt for an existing customer
    def returning_customer_prompt(customer_name)
        puts "\n* Welcome back #{customer_name}!"
        puts "* Do you want to rent or return?"
    end
end 
