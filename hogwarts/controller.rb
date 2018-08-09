require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("models/student.rb")
also_reload("models/*")

get '/hogwarts' do
  @students = Student.all()
  erb(:index)
end

get '/hogwarts/new' do
  erb(:new)
end

post '/hogwarts' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
