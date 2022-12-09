class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.references :equipment_types, null: false, foreign_key: true

      t.timestamps
    end
  end
end
