require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

#Load the third store and assign it to store 3
@store3 = Store.find(3)

#Delete the third store from the DB using AR's destroy method
@store3.destroy

#Verify that the store was destroyed
puts "Number of stores in the database after deletio: #{Store.count}"