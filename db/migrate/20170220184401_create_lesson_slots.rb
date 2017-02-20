class CreateLessonSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_slots do |t|
      t.references :lesson, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.integer :price
      t.integer :group_size
      t.time :duration

      t.timestamps
    end
  end
end
