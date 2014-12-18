class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :logo
      t.string :establish
      t.string :manager
      t.string :nick
      t.string :stadium
      t.text :background

      t.timestamps
    end
  end
end
