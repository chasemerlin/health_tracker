class CreateSelfEvaluations < ActiveRecord::Migration
  def change
    create_table :self_evaluations do |t|
      t.integer :mood_rating
      t.integer :energy_rating
      t.boolean :drink
      t.boolean :smoke
      t.boolean :worked_out
      t.boolean :meds
      t.text :comments
      t.integer :hours_slept
      t.text :breakfast
      t.text :lunch
      t.text :dinner
      t.string :snacks_text
      t.text :exercise
      t.integer :user_id

      t.timestamps
    end
  end
end
