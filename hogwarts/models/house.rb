require_relative '../db/sql_runner.rb'


class House

  attr_reader :id
  attr_accessor :name, :badge

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @badge = options['badge']
  end

  def save()
    sql = "INSERT INTO houses (name, badge) VALUES ($1, $2) RETURNING id"
    values = [@name, @badge]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i()

  end

  def self.all()
    sql = "SELECT * FROM houses"
    result = SqlRunner.run(sql)
    return result.map { |house| House.new(house)  }

  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return House.new(result)

  end


end
