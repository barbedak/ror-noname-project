class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :equipment_types_id

      t.timestamps
    end
  end
end
