# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

course_1 = Course.create(name: 'ROR', description: "Ruby on Rails is a framework to create webpage", price: 200)
course_2 = Course.create(name: 'RractJs', description: "ReactJs is  javascript framework to create UI", price: 150)
course_3 = Course.create(name: 'SQL', description: "SQL is Structured Query Language", price: 100)

tutor_1 = Tutor.create(name: 'Ramesh', email_id: 'ramesh@gmail.com')
tutor_2 = Tutor.create(name: 'Giri', email_id: 'giri@gmail.com')
tutor_1 = Tutor.create(name: 'Anand', email_id: 'anand@gmail.com')
