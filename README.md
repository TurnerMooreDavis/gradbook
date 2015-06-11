##Description##
Gradbook (misspelled) is an app that allows students and parents to view grades and for teachers to input grades, courses, parents and students.

##Getting Started##
Download Gradbook and install.  `rake db:setup` to migrate and seed the database.  Enter `rails console` and create a new `Teacher` with a `name` and `email` attribute.  save that teacher to a local `variable` and then call `variable.password` and set that equal to your prefered password and `variable.save`.  start the server with `rails server`, login and your off.

##Actions##
Logged in as a teacher you are able to visit all of the pages to edit students, parents, courses and assignments.  You will also be able to view a teacher dashboard that displays all of your courses and students within those courses.  As a student or parent you will only have access to the dashboard.
