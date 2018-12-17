
class Cars < ActiveRecord::Migration[5.0]
    def up
      create_table :cars do |t|
        t.string :model
        t.string :make
        t.integer :cost_price
        t.string :sale_markup
      end
    end
  
    def down
      drop_table :cars
    end
  end
  