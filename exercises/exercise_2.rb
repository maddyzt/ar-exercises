require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
=begin
Exercise 2: Update the first store
Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
Load the second store from the database and assign it to @store2.
Update the first store (@store1) instance in the database. (Change its name or something.)

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

@store1 = Store.first
@store2 = Store.second
@store1.update(name: 'Burnaby Store')
