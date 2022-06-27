require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
=begin
Exercise 3: Delete the third store
Load the third store (into @store3) as you did the other two before.
Using Active Record's destroy method, delete the store from the database.
Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)

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

@store3 = Store.third
@store3.destroy
puts Store.count