require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  validate :must_have_mens_or_womens_apparel

  def must_have_mens_or_womens_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:base, "Store must carry at least one of the men's or women's apparel")
    end
  end
end

puts "Please enter a store name:"
store_name = gets.chomp

new_store = Store.new(name: store_name)
if new_store.save
  puts "Store successfully created!"
else
  puts "Error creating store:"
  new_store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
end