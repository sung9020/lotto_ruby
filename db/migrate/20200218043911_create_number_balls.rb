class CreateNumberBalls < ActiveRecord::Migration[5.2]
  def change
    create_table :number_balls do |t|
      t.integer :number

      t.timestamps
    end
  end
end
