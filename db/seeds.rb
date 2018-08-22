# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# @admins = Admin.create(name:'Admin1', password:'123', email:'admin123@gmail.com')
@students = Student.create(first_name:"John", last_name:"Doe", age:15, email:'john@gmail.com', password:'123', cohort_id:1)
# @teachers = Teacher.create(first_name: "David", last_name:"Something", age:34, salary:80000, education:"Phd", email:"david@gmail.com", password:123)
# @courses = Course.create(name: 'Web Development 100', hours:80)
# @cohorts = Cohort.create(name:'WDF', start_date:'2018-06-18', end_date:'2018-09-28', course_id:1, teacher_id:1)


