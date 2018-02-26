require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 8"
puts "----------"

@store1 = Store.find(1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Kurian", last_name: "Jerry", hourly_rate: 40)

puts "\n\n"
puts Employee.find(1).password;
puts Employee.find(2).password;
