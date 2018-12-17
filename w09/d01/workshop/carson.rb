require 'csv'


# CSV.foreach("CAR_DATA.csv") do |row|
#     print row
#   end
print CSV.read("CAR_DATA.csv")