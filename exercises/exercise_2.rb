require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
#Load the first store with id = 1 and assign it to store 1
@store1 = Store.find(1)

#Load the second store and assign it to store 2
@store2 = Store.find(2)

#Update the first store (@store)
@store1.update(name: "New Store Name, previously store 1")

puts "Updated store name: #{@store1.name}"