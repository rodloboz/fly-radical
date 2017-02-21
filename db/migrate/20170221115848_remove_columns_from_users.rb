class RemoveColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :photo, :string
    remove_column :users, :phone, :string
    remove_column :users, :gender, :string
    remove_column :users, :weight, :string
    remove_column :users, :height, :string
    remove_column :users, :birthdate, :date
    remove_column :users, :preferred_currency, :string
    remove_column :users, :preferred_language, :string
    remove_column :users, :about, :text
  end
end
