class CreateRentals < ActiveRecord::Migration[5.2]
    def change
      create_table :rentals do |t|
        t.integer :customer_id
        t.integer :handbag_id
      end
    end
end