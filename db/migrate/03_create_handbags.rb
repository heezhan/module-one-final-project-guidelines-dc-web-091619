class CreateHandbags < ActiveRecord::Migration[5.2]
    def change
      create_table :handbags do |t|
        t.string :bag_type 
        t.float :cost
        t.integer :brand_id
      end
    end
end