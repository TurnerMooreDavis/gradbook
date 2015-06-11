# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Teacher.create(email:"turner", name: Faker::Name.name)
t.password = "teacher"
t.save

f = Teacher.create(email:"fred", name:Faker::Name.name)
f.password = "teacher"
f.save

s = Student.create(email:"turner", name:Faker::Name.name)
s.password = "student"
s.save

m = Student.create(email:"mary", name:Faker::Name.name)
m.password = "student"
m.save

r = Student.create(email:"rob", name:Faker::Name.name)
r.password = "student"
r.save

pa = Parent.create(email:"turner", name:Faker::Name.name, student_id: s.id)
pa.password = "parent"
pa.save


c = Course.create(student_id: (1..3).to_a.sample, name:"math n' stuff", teacher_id:t.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)



c = Course.create(student_id: (1..3).to_a.sample, name:"english", teacher_id:t.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)



c = Course.create(student_id: (1..3).to_a.sample, name:"physics", teacher_id:f.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)

c = Course.create(student_id: (1..3).to_a.sample, name:"math n' stuff", teacher_id:t.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)



c = Course.create(student_id: (1..3).to_a.sample, name:"english", teacher_id:t.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)



c = Course.create(student_id: (1..3).to_a.sample, name:"physics", teacher_id:f.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)
c = Course.create(student_id: (1..3).to_a.sample, name:"math n' stuff", teacher_id:t.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)



c = Course.create(student_id: (1..3).to_a.sample, name:"english", teacher_id:t.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)



c = Course.create(student_id: (1..3).to_a.sample, name:"physics", teacher_id:f.id)

a = Assignment.create(student_id: (1..3).to_a.sample, course_id: c.id, name:Faker::Lorem.word, grade:(1..100).to_a.sample, percent_of_total:7.5)
