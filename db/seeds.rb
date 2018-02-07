# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

STUDENTS = ["kyle", "bob", "sal", "mike", "zack", "ingago", "mary", "anan"]
Addresses = [12345, 54321, 12356, 12346, 12348, 12349, 12340, 12342]

STUDENTS.each do |name|
  student = Student.create!(name: name)
  puts "Created #{student.name}"
end
