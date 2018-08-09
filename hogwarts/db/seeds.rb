require_relative("../models/student.rb")
require_relative("../models/house.rb")
require("pry-byebug")

Student.delete_all()
House.delete_all()



gryffindor = House.new(
  {
    'name' => 'Gryffindor',
    'badge' => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/8/8e/0.31_Gryffindor_Crest_Transparent.png/revision/latest/scale-to-width-down/432?cb=20161124074004' alt='Gryffindor crest' width='300' height='300'>"
    })

gryffindor.save()

slytherin = House.new(
  {
    'name' => 'Slytherin',
    'badge' => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest/scale-to-width-down/427?cb=20161020182557' alt='Slytherin crest' width='300' height='300'>"
    })

slytherin.save()

hufflepuff = House.new(
  {
    'name' => 'Hufflepuff',
    'badge' => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png/revision/latest/scale-to-width-down/433?cb=20161020182518' alt='Hufflepuff crest' width='300' height='300'>"
    })

hufflepuff.save()

ravenclaw = House.new(
  {
    'name' => 'Ravenclaw',
    'badge' => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png/revision/latest/scale-to-width-down/433?cb=20161020182442' alt='Ravenclaw crest' width='300' height='300'>"
    })

ravenclaw.save()




harry = Student.new(
  {
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'age' => 11,
    'house_id' => gryffindor.id
  }
)

draco = Student.new(
  {
    'first_name' => 'Draco',
    'last_name' => 'Malfoy',
    'age' => 11,
    'house_id' => slytherin.id
  }
)

harry.save()
draco.save()




#p Student.all()
# p Student.find_by_id(24)
# p House.all() #
# # p  House.find_by_id(7) #works
# p harry.house() #works
# p draco.house() #works
# p House.all() #works
