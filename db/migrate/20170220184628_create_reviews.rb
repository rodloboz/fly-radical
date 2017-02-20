class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :booking, foreign_key: true
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
