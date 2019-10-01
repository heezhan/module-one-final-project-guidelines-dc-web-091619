class CreateCustomers < ActiveRecord::Migration[5.2]
    def change
      create_table :customers do |t|
        t.string :name 
        t.string :birthday
        t.string :address
        t.float :budget 
      end
    end
end