class AddDefaultToLessons < ActiveRecord::Migration[5.0]
  def change
    change_column :lessons, :is_active, :boolean, default: false
  end
end
