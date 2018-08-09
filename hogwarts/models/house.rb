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

end
