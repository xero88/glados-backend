class CreateScore < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :previous_difference
      t.datetime :last_update
    end
  end
end
