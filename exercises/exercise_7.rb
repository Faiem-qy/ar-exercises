require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# 1. Add validations to the Employee model
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end

# 2. Add validations to the Store model
class Store
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

  validate :must_carry_apparel

  def must_carry_apparel
    if !mens_apparel && !womens_apparel && (mens_apparel.nil? || womens_apparel.nil?)
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end
end

# 3. Ask the user for a store name:
puts "Enter a store name:"
store_name = gets.chomp

# 4. Create a store with the provided name and set apparel categories to false
new_store = Store.new(name: store_name, mens_apparel: false, womens_apparel: false)

if new_store.save
  puts "Store created successfully!"
else
  puts "Errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
