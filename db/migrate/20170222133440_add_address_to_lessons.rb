class AddAddressToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :address, :string
    add_column :lessons, :postal_code, :string
    add_column :lessons, :city, :string
    add_column :lessons, :country, :string
    add_column :lessons, :latitude, :float
    add_column :lessons, :longitude, :float
  end
end
