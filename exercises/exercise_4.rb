require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create([
    { 
        name: 'Surrey', 
        annual_revenue: 224000, 
        mens_apparel: false, 
        womens_apparel: true 
    },
    {
        name: 'Whistler', 
        annual_revenue: 1900000, 
        mens_apparel: true, 
        womens_apparel: false 
    },
    {
        name: 'Yaletown', 
        annual_revenue: 430000, 
        mens_apparel: true, 
        womens_apparel: true 
    }
])

@mens_stores = Store.all.where(mens_apparel: true)

@mens_stores.each{
    |store|
        puts "#{store.name} : #{store.annual_revenue}"
}

@poor_womens_stores = Store.all.where("annual_revenue < ?", 1000000).where(womens_apparel: true)

@poor_womens_stores.each{
    |store|
        puts "#{store.name} : #{store.annual_revenue}"
}



