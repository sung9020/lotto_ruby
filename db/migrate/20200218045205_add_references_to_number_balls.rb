class AddReferencesToNumberBalls < ActiveRecord::Migration[5.2]
  def change
    add_reference :number_balls, :ticket, foreign_key: true
  end
end
