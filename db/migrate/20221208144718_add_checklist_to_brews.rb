class AddChecklistToBrews < ActiveRecord::Migration[7.0]
  def change
    add_reference :brews, :checklist, null: true, foreign_key: true
  end
end
