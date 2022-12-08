class AddEquipmentToBrews < ActiveRecord::Migration[7.0]
  def change
    add_reference :brews, :equipment, null: true, foreign_key: true
  end
end
