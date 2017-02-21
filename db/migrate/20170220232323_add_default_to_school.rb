class AddDefaultToSchool < ActiveRecord::Migration[5.0]
  def change
    change_column :schools, :is_active, :boolean, default: false
  end
end
