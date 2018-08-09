require_relative("../models/student.rb")
require("pry-byebug")

Student.delete_all()

harry = Student.new(
  {
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => 'Gryffindor',
    'age' => 11
  }
)

draco = Student.new(
  {
    'first_name' => 'Draco',
    'last_name' => 'Malfoy',
    'house' => 'Slytherin',
    'age' => 11
  }
)

harry.save()
draco.save()

#p Student.all()
p Student.find_by_id(24)
