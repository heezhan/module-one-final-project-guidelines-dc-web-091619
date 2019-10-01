class CreateHandbags < ActiveRecord::Migration[5.2]
    def change
      create_table :handbags do |t|
        t.string :brand
        t.string :model_name 
        t.float :cost 
      end
    end
end