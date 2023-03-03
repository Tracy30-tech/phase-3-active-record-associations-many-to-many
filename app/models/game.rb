class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def games
    sql = <<-SQL
    SELECT * FROM games
   SQL
  DB[:conn].execute(sql).map do |game|
      Game.new(...)
  end
 end
end
