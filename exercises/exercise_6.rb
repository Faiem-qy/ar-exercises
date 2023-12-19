require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

# Add employee data for store1 (Burnaby)
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

# Add more employees for store1 and store 2
@store1.employees.create(
  first_name: "Bob",
  last_name: "Marley",
  hourly_rate: 50
)

# store 2 
@store2.employees.create(
  first_name: "James",
  last_name: "Keenan",
  hourly_rate: 55
)