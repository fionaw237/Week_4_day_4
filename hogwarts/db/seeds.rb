require_relative("../models/student.rb")
require_relative("../models/house.rb")
require("pry-byebug")

Student.delete_all()
House.delete_all()



gryffindor = House.new(
  {
    'name' => 'Gryffindor',
    'badge' => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/8/8e/0.31_Gryffindor_Crest_Transparent.png/revision/latest/scale-to-width-down/432?cb=20161124074004'>"
    })

gryffindor.save()

slytherin = House.new(
  {
    'name' => 'Slytherin',
    'badge' => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest/scale-to-width-down/427?cb=20161020182557'>"
    })

slytherin.save()




harry = Student.new(
  {
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => 'Gryffindor',
    'age' => 11,
    'house_id' => gryffindor.id
  }
)

draco = Student.new(
  {
    'first_name' => 'Draco',
    'last_name' => 'Malfoy',
    'house' => 'Slytherin',
    'age' => 11,
    'house_id' => slytherin.id
  }
)

harry.save()
draco.save()




#p Student.all()
# p Student.find_by_id(24)
# p House.all() #
# p  House.find_by_id(7) #works
