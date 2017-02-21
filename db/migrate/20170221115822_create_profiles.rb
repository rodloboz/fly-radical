class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.string :phone
      t.string :gender
      t.string :weight
      t.string :height
      t.date :birthdate
      t.string :preferred_currency
      t.string :preferred_language
      t.text :about
      t.references :user, foreign_key: true, unique: true

      t.timestamps
    end
  end
end
