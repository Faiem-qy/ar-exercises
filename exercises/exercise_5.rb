require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
#Calculate the total revenue for all stores 
total_revenue = Store.sum(:annual_revenue)

#Calculate the average annual revenue for all stores
average_revenue = total_revenue / Store.count


#Count the number of sores generatinf $1M  or more in annual sales
high_revenue_stores = Store.where("annual_revenue >= ?", 1000000).count

puts "Total Company Revenue: $#{total_revenue}"
puts "Average Annual Revenue: $#{average_revenue}"
puts "Number of Stores Generating $1M or More: #{high_revenue_stores}"