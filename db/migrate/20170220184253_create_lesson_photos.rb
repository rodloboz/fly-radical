class CreateLessonPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_photos do |t|
      t.references :lesson, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
