require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Creating the first store
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

# Creating the second store
Store.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: true)

# Creating the third store
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true)

puts Store.count