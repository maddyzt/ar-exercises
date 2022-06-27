require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
=begin
Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
On the next line, also output the average annual revenue for all stores.
Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) 
Active Record methods.

Store
Employee

  create_table :stores do |t|
    t.column :name, :string
    t.column :annual_revenue, :integer
    t.column :mens_apparel, :boolean
    t.column :womens_apparel, :boolean
    t.timestamps null: false
  end
  create_table :employees do |table|
    table.references :store
    table.column :first_name, :string
    table.column :last_name, :string
    table.column :hourly_rate, :integer
    table.timestamps null: false
  end
=end

@total_revenue = Store.sum(annual_revenue)
puts @total_revenue
@average_revenue = Store.average(annual_revenue)
puts @average_revenue
@over_mil = Store.where("annual_revenue > 1000000")
puts @over_mil.count