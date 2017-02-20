class AddReferencesToLesson < ActiveRecord::Migration[5.0]
  def change
    add_reference :lessons, :school, foreign_key: true
    add_reference :lessons, :sport, foreign_key: true
  end
end
