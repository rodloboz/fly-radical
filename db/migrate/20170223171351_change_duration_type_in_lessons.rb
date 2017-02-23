class ChangeDurationTypeInLessons < ActiveRecord::Migration[5.0]
  def up
    change_column :lessons, :duration, :string
  end

  def down
    change_column :lessons, :duration, :integer
  end
end
