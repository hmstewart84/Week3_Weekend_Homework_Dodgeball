require( 'pg' )
require_relative('../db/sql_runner')

class Team

  attr_reader( :name, :id )

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i
  end  

  def save()
    sql = "INSERT INTO teams (name) VALUES ('#{ @name }') RETURNING *"
    team = SqlRunner.run( sql ).first
    @id = team['id'].to_i
  end

  def match()
    sql = "SELECT matches.* FROM matches WHERE home_team_id = #{@id} OR away_team_id = #{@id};"
    match = SqlRunner.run( sql )
    result = match.map { |match| Match.new( match ) }
    return result
  end

  def self.all()
    sql = "SELECT * FROM teams"
    teams = SqlRunner.run( sql )
    result = teams.map { |team| Team.new( team ) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM teams"
    SqlRunner.run(sql)
  end
end

