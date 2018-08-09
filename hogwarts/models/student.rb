require_relative("../db/sql_runner.rb")

class Student

  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i()
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ($1, $2, $3, $4)
    RETURNING id"
    values = [@first_name, @last_name, @house, @age]
    result = SqlRunner.run(sql, values).first()
    @id = result['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM students"
    result = SqlRunner.run(sql)
    return result.map { |student| Student.new(student) }
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first()
    return Student.new(result)
  end

end
