class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :phone, :string
    add_column :users, :gender, :string
    add_column :users, :weight, :string
    add_column :users, :height, :string
    add_column :users, :birthdate, :date
    add_column :users, :preferred_currency, :string
    add_column :users, :preferred_language, :string
    add_column :users, :about, :text
    add_column :users, :is_active, :boolean
  end
end
