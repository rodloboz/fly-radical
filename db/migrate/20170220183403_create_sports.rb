class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.references :category, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
