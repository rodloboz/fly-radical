class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :about
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :website
      t.string :email
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.boolean :is_active

      t.timestamps
    end
  end
end
