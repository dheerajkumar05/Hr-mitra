# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

employee = Employee.create(
first_name: "Dheeraj",
last_name: "Kumar",
email: "dheeraj25@example.com",
age: "25",
date_of_birth:"10-10-1997",
city: "faridabad",
pincode:"11200",
address:"My address",
contact_no:15165465
)


employee = Employee.new(
first_name: "Sumit",
last_name: "Kumar",
email: "sumit26@example.com",
age: "26",
date_of_birth:"17-12-1997",
city: "fazaabad",
pincode:"15500",
address:"My address",
contact_no:9162565465
)