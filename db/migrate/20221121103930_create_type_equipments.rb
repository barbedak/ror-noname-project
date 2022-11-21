class CreateTypeEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :type_equipments do |t|
      t.string :name

      t.timestamps
    end
  end
end
