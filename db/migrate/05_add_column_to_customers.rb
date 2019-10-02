class AddColumnToCustomers < ActiveRecord::Migration[5.2]
    def change
        add_column :customers, :user_id, :string
    end
end 