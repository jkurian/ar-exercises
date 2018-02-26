require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store1.employees.create([
    { 
        first_name: 'John', 
        last_name: 'White', 
        hourly_rate: 15, 
    },
    { 
        first_name: 'Betty', 
        last_name: 'Doe', 
        hourly_rate: 17, 
    },
    { 
        first_name: 'Jerry', 
        last_name: 'Kurian', 
        hourly_rate: 150, 
    }
])

@store2 = Store.second
@store2.employees.create({first_name: "Bob", last_name:"Generic", hourly_rate: 16})