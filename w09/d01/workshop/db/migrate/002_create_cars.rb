
class CreateCars < ActiveRecord::Migration[5.0]
    def up
      create_table :Cars do |t|
        t.string :make
        t.string :model
        t.integer :year
        t.float :cost_price
        t.integer :sale_markup
      end
    end
  
    def down
      drop_table :Cars
    end
  end
  