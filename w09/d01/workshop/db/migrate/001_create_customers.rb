
class CreateCustomers < ActiveRecord::Migration[5.0]
    def up
      create_table :Customers do |t|
        t.string :first_name
        t.string :last_name
        t.string :email
        t.string :gender
        t.string :phone_number
      end
    end
  
    def down
      drop_table :Customers
    end
  end
  