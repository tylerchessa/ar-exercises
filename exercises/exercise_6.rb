require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Tyler", last_name: "Chessa", hourly_rate: 60)
@store1.employees.create(first_name: "Kim", last_name: "White", hourly_rate: 60)
@store1.employees.create(first_name: "Craig", last_name: "Van", hourly_rate: 60)
@store1.employees.create(first_name: "Wyatt", last_name: "mash", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Ring", hourly_rate: 60)
@store2.employees.create(first_name: "Matt", last_name: "Swen", hourly_rate: 60)
@store2.employees.create(first_name: "Rob", last_name: "Bertuszi", hourly_rate: 60)
@store2.employees.create(first_name: "Smith", last_name: "Lensh", hourly_rate: 60)
@store2.employees.create(first_name: "Ryan", last_name: "Virani", hourly_rate: 60)