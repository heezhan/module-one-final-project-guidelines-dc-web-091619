require 'pry'
require_relative '../config/environment'

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
    end 

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

    def message_to_output_brands 
        puts "\n* We carry the following brands:"
    end 

    def checkout(customer_name)
        puts "\n* What bag would you like to checkout? You currently have #{Customer.find_by_name(customer_name).budget.to_i} credits." 
    end 

    def message_for_shopping_cart
        puts "\n* You have checked out the following bags:"
    end 

    def bag_return_message
        puts "\n* These are the bags you have rented out"
        puts "Which one are you returning?\n"
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

    # Prompt for an existing customer
    def returning_costumer_prompt(customer_name)
        puts "\n* Welcome back #{customer_name}!"
        puts "* Do you want to rent or return?"
    end
