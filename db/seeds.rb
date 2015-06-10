# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Teacher.create(email:"turner")
t.password = "teacher"
t.save

s = Student.create(email:"turner")
s.password = "student"
s.save

pa = Parent.create(email:"turner")
pa.password = "parent"
pa.save
