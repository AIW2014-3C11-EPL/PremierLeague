class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :club_id
      t.string :name
      t.string :avatar
      t.integer :number
      t.string :club
      t.string :position
      t.string :birthday
      t.integer :age
      t.string :nationality
      t.string :height
      t.string :weight
      t.integer :appear
      t.integer :goal
      t.integer :yellow
      t.integer :red

      t.timestamps
    end
  end
end
