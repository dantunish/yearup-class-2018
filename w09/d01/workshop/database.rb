# Based on http://www.jonathanleighton.com/articles/2011/awesome-active-record-bug-reports/

# Run this script with `bundle exec ruby app.rb`
require 'sqlite3'
require 'active_record'
require 'csv'
#require classes
# require './models/cake.rb'
require './models/cars.rb'
require './models/customers.rb'


# Use `binding.pry` anywhere in this script for easy debugging
require 'pry'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/carson.db'
)


# CSV.foreach("CAR_DATA.csv") do |row|
#   Customer.create(first_name: row[1], last_name: row[2], email: row[3], gender: row[4], phone_number: row[5])
#   Car.create(model: row[6], make: row[7], year: row[8], cost_price: row[9], sale_markup: row[10])
# end


binding.pry
