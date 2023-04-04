require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@store_summary = Store.sum(:annual_revenue)
puts @store_summary / Store.count
Store.where("annual_revenue > 1000000").count