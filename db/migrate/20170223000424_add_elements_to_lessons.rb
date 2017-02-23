class AddElementsToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :price, :integer
    add_column :lessons, :duration, :integer
    add_column :lessons, :group_size, :integer
  end
end
