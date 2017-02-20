class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.text :equipment_provided
      t.text :equipment_required
      t.string :difficulty
      t.string :cancellation_policy
      t.boolean :is_active


      t.timestamps
    end
  end
end
